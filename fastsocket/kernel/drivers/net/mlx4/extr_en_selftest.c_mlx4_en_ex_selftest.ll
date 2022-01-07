; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_selftest.c_mlx4_en_ex_selftest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_selftest.c_mlx4_en_ex_selftest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_dev*, %struct.mlx4_en_tx_ring* }
%struct.mlx4_en_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_en_tx_ring = type { i64, i64, i64 }

@MLX4_EN_NUM_SELF_TEST = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_UC_LOOPBACK = common dso_local global i32 0, align 4
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_ex_selftest(%struct.net_device* %0, i32* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca %struct.mlx4_en_dev*, align 8
  %9 = alloca %struct.mlx4_en_tx_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %7, align 8
  %14 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %14, i32 0, i32 1
  %16 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %15, align 8
  store %struct.mlx4_en_dev* %16, %struct.mlx4_en_dev** %8, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i64* %17, i32 0, i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %97

28:                                               ; preds = %3
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call i32 @netif_carrier_ok(%struct.net_device* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @netif_carrier_off(%struct.net_device* %31)
  br label %33

33:                                               ; preds = %64, %28
  %34 = call i32 @msleep(i32 200)
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %66, %33
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i1 [ false, %35 ], [ %43, %41 ]
  br i1 %45, label %46, label %69

46:                                               ; preds = %44
  %47 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %47, i32 0, i32 2
  %49 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %49, i64 %51
  store %struct.mlx4_en_tx_ring* %52, %struct.mlx4_en_tx_ring** %9, align 8
  %53 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = icmp ne i64 %55, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %46
  br label %33

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %35

69:                                               ; preds = %44
  %70 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %70, i32 0, i32 1
  %72 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %71, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MLX4_DEV_CAP_FLAG_UC_LOOPBACK, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %69
  %82 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %83 = call i64 @mlx4_en_test_registers(%struct.mlx4_en_priv* %82)
  %84 = load i64*, i64** %6, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  store i64 %83, i64* %85, align 8
  %86 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %87 = call i64 @mlx4_en_test_loopback(%struct.mlx4_en_priv* %86)
  %88 = load i64*, i64** %6, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 4
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %81, %69
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = call i32 @netif_carrier_on(%struct.net_device* %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %3
  %98 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = call i64 @mlx4_test_interrupts(%struct.TYPE_4__* %100)
  %102 = load i64*, i64** %6, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %105 = call i64 @mlx4_en_test_link(%struct.mlx4_en_priv* %104)
  %106 = load i64*, i64** %6, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  store i64 %105, i64* %107, align 8
  %108 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %109 = call i64 @mlx4_en_test_speed(%struct.mlx4_en_priv* %108)
  %110 = load i64*, i64** %6, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 2
  store i64 %109, i64* %111, align 8
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %129, %97
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i64*, i64** %6, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %123, %116
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %112

132:                                              ; preds = %112
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @mlx4_en_test_registers(%struct.mlx4_en_priv*) #1

declare dso_local i64 @mlx4_en_test_loopback(%struct.mlx4_en_priv*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i64 @mlx4_test_interrupts(%struct.TYPE_4__*) #1

declare dso_local i64 @mlx4_en_test_link(%struct.mlx4_en_priv*) #1

declare dso_local i64 @mlx4_en_test_speed(%struct.mlx4_en_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
