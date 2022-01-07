; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_stat_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vme_scc.c_scc_stat_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_port = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32 }

@scc_last_status_reg = common dso_local global i8* null, align 8
@STATUS_REG = common dso_local global i32 0, align 4
@SR_DCD = common dso_local global i8 0, align 1
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@COMMAND_REG = common dso_local global i32 0, align 4
@CR_EXTSTAT_RESET = common dso_local global i32 0, align 4
@CR_HIGHEST_IUS_RESET = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @scc_stat_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_stat_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.scc_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.scc_port*
  store %struct.scc_port* %11, %struct.scc_port** %5, align 8
  %12 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %13 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %16 = call i32 @SCC_ACCESS_INIT(%struct.scc_port* %15)
  %17 = load i8*, i8** @scc_last_status_reg, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %7, align 1
  %22 = load i32, i32* @STATUS_REG, align 4
  %23 = call zeroext i8 @SCCread_NB(i32 %22)
  %24 = load i8*, i8** @scc_last_status_reg, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 %23, i8* %27, align 1
  store i8 %23, i8* %8, align 1
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %8, align 1
  %31 = zext i8 %30 to i32
  %32 = xor i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @SR_DCD, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %89

40:                                               ; preds = %2
  %41 = load i8, i8* %8, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, i8* @SR_DCD, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %51 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %53 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %40
  br label %88

61:                                               ; preds = %40
  %62 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %63 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %68 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = call i32 @wake_up_interruptible(i32* %70)
  br label %87

72:                                               ; preds = %61
  %73 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %74 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.scc_port*, %struct.scc_port** %5, align 8
  %81 = getelementptr inbounds %struct.scc_port, %struct.scc_port* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @tty_hangup(i64 %84)
  br label %86

86:                                               ; preds = %79, %72
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %60
  br label %89

89:                                               ; preds = %88, %2
  %90 = load i32, i32* @COMMAND_REG, align 4
  %91 = load i32, i32* @CR_EXTSTAT_RESET, align 4
  %92 = call i32 @SCCwrite(i32 %90, i32 %91)
  %93 = load i32, i32* @COMMAND_REG, align 4
  %94 = load i32, i32* @CR_HIGHEST_IUS_RESET, align 4
  %95 = call i32 @SCCwrite_NB(i32 %93, i32 %94)
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %96
}

declare dso_local i32 @SCC_ACCESS_INIT(%struct.scc_port*) #1

declare dso_local zeroext i8 @SCCread_NB(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @tty_hangup(i64) #1

declare dso_local i32 @SCCwrite(i32, i32) #1

declare dso_local i32 @SCCwrite_NB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
