; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_update_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_update_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_update_queues(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call i64 @netif_running(%struct.net_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @be_close(%struct.net_device* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %17 = call i32 @be_cancel_worker(%struct.be_adapter* %16)
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %24 = call i32 @be_msix_disable(%struct.be_adapter* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %27 = call i32 @be_clear_queues(%struct.be_adapter* %26)
  %28 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %29 = call i32 @msix_enabled(%struct.be_adapter* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = call i32 @be_msix_enable(%struct.be_adapter* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %41 = call i32 @be_setup_queues(%struct.be_adapter* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %57

46:                                               ; preds = %39
  %47 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %48 = call i32 @be_schedule_worker(%struct.be_adapter* %47)
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = call i64 @netif_running(%struct.net_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @be_open(%struct.net_device* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %44, %36
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @be_close(%struct.net_device*) #1

declare dso_local i32 @be_cancel_worker(%struct.be_adapter*) #1

declare dso_local i32 @be_msix_disable(%struct.be_adapter*) #1

declare dso_local i32 @be_clear_queues(%struct.be_adapter*) #1

declare dso_local i32 @msix_enabled(%struct.be_adapter*) #1

declare dso_local i32 @be_msix_enable(%struct.be_adapter*) #1

declare dso_local i32 @be_setup_queues(%struct.be_adapter*) #1

declare dso_local i32 @be_schedule_worker(%struct.be_adapter*) #1

declare dso_local i32 @be_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
