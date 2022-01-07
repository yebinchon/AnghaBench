; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c_alloc_orinocodev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_main.c_alloc_orinocodev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32 (%struct.orinoco_private*)*, i32 (%struct.orinoco_private*, i32)*, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_2__, i32*, %struct.device* }
%struct.TYPE_2__ = type { i32* }
%struct.device = type { i32 }
%struct.wiphy = type { i32 }

@orinoco_cfg_ops = common dso_local global i32 0, align 4
@orinoco_reset = common dso_local global i32 0, align 4
@orinoco_join_ap = common dso_local global i32 0, align 4
@orinoco_send_wevents = common dso_local global i32 0, align 4
@orinoco_rx_isr_tasklet = common dso_local global i32 0, align 4
@orinoco_process_scan_results = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.orinoco_private* @alloc_orinocodev(i32 %0, %struct.device* %1, i32 (%struct.orinoco_private*)* %2, i32 (%struct.orinoco_private*, i32)* %3) #0 {
  %5 = alloca %struct.orinoco_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32 (%struct.orinoco_private*)*, align 8
  %9 = alloca i32 (%struct.orinoco_private*, i32)*, align 8
  %10 = alloca %struct.orinoco_private*, align 8
  %11 = alloca %struct.wiphy*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 (%struct.orinoco_private*)* %2, i32 (%struct.orinoco_private*)** %8, align 8
  store i32 (%struct.orinoco_private*, i32)* %3, i32 (%struct.orinoco_private*, i32)** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = add i64 112, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.wiphy* @wiphy_new(i32* @orinoco_cfg_ops, i32 %15)
  store %struct.wiphy* %16, %struct.wiphy** %11, align 8
  %17 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %18 = icmp ne %struct.wiphy* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.orinoco_private* null, %struct.orinoco_private** %5, align 8
  br label %91

20:                                               ; preds = %4
  %21 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %22 = call %struct.orinoco_private* @wiphy_priv(%struct.wiphy* %21)
  store %struct.orinoco_private* %22, %struct.orinoco_private** %10, align 8
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %25 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %24, i32 0, i32 19
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %30 = ptrtoint %struct.orinoco_private* %29 to i64
  %31 = add i64 %30, 112
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %35 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %34, i32 0, i32 18
  store i32* %33, i32** %35, align 8
  br label %39

36:                                               ; preds = %20
  %37 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %38 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %37, i32 0, i32 18
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %36, %28
  %40 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  %41 = call i32 @orinoco_wiphy_init(%struct.wiphy* %40)
  %42 = load i32 (%struct.orinoco_private*)*, i32 (%struct.orinoco_private*)** %8, align 8
  %43 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %44 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %43, i32 0, i32 0
  store i32 (%struct.orinoco_private*)* %42, i32 (%struct.orinoco_private*)** %44, align 8
  %45 = load i32 (%struct.orinoco_private*, i32)*, i32 (%struct.orinoco_private*, i32)** %9, align 8
  %46 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %47 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %46, i32 0, i32 1
  store i32 (%struct.orinoco_private*, i32)* %45, i32 (%struct.orinoco_private*, i32)** %47, align 8
  %48 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %49 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %48, i32 0, i32 15
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %52 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %51, i32 0, i32 14
  store i64 0, i64* %52, align 8
  %53 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %54 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %56 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %55, i32 0, i32 13
  %57 = load i32, i32* @orinoco_reset, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %60 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %59, i32 0, i32 12
  %61 = load i32, i32* @orinoco_join_ap, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  %63 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %64 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %63, i32 0, i32 11
  %65 = load i32, i32* @orinoco_send_wevents, align 4
  %66 = call i32 @INIT_WORK(i32* %64, i32 %65)
  %67 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %68 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %67, i32 0, i32 10
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %71 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %70, i32 0, i32 9
  %72 = load i32, i32* @orinoco_rx_isr_tasklet, align 4
  %73 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %74 = ptrtoint %struct.orinoco_private* %73 to i64
  %75 = call i32 @tasklet_init(i32* %71, i32 %72, i64 %74)
  %76 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %77 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %76, i32 0, i32 8
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %80 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %79, i32 0, i32 7
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %83 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %82, i32 0, i32 6
  %84 = load i32, i32* @orinoco_process_scan_results, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %87 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %86, i32 0, i32 3
  store i32 65535, i32* %87, align 4
  %88 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  %89 = call i32 @orinoco_register_pm_notifier(%struct.orinoco_private* %88)
  %90 = load %struct.orinoco_private*, %struct.orinoco_private** %10, align 8
  store %struct.orinoco_private* %90, %struct.orinoco_private** %5, align 8
  br label %91

91:                                               ; preds = %39, %19
  %92 = load %struct.orinoco_private*, %struct.orinoco_private** %5, align 8
  ret %struct.orinoco_private* %92
}

declare dso_local %struct.wiphy* @wiphy_new(i32*, i32) #1

declare dso_local %struct.orinoco_private* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @orinoco_wiphy_init(%struct.wiphy*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @orinoco_register_pm_notifier(%struct.orinoco_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
