; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@e100_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_up(%struct.nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nic*, align 8
  %4 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %3, align 8
  %5 = load %struct.nic*, %struct.nic** %3, align 8
  %6 = call i32 @e100_rx_alloc_list(%struct.nic* %5)
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %70

10:                                               ; preds = %1
  %11 = load %struct.nic*, %struct.nic** %3, align 8
  %12 = call i32 @e100_alloc_cbs(%struct.nic* %11)
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %66

15:                                               ; preds = %10
  %16 = load %struct.nic*, %struct.nic** %3, align 8
  %17 = call i32 @e100_hw_init(%struct.nic* %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %63

20:                                               ; preds = %15
  %21 = load %struct.nic*, %struct.nic** %3, align 8
  %22 = getelementptr inbounds %struct.nic, %struct.nic* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = call i32 @e100_set_multicast_list(%struct.TYPE_6__* %23)
  %25 = load %struct.nic*, %struct.nic** %3, align 8
  %26 = call i32 @e100_start_receiver(%struct.nic* %25, i32* null)
  %27 = load %struct.nic*, %struct.nic** %3, align 8
  %28 = getelementptr inbounds %struct.nic, %struct.nic* %27, i32 0, i32 0
  %29 = load i32, i32* @jiffies, align 4
  %30 = call i32 @mod_timer(i32* %28, i32 %29)
  %31 = load %struct.nic*, %struct.nic** %3, align 8
  %32 = getelementptr inbounds %struct.nic, %struct.nic* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @e100_intr, align 4
  %37 = load i32, i32* @IRQF_SHARED, align 4
  %38 = load %struct.nic*, %struct.nic** %3, align 8
  %39 = getelementptr inbounds %struct.nic, %struct.nic* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nic*, %struct.nic** %3, align 8
  %44 = getelementptr inbounds %struct.nic, %struct.nic* %43, i32 0, i32 2
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = call i32 @request_irq(i32 %35, i32 %36, i32 %37, i32 %42, %struct.TYPE_6__* %45)
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %20
  br label %59

49:                                               ; preds = %20
  %50 = load %struct.nic*, %struct.nic** %3, align 8
  %51 = getelementptr inbounds %struct.nic, %struct.nic* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @netif_wake_queue(%struct.TYPE_6__* %52)
  %54 = load %struct.nic*, %struct.nic** %3, align 8
  %55 = getelementptr inbounds %struct.nic, %struct.nic* %54, i32 0, i32 1
  %56 = call i32 @napi_enable(i32* %55)
  %57 = load %struct.nic*, %struct.nic** %3, align 8
  %58 = call i32 @e100_enable_irq(%struct.nic* %57)
  store i32 0, i32* %2, align 4
  br label %70

59:                                               ; preds = %48
  %60 = load %struct.nic*, %struct.nic** %3, align 8
  %61 = getelementptr inbounds %struct.nic, %struct.nic* %60, i32 0, i32 0
  %62 = call i32 @del_timer_sync(i32* %61)
  br label %63

63:                                               ; preds = %59, %19
  %64 = load %struct.nic*, %struct.nic** %3, align 8
  %65 = call i32 @e100_clean_cbs(%struct.nic* %64)
  br label %66

66:                                               ; preds = %63, %14
  %67 = load %struct.nic*, %struct.nic** %3, align 8
  %68 = call i32 @e100_rx_clean_list(%struct.nic* %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %66, %49, %8
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @e100_rx_alloc_list(%struct.nic*) #1

declare dso_local i32 @e100_alloc_cbs(%struct.nic*) #1

declare dso_local i32 @e100_hw_init(%struct.nic*) #1

declare dso_local i32 @e100_set_multicast_list(%struct.TYPE_6__*) #1

declare dso_local i32 @e100_start_receiver(%struct.nic*, i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @e100_enable_irq(%struct.nic*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @e100_clean_cbs(%struct.nic*) #1

declare dso_local i32 @e100_rx_clean_list(%struct.nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
