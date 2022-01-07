; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tg3 = type { i32 }

@TG3_MIN_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RESET_KIND_SHUTDOWN = common dso_local global i32 0, align 4
@ASIC_REV_57766 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @tg3_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tg3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.tg3* @netdev_priv(%struct.net_device* %9)
  store %struct.tg3* %10, %struct.tg3** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TG3_MIN_MTU, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.tg3*, %struct.tg3** %6, align 8
  %17 = call i32 @TG3_MAX_MTU(%struct.tg3* %16)
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %14
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @netif_running(%struct.net_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.tg3*, %struct.tg3** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @tg3_set_mtu(%struct.net_device* %27, %struct.tg3* %28, i32 %29)
  store i32 0, i32* %3, align 4
  br label %69

31:                                               ; preds = %22
  %32 = load %struct.tg3*, %struct.tg3** %6, align 8
  %33 = call i32 @tg3_phy_stop(%struct.tg3* %32)
  %34 = load %struct.tg3*, %struct.tg3** %6, align 8
  %35 = call i32 @tg3_netif_stop(%struct.tg3* %34)
  %36 = load %struct.tg3*, %struct.tg3** %6, align 8
  %37 = call i32 @tg3_full_lock(%struct.tg3* %36, i32 1)
  %38 = load %struct.tg3*, %struct.tg3** %6, align 8
  %39 = load i32, i32* @RESET_KIND_SHUTDOWN, align 4
  %40 = call i32 @tg3_halt(%struct.tg3* %38, i32 %39, i32 1)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load %struct.tg3*, %struct.tg3** %6, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @tg3_set_mtu(%struct.net_device* %41, %struct.tg3* %42, i32 %43)
  %45 = load %struct.tg3*, %struct.tg3** %6, align 8
  %46 = call i64 @tg3_asic_rev(%struct.tg3* %45)
  %47 = load i64, i64* @ASIC_REV_57766, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  store i32 1, i32* %8, align 4
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.tg3*, %struct.tg3** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @tg3_restart_hw(%struct.tg3* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load %struct.tg3*, %struct.tg3** %6, align 8
  %58 = call i32 @tg3_netif_start(%struct.tg3* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.tg3*, %struct.tg3** %6, align 8
  %61 = call i32 @tg3_full_unlock(%struct.tg3* %60)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load %struct.tg3*, %struct.tg3** %6, align 8
  %66 = call i32 @tg3_phy_start(%struct.tg3* %65)
  br label %67

67:                                               ; preds = %64, %59
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %26, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.tg3* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TG3_MAX_MTU(%struct.tg3*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @tg3_set_mtu(%struct.net_device*, %struct.tg3*, i32) #1

declare dso_local i32 @tg3_phy_stop(%struct.tg3*) #1

declare dso_local i32 @tg3_netif_stop(%struct.tg3*) #1

declare dso_local i32 @tg3_full_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_halt(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tg3_restart_hw(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_netif_start(%struct.tg3*) #1

declare dso_local i32 @tg3_full_unlock(%struct.tg3*) #1

declare dso_local i32 @tg3_phy_start(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
