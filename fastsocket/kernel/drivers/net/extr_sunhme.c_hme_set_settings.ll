; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_hme_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunhme.c_hme_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i64, i64 }
%struct.happy_meal = type { i32, i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @hme_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.happy_meal*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.happy_meal* @netdev_priv(%struct.net_device* %7)
  store %struct.happy_meal* %8, %struct.happy_meal** %6, align 8
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AUTONEG_DISABLE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %72

23:                                               ; preds = %14, %2
  %24 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AUTONEG_DISABLE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SPEED_100, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPEED_10, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35, %29
  %42 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DUPLEX_HALF, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DUPLEX_FULL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %35
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %47, %41, %23
  %57 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %58 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %57, i32 0, i32 0
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %61 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %60, i32 0, i32 2
  %62 = call i32 @del_timer(i32* %61)
  %63 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %64 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %65 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %68 = call i32 @happy_meal_begin_auto_negotiation(%struct.happy_meal* %63, i32 %66, %struct.ethtool_cmd* %67)
  %69 = load %struct.happy_meal*, %struct.happy_meal** %6, align 8
  %70 = getelementptr inbounds %struct.happy_meal, %struct.happy_meal* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock_irq(i32* %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %56, %53, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.happy_meal* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @happy_meal_begin_auto_negotiation(%struct.happy_meal*, i32, %struct.ethtool_cmd*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
