; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_clock.c_mlx4_en_timestamp_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_clock.c_mlx4_en_timestamp_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { %struct.TYPE_2__, i64, %struct.mlx4_en_dev* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx4_en_dev = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Changing Time Stamp configuration\0A\00", align 1
@HWTSTAMP_FILTER_NONE = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed reallocating port resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Failed starting port\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_timestamp_config(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.mlx4_en_priv* %12, %struct.mlx4_en_priv** %7, align 8
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 2
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  store %struct.mlx4_en_dev* %15, %struct.mlx4_en_dev** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @mlx4_en_stop_port(%struct.net_device* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %28 = call i32 @mlx4_en_free_resources(%struct.mlx4_en_priv* %27)
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %30 = call i32 @en_warn(%struct.mlx4_en_priv* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @HWTSTAMP_FILTER_NONE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %26
  %43 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %55

49:                                               ; preds = %26
  %50 = load i32, i32* @NETIF_F_HW_VLAN_RX, align 4
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %57 = call i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %62 = call i32 @en_err(%struct.mlx4_en_priv* %61, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %76

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @mlx4_en_start_port(%struct.net_device* %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %73 = call i32 @en_err(%struct.mlx4_en_priv* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  br label %75

75:                                               ; preds = %74, %63
  br label %76

76:                                               ; preds = %75, %60
  %77 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = call i32 @netdev_features_change(%struct.net_device* %80)
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx4_en_stop_port(%struct.net_device*, i32) #1

declare dso_local i32 @mlx4_en_free_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_alloc_resources(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_en_start_port(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @netdev_features_change(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
