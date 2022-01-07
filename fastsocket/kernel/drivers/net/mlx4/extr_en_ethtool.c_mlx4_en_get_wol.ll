; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i8*, i8* }
%struct.mlx4_en_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to get WoL information\0A\00", align 1
@MLX4_DEV_CAP_FLAG_WOL_PORT1 = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_WOL_PORT2 = common dso_local global i32 0, align 4
@MLX4_EN_WOL_MAGIC = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i8* null, align 8
@MLX4_EN_WOL_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @mlx4_en_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx4_en_priv* %10, %struct.mlx4_en_priv** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %22 = call i32 @en_err(%struct.mlx4_en_priv* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %89

23:                                               ; preds = %15
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT1, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT2, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %8, align 4
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %32
  %46 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %46, i32 0, i32 1
  store i8* null, i8** %47, align 8
  %48 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %49 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %48, i32 0, i32 0
  store i8* null, i8** %49, align 8
  br label %89

50:                                               ; preds = %32
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mlx4_wol_read(%struct.TYPE_6__* %55, i32* %7, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %64 = call i32 @en_err(%struct.mlx4_en_priv* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %89

65:                                               ; preds = %50
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MLX4_EN_WOL_MAGIC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i8*, i8** @WAKE_MAGIC, align 8
  %72 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  br label %77

74:                                               ; preds = %65
  %75 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %75, i32 0, i32 1
  store i8* null, i8** %76, align 8
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MLX4_EN_WOL_ENABLED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i8*, i8** @WAKE_MAGIC, align 8
  %84 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %89

86:                                               ; preds = %77
  %87 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %87, i32 0, i32 0
  store i8* null, i8** %88, align 8
  br label %89

89:                                               ; preds = %20, %45, %62, %86, %82
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_wol_read(%struct.TYPE_6__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
