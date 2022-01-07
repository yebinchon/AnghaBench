; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_bus_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_bus_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ap_device = type { i32, i32 }

@ap_suspend_flag = common dso_local global i32 0, align 4
@ap_config_timer = common dso_local global i32 0, align 4
@ap_work_queue = common dso_local global i32* null, align 8
@ap_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ap_bus_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_bus_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ap_device*, align 8
  %6 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.ap_device* @to_ap_dev(%struct.device* %7)
  store %struct.ap_device* %8, %struct.ap_device** %5, align 8
  %9 = load i32, i32* @ap_suspend_flag, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  store i32 1, i32* @ap_suspend_flag, align 4
  %12 = call i32 @del_timer_sync(i32* @ap_config_timer)
  %13 = load i32*, i32** @ap_work_queue, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32*, i32** @ap_work_queue, align 8
  %17 = call i32 @destroy_workqueue(i32* %16)
  store i32* null, i32** @ap_work_queue, align 8
  br label %18

18:                                               ; preds = %15, %11
  %19 = call i32 @tasklet_disable(i32* @ap_tasklet)
  br label %20

20:                                               ; preds = %18, %2
  br label %21

21:                                               ; preds = %38, %20
  store i64 0, i64* %6, align 8
  %22 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %23 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %22, i32 0, i32 1
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %26 = call i32 @__ap_poll_device(%struct.ap_device* %25, i64* %6)
  %27 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %28 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %27, i32 0, i32 1
  %29 = call i32 @spin_unlock_bh(i32* %28)
  br label %30

30:                                               ; preds = %21
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, 1
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = and i64 %35, 2
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ true, %30 ], [ %37, %34 ]
  br i1 %39, label %21, label %40

40:                                               ; preds = %38
  %41 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %42 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %41, i32 0, i32 1
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %45 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.ap_device*, %struct.ap_device** %5, align 8
  %47 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock_bh(i32* %47)
  ret i32 0
}

declare dso_local %struct.ap_device* @to_ap_dev(%struct.device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__ap_poll_device(%struct.ap_device*, i64*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
