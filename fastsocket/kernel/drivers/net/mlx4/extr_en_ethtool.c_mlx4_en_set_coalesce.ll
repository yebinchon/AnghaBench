; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_priv = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@MLX4_EN_AUTO_CONF = common dso_local global i64 0, align 8
@MLX4_EN_RX_COAL_TARGET = common dso_local global i64 0, align 8
@MLX4_EN_RX_COAL_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @mlx4_en_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.mlx4_en_priv* %7, %struct.mlx4_en_priv** %5, align 8
  %8 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MLX4_EN_AUTO_CONF, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @MLX4_EN_RX_COAL_TARGET, align 8
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  br label %19

19:                                               ; preds = %15, %13
  %20 = phi i64 [ %14, %13 ], [ %18, %15 ]
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MLX4_EN_AUTO_CONF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i64, i64* @MLX4_EN_RX_COAL_TIME, align 8
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i64 [ %29, %28 ], [ %33, %30 ]
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %34
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %45, %34
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %53, %45
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %68, i32 0, i32 9
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %71 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %73, i32 0, i32 8
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %81 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %86 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %91 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %96 = call i32 @mlx4_en_moderation_update(%struct.mlx4_en_priv* %95)
  ret i32 %96
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_moderation_update(%struct.mlx4_en_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
