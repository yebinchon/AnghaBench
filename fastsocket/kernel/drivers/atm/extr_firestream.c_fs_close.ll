; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_fs_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_fs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.atm_trafprm, %struct.atm_trafprm }
%struct.atm_trafprm = type { i32 }
%struct.fs_dev = type { i32, i32**, i32*, %struct.fs_vcc* }
%struct.fs_vcc = type { i32, i32, %struct.fs_vcc* }

@ATM_VF_READY = common dso_local global i32 0, align 4
@FS_DEBUG_QSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"--==**[%d]**==--\00", align 1
@FS_DEBUG_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Waiting for skb %p to be sent.\0A\00", align 1
@QE_CMD_TX_PURGE_INH = common dso_local global i32 0, align 4
@QE_CMD_RX_PURGE_INH = common dso_local global i32 0, align 4
@QE_CMD_IMM_INQ = common dso_local global i32 0, align 4
@QE_CMD_REG_WR = common dso_local global i32 0, align 4
@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Free vcc: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @fs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.fs_dev*, align 8
  %4 = alloca %struct.fs_vcc*, align 8
  %5 = alloca %struct.atm_trafprm*, align 8
  %6 = alloca %struct.atm_trafprm*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %8 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.fs_dev* @FS_DEV(i32 %9)
  store %struct.fs_dev* %10, %struct.fs_dev** %3, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %12 = call %struct.fs_vcc* @FS_VCC(%struct.atm_vcc* %11)
  store %struct.fs_vcc* %12, %struct.fs_vcc** %4, align 8
  %13 = call i32 (...) @func_enter()
  %14 = load i32, i32* @ATM_VF_READY, align 4
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %16 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %15, i32 0, i32 1
  %17 = call i32 @clear_bit(i32 %14, i32* %16)
  %18 = load i32, i32* @FS_DEBUG_QSIZE, align 4
  %19 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %20 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %19, i32 0, i32 3
  %21 = load %struct.fs_vcc*, %struct.fs_vcc** %20, align 8
  %22 = call i32 @fs_dprintk(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.fs_vcc* %21)
  %23 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %24 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %23, i32 0, i32 2
  %25 = load %struct.fs_vcc*, %struct.fs_vcc** %24, align 8
  %26 = icmp ne %struct.fs_vcc* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %29 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %30 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %29, i32 0, i32 2
  %31 = load %struct.fs_vcc*, %struct.fs_vcc** %30, align 8
  %32 = call i32 @fs_dprintk(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.fs_vcc* %31)
  %33 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %34 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %33, i32 0, i32 1
  %35 = call i32 @interruptible_sleep_on(i32* %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %38 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store %struct.atm_trafprm* %39, %struct.atm_trafprm** %5, align 8
  %40 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %41 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.atm_trafprm* %42, %struct.atm_trafprm** %6, align 8
  %43 = load %struct.atm_trafprm*, %struct.atm_trafprm** %5, align 8
  %44 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  %47 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %48 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %49 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %48, i32 0, i32 0
  %50 = load i32, i32* @QE_CMD_TX_PURGE_INH, align 4
  %51 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %52 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %50, %53
  %55 = call i32 @submit_command(%struct.fs_dev* %47, i32* %49, i32 %54, i32 0, i32 0, i32 0)
  %56 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %57 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %60 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @clear_bit(i32 %58, i32* %61)
  br label %63

63:                                               ; preds = %46, %36
  %64 = load %struct.atm_trafprm*, %struct.atm_trafprm** %6, align 8
  %65 = call i64 @DO_DIRECTION(%struct.atm_trafprm* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %63
  %68 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %69 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %70 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %69, i32 0, i32 0
  %71 = load i32, i32* @QE_CMD_RX_PURGE_INH, align 4
  %72 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %75 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %73, %76
  %78 = call i32 @submit_command(%struct.fs_dev* %68, i32* %70, i32 %77, i32 0, i32 0, i32 0)
  %79 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %80 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %79, i32 0, i32 1
  %81 = load i32**, i32*** %80, align 8
  %82 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %83 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %81, i64 %85
  store i32* null, i32** %86, align 8
  %87 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %88 = call i64 @IS_FS50(%struct.fs_dev* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %67
  %91 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %92 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %93 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %92, i32 0, i32 0
  %94 = load i32, i32* @QE_CMD_REG_WR, align 4
  %95 = load i32, i32* @QE_CMD_IMM_INQ, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %98 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 128, %99
  %101 = call i32 @submit_command(%struct.fs_dev* %91, i32* %93, i32 %96, i32 %100, i32 -1, i32 0)
  br label %102

102:                                              ; preds = %90, %67
  br label %103

103:                                              ; preds = %102, %63
  %104 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %105 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %106 = call i32 @fs_dprintk(i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.fs_vcc* %105)
  %107 = load %struct.fs_vcc*, %struct.fs_vcc** %4, align 8
  %108 = call i32 @kfree(%struct.fs_vcc* %107)
  %109 = call i32 (...) @func_exit()
  ret void
}

declare dso_local %struct.fs_dev* @FS_DEV(i32) #1

declare dso_local %struct.fs_vcc* @FS_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @fs_dprintk(i32, i8*, %struct.fs_vcc*) #1

declare dso_local i32 @interruptible_sleep_on(i32*) #1

declare dso_local i64 @DO_DIRECTION(%struct.atm_trafprm*) #1

declare dso_local i32 @submit_command(%struct.fs_dev*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_FS50(%struct.fs_dev*) #1

declare dso_local i32 @kfree(%struct.fs_vcc*) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
