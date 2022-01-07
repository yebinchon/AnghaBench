; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_init_cmpt_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_main.c_mlx4_init_cmpt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@MLX4_CMPT_TYPE_QP = common dso_local global i32 0, align 4
@MLX4_CMPT_SHIFT = common dso_local global i32 0, align 4
@MLX4_QP_REGION_FW = common dso_local global i64 0, align 8
@MLX4_CMPT_TYPE_SRQ = common dso_local global i32 0, align 4
@MLX4_CMPT_TYPE_CQ = common dso_local global i32 0, align 4
@MLX4_CMPT_TYPE_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32)* @mlx4_init_cmpt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_cmpt_table(%struct.mlx4_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %12 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %11)
  store %struct.mlx4_priv* %12, %struct.mlx4_priv** %8, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MLX4_CMPT_TYPE_QP, align 4
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* @MLX4_CMPT_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = add nsw i32 %17, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %13, i32* %16, i32 %23, i32 %24, i32 %28, i32 %35, i32 0, i32 0)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %143

40:                                               ; preds = %3
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %42 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %43 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MLX4_CMPT_TYPE_SRQ, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @MLX4_CMPT_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = add nsw i32 %45, %50
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %54 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %58 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %41, i32* %44, i32 %51, i32 %52, i32 %56, i32 %60, i32 0, i32 0)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %40
  br label %137

65:                                               ; preds = %40
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %67 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %68 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @MLX4_CMPT_TYPE_CQ, align 4
  %72 = load i32, i32* %7, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* @MLX4_CMPT_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = add nsw i32 %70, %75
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %79 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %83 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %66, i32* %69, i32 %76, i32 %77, i32 %81, i32 %85, i32 0, i32 0)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %65
  br label %131

90:                                               ; preds = %65
  %91 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %92 = call i64 @mlx4_is_master(%struct.mlx4_dev* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %96 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  br label %104

99:                                               ; preds = %90
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %101 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i32 [ %98, %94 ], [ %103, %99 ]
  store i32 %105, i32* %10, align 4
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %107 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %108 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @MLX4_CMPT_TYPE_EQ, align 4
  %112 = load i32, i32* %7, align 4
  %113 = mul nsw i32 %111, %112
  %114 = load i32, i32* @MLX4_CMPT_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = add nsw i32 %110, %115
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @mlx4_init_icm_table(%struct.mlx4_dev* %106, i32* %109, i32 %116, i32 %117, i32 %118, i32 %119, i32 0, i32 0)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %104
  br label %125

124:                                              ; preds = %104
  store i32 0, i32* %4, align 4
  br label %145

125:                                              ; preds = %123
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %127 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %128 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %126, i32* %129)
  br label %131

131:                                              ; preds = %125, %89
  %132 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %133 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %134 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %132, i32* %135)
  br label %137

137:                                              ; preds = %131, %64
  %138 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %139 = load %struct.mlx4_priv*, %struct.mlx4_priv** %8, align 8
  %140 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = call i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev* %138, i32* %141)
  br label %143

143:                                              ; preds = %137, %39
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %143, %124
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_init_icm_table(%struct.mlx4_dev*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_cleanup_icm_table(%struct.mlx4_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
