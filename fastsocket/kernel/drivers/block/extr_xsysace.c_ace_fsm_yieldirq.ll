; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_fsm_yieldirq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_fsm_yieldirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_device = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"ace_fsm_yieldirq()\0A\00", align 1
@NO_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ace_device*)* @ace_fsm_yieldirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_fsm_yieldirq(%struct.ace_device* %0) #0 {
  %2 = alloca %struct.ace_device*, align 8
  store %struct.ace_device* %0, %struct.ace_device** %2, align 8
  %3 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %4 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %8 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NO_IRQ, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %14 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %13, i32 0, i32 2
  %15 = call i32 @tasklet_schedule(i32* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %18 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
