; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_mini_cm_dealloc_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_mini_cm_dealloc_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_core = type { i32, i32, i32 }

@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"De-Alloc CM Core (%p)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_core*)* @mini_cm_dealloc_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mini_cm_dealloc_core(%struct.nes_cm_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nes_cm_core*, align 8
  store %struct.nes_cm_core* %0, %struct.nes_cm_core** %3, align 8
  %4 = load i32, i32* @NES_DBG_CM, align 4
  %5 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %6 = call i32 (i32, i8*, ...) @nes_debug(i32 %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.nes_cm_core* %5)
  %7 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %8 = icmp ne %struct.nes_cm_core* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = call i32 (...) @barrier()
  %14 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %15 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %14, i32 0, i32 2
  %16 = call i64 @timer_pending(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %20 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %19, i32 0, i32 2
  %21 = call i32 @del_timer(i32* %20)
  br label %22

22:                                               ; preds = %18, %12
  %23 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %24 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @destroy_workqueue(i32 %25)
  %27 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %28 = getelementptr inbounds %struct.nes_cm_core, %struct.nes_cm_core* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @destroy_workqueue(i32 %29)
  %31 = load i32, i32* @NES_DBG_CM, align 4
  %32 = call i32 (i32, i8*, ...) @nes_debug(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.nes_cm_core*, %struct.nes_cm_core** %3, align 8
  %34 = call i32 @kfree(%struct.nes_cm_core* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %22, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.nes_cm_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
