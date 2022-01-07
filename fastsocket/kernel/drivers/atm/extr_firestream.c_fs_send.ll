; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_fs_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_fs_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FS_BPENTRY = type { i32, %struct.fs_dev*, %struct.sk_buff*, i32, i64 }
%struct.fs_dev = type { %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, %struct.FS_BPENTRY* }
%struct.TYPE_7__ = type { i32, %struct.fs_dev*, %struct.sk_buff*, i32, i64 }
%struct.atm_vcc = type { i32 }
%struct.fs_vcc = type { i32, %struct.sk_buff* }
%struct.TYPE_8__ = type { %struct.atm_vcc* }

@FS_DEBUG_TXMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"I\00", align 1
@FS_DEBUG_SEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Send: atm_vcc %p skb %p vcc %p dev %p\0A\00", align 1
@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Alloc t-skb: %p (atm_send)\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Alloc transd: %p(%Zd)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"first word in buffer: %x\0A\00", align 1
@TD_EPI = common dso_local global i32 0, align 4
@TD_DATA = common dso_local global i32 0, align 4
@QE_TRANSMIT_DE = common dso_local global i32 0, align 4
@FS_DEBUG_QUEUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"in send: txq %d txrq %d\0A\00", align 1
@da = common dso_local global %struct.FS_BPENTRY** null, align 8
@dq = common dso_local global %struct.TYPE_7__* null, align 8
@qd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*)* @fs_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fs_send(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fs_dev*, align 8
  %7 = alloca %struct.fs_vcc*, align 8
  %8 = alloca %struct.FS_BPENTRY*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %10 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fs_dev* @FS_DEV(i32 %11)
  store %struct.fs_dev* %12, %struct.fs_dev** %6, align 8
  %13 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %14 = call %struct.fs_vcc* @FS_VCC(%struct.atm_vcc* %13)
  store %struct.fs_vcc* %14, %struct.fs_vcc** %7, align 8
  %15 = call i32 (...) @func_enter()
  %16 = load i32, i32* @FS_DEBUG_TXMEM, align 4
  %17 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @FS_DEBUG_SEND, align 4
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.fs_vcc*, %struct.fs_vcc** %7, align 8
  %22 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %23 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.atm_vcc* %19, %struct.sk_buff* %20, %struct.fs_vcc* %21, %struct.fs_dev* %22)
  %24 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %25)
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.atm_vcc* %27, %struct.atm_vcc** %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load %struct.fs_vcc*, %struct.fs_vcc** %7, align 8
  %33 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %32, i32 0, i32 1
  store %struct.sk_buff* %31, %struct.sk_buff** %33, align 8
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.FS_BPENTRY* @kmalloc(i32 40, i32 %34)
  store %struct.FS_BPENTRY* %35, %struct.FS_BPENTRY** %8, align 8
  %36 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %37 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %38 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.FS_BPENTRY* %37, i64 40)
  %39 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %40 = icmp ne %struct.FS_BPENTRY* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %2
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %125

44:                                               ; preds = %2
  %45 = load i32, i32* @FS_DEBUG_SEND, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 1
  %48 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %47, align 8
  %49 = bitcast %struct.FS_BPENTRY* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @TD_EPI, align 4
  %53 = load i32, i32* @TD_DATA, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %54, %57
  %59 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %60 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %62 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %64, align 8
  %66 = call i32 @virt_to_bus(%struct.FS_BPENTRY* %65)
  %67 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %68 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %71 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %70, i32 0, i32 2
  store %struct.sk_buff* %69, %struct.sk_buff** %71, align 8
  %72 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %73 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %74 = getelementptr inbounds %struct.FS_BPENTRY, %struct.FS_BPENTRY* %73, i32 0, i32 1
  store %struct.fs_dev* %72, %struct.fs_dev** %74, align 8
  %75 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %76 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %80 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %81 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %80, i32 0, i32 1
  %82 = load i32, i32* @QE_TRANSMIT_DE, align 4
  %83 = load %struct.fs_vcc*, %struct.fs_vcc** %7, align 8
  %84 = getelementptr inbounds %struct.fs_vcc, %struct.fs_vcc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %82, %85
  %87 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %88 = call i32 @virt_to_bus(%struct.FS_BPENTRY* %87)
  %89 = load %struct.FS_BPENTRY*, %struct.FS_BPENTRY** %8, align 8
  %90 = call i32 @virt_to_bus(%struct.FS_BPENTRY* %89)
  %91 = call i32 @submit_queue(%struct.fs_dev* %79, %struct.TYPE_6__* %81, i32 %86, i32 %88, i32 0, i32 %90)
  %92 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %93 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %94 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %95 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @Q_EA(i32 %97)
  %99 = call i32 @read_fs(%struct.fs_dev* %93, i32 %98)
  %100 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %101 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %102 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @Q_SA(i32 %104)
  %106 = call i32 @read_fs(%struct.fs_dev* %100, i32 %105)
  %107 = sub nsw i32 %99, %106
  %108 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %109 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %110 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @Q_EA(i32 %112)
  %114 = call i32 @read_fs(%struct.fs_dev* %108, i32 %113)
  %115 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %116 = load %struct.fs_dev*, %struct.fs_dev** %6, align 8
  %117 = getelementptr inbounds %struct.fs_dev, %struct.fs_dev* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @Q_SA(i32 %119)
  %121 = call i32 @read_fs(%struct.fs_dev* %115, i32 %120)
  %122 = sub nsw i32 %114, %121
  %123 = call i32 (i32, i8*, ...) @fs_dprintk(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %107, i32 %122)
  %124 = call i32 (...) @func_exit()
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %44, %41
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.fs_dev* @FS_DEV(i32) #1

declare dso_local %struct.fs_vcc* @FS_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @fs_dprintk(i32, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local %struct.FS_BPENTRY* @kmalloc(i32, i32) #1

declare dso_local i32 @virt_to_bus(%struct.FS_BPENTRY*) #1

declare dso_local i32 @submit_queue(%struct.fs_dev*, %struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @read_fs(%struct.fs_dev*, i32) #1

declare dso_local i32 @Q_EA(i32) #1

declare dso_local i32 @Q_SA(i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
