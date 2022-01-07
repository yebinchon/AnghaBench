; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MLX4_STEERING_MODE_DEVICE_MANAGED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i8*)* @mlx4_en_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx4_en_priv*, align 8
  %10 = alloca %struct.mlx4_en_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.mlx4_en_priv* %17, %struct.mlx4_en_priv** %9, align 8
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 2
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %19, align 8
  store %struct.mlx4_en_dev* %20, %struct.mlx4_en_dev** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %22 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 130
  br i1 %24, label %35, label %25

25:                                               ; preds = %3
  %26 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 129
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 131
  br i1 %34, label %35, label %52

35:                                               ; preds = %30, %25, %3
  %36 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %10, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MLX4_STEERING_MODE_DEVICE_MANAGED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44, %35
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %115

52:                                               ; preds = %44, %30
  %53 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %54 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %110 [
    i32 128, label %56
    i32 130, label %62
    i32 129, label %67
    i32 131, label %75
  ]

56:                                               ; preds = %52
  %57 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %58 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %61 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %113

62:                                               ; preds = %52
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %64 = call i32 @mlx4_en_get_num_flows(%struct.mlx4_en_priv* %63)
  %65 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %66 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %113

67:                                               ; preds = %52
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %70 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %71 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @mlx4_en_get_flow(%struct.net_device* %68, %struct.ethtool_rxnfc* %69, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %113

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %106, %75
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %87 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %85, %88
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi i1 [ false, %79 ], [ %89, %84 ]
  br i1 %91, label %92, label %109

92:                                               ; preds = %90
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @mlx4_en_get_flow(%struct.net_device* %93, %struct.ethtool_rxnfc* %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %99, %92
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %76

109:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %113

110:                                              ; preds = %52
  %111 = load i32, i32* @EOPNOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %110, %109, %67, %62, %56
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %49
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_en_get_num_flows(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_get_flow(%struct.net_device*, %struct.ethtool_rxnfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
