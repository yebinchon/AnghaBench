; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_set_default_moderation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_netdev.c_mlx4_en_set_default_moderation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_en_cq*, i64*, i64*, i32*, i32, i32, %struct.mlx4_en_cq*, %struct.TYPE_2__* }
%struct.mlx4_en_cq = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MLX4_EN_RX_COAL_TARGET = common dso_local global i32 0, align 4
@MLX4_EN_RX_COAL_TIME = common dso_local global i32 0, align 4
@MLX4_EN_TX_COAL_PKTS = common dso_local global i32 0, align 4
@MLX4_EN_TX_COAL_TIME = common dso_local global i32 0, align 4
@INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Default coalesing params for mtu:%d - rx_frames:%d rx_usecs:%d\0A\00", align 1
@MLX4_EN_AUTO_CONF = common dso_local global i32 0, align 4
@MLX4_EN_RX_RATE_LOW = common dso_local global i32 0, align 4
@MLX4_EN_RX_COAL_TIME_LOW = common dso_local global i32 0, align 4
@MLX4_EN_RX_RATE_HIGH = common dso_local global i32 0, align 4
@MLX4_EN_RX_COAL_TIME_HIGH = common dso_local global i32 0, align 4
@MLX4_EN_SAMPLE_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*)* @mlx4_en_set_default_moderation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_set_default_moderation(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca %struct.mlx4_en_priv*, align 8
  %3 = alloca %struct.mlx4_en_cq*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %2, align 8
  %5 = load i32, i32* @MLX4_EN_RX_COAL_TARGET, align 4
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 17
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @MLX4_EN_RX_COAL_TIME, align 4
  %9 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %9, i32 0, i32 16
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @MLX4_EN_TX_COAL_PKTS, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 11
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @MLX4_EN_TX_COAL_TIME, align 4
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @INTR, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 17
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 16
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @en_dbg(i32 %17, %struct.mlx4_en_priv* %18, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %73, %1
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %31
  %38 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %38, i32 0, i32 18
  %40 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %40, i64 %42
  store %struct.mlx4_en_cq* %43, %struct.mlx4_en_cq** %3, align 8
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 17
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %49, i32 0, i32 16
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @MLX4_EN_AUTO_CONF, align 4
  %55 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %55, i32 0, i32 15
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  %61 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %61, i32 0, i32 14
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %67, i32 0, i32 13
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %37
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %31

76:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %100, %76
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %77
  %84 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %84, i32 0, i32 12
  %86 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %86, i64 %88
  store %struct.mlx4_en_cq* %89, %struct.mlx4_en_cq** %3, align 8
  %90 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %91 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %90, i32 0, i32 11
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %3, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %83
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %77

103:                                              ; preds = %77
  %104 = load i32, i32* @MLX4_EN_RX_RATE_LOW, align 4
  %105 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %106 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* @MLX4_EN_RX_COAL_TIME_LOW, align 4
  %108 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @MLX4_EN_RX_RATE_HIGH, align 4
  %111 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %112 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %111, i32 0, i32 7
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* @MLX4_EN_RX_COAL_TIME_HIGH, align 4
  %114 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %115 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %114, i32 0, i32 6
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @MLX4_EN_SAMPLE_INTERVAL, align 4
  %117 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %118 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %121, i32 0, i32 4
  store i64 0, i64* %122, align 8
  %123 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %2, align 8
  %124 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %123, i32 0, i32 3
  store i64 0, i64* %124, align 8
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
