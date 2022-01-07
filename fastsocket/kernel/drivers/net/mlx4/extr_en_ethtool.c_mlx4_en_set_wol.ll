; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_set_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_ethtool.c_mlx4_en_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.mlx4_en_priv = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_WOL_PORT1 = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_WOL_PORT2 = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to get WoL info, unable to modify\0A\00", align 1
@MLX4_EN_WOL_DO_MODIFY = common dso_local global i32 0, align 4
@MLX4_EN_WOL_ENABLED = common dso_local global i32 0, align 4
@MLX4_EN_WOL_MAGIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to set WoL information\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @mlx4_en_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %119

24:                                               ; preds = %16
  %25 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT1, align 4
  br label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @MLX4_DEV_CAP_FLAG_WOL_PORT2, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %9, align 4
  %35 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %33
  %47 = load i32, i32* @EOPNOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %119

49:                                               ; preds = %33
  %50 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %51 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @WAKE_MAGIC, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %119

60:                                               ; preds = %49
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @mlx4_wol_read(%struct.TYPE_7__* %65, i32* %7, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %74 = call i32 @en_err(%struct.mlx4_en_priv* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %119

76:                                               ; preds = %60
  %77 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @WAKE_MAGIC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i32, i32* @MLX4_EN_WOL_DO_MODIFY, align 4
  %85 = load i32, i32* @MLX4_EN_WOL_ENABLED, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @MLX4_EN_WOL_MAGIC, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %101

91:                                               ; preds = %76
  %92 = load i32, i32* @MLX4_EN_WOL_ENABLED, align 4
  %93 = load i32, i32* @MLX4_EN_WOL_MAGIC, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @MLX4_EN_WOL_DO_MODIFY, align 4
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %91, %83
  %102 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @mlx4_wol_write(%struct.TYPE_7__* %106, i32 %107, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %101
  %115 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %116 = call i32 @en_err(%struct.mlx4_en_priv* %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %101
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %72, %57, %46, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mlx4_wol_read(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @mlx4_wol_write(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
