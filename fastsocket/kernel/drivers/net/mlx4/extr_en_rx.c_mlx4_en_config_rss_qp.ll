; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_config_rss_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_config_rss_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.mlx4_en_rx_ring = type { %struct.TYPE_10__, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx4_qp = type { i32 }
%struct.mlx4_qp_context = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate qp context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate qp #%x\0A\00", align 1
@mlx4_en_sqp_event = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_FCS_KEEP = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, i32, %struct.mlx4_en_rx_ring*, i32*, %struct.mlx4_qp*)* @mlx4_en_config_rss_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_config_rss_qp(%struct.mlx4_en_priv* %0, i32 %1, %struct.mlx4_en_rx_ring* %2, i32* %3, %struct.mlx4_qp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_rx_ring*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mlx4_qp*, align 8
  %12 = alloca %struct.mlx4_en_dev*, align 8
  %13 = alloca %struct.mlx4_qp_context*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mlx4_en_rx_ring* %2, %struct.mlx4_en_rx_ring** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.mlx4_qp* %4, %struct.mlx4_qp** %11, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 0
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %16, align 8
  store %struct.mlx4_en_dev* %17, %struct.mlx4_en_dev** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mlx4_qp_context* @kmalloc(i32 8, i32 %18)
  store %struct.mlx4_qp_context* %19, %struct.mlx4_qp_context** %13, align 8
  %20 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %21 = icmp ne %struct.mlx4_qp_context* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %24 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %119

27:                                               ; preds = %5
  %28 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %33 = call i32 @mlx4_qp_alloc(%struct.TYPE_11__* %30, i32 %31, %struct.mlx4_qp* %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (%struct.mlx4_en_priv*, i8*, ...) @en_err(%struct.mlx4_en_priv* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %115

40:                                               ; preds = %27
  %41 = load i32, i32* @mlx4_en_sqp_event, align 4
  %42 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %43 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %45 = call i32 @memset(%struct.mlx4_qp_context* %44, i32 0, i32 8)
  %46 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %7, align 8
  %47 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %58 = call i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv* %46, i32 %49, i32 %52, i32 0, i32 0, i32 %53, i32 %56, i32 -1, %struct.mlx4_qp_context* %57)
  %59 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cpu_to_be64(i32 %63)
  %65 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %66 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MLX4_DEV_CAP_FLAG_FCS_KEEP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %40
  %77 = call i32 @cpu_to_be32(i32 536870912)
  %78 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %79 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i64, i64* @ETH_FCS_LEN, align 8
  %83 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %84 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %88

85:                                               ; preds = %40
  %86 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %87 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %76
  %89 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %90 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %96 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i32 @mlx4_qp_to_ready(%struct.TYPE_11__* %91, i32* %94, %struct.mlx4_qp_context* %95, %struct.mlx4_qp* %96, i32* %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %88
  %102 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %106 = call i32 @mlx4_qp_remove(%struct.TYPE_11__* %104, %struct.mlx4_qp* %105)
  %107 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  %108 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %111 = call i32 @mlx4_qp_free(%struct.TYPE_11__* %109, %struct.mlx4_qp* %110)
  br label %112

112:                                              ; preds = %101, %88
  %113 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %9, align 8
  %114 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %113)
  br label %115

115:                                              ; preds = %112, %36
  %116 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %13, align 8
  %117 = call i32 @kfree(%struct.mlx4_qp_context* %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %115, %22
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.mlx4_qp_context* @kmalloc(i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*, ...) #1

declare dso_local i32 @mlx4_qp_alloc(%struct.TYPE_11__*, i32, %struct.mlx4_qp*) #1

declare dso_local i32 @memset(%struct.mlx4_qp_context*, i32, i32) #1

declare dso_local i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv*, i32, i32, i32, i32, i32, i32, i32, %struct.mlx4_qp_context*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_qp_to_ready(%struct.TYPE_11__*, i32*, %struct.mlx4_qp_context*, %struct.mlx4_qp*, i32*) #1

declare dso_local i32 @mlx4_qp_remove(%struct.TYPE_11__*, %struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_qp_free(%struct.TYPE_11__*, %struct.mlx4_qp*) #1

declare dso_local i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring*) #1

declare dso_local i32 @kfree(%struct.mlx4_qp_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
