; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_map_phys_fmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_mr.c_mlx4_map_phys_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mlx4_fmr = type { i64, %struct.TYPE_8__*, i32, i8**, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@MLX4_MPT_STATUS_SW = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MLX4_MTT_FLAG_PRESENT = common dso_local global i32 0, align 4
@MLX4_MPT_STATUS_HW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_map_phys_fmr(%struct.mlx4_dev* %0, %struct.mlx4_fmr* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca %struct.mlx4_fmr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %9, align 8
  store %struct.mlx4_fmr* %1, %struct.mlx4_fmr** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %13, align 4
  %23 = call i32 @mlx4_check_fmr(%struct.mlx4_fmr* %19, i32* %20, i32 %21, i32 %22)
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32, i32* %18, align 4
  store i32 %27, i32* %8, align 4
  br label %146

28:                                               ; preds = %7
  %29 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %34 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @key_to_hw_index(i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %39 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @hw_index_to_key(i32 %46)
  %48 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %49 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load i32*, i32** %15, align 8
  store i32 %47, i32* %51, align 4
  %52 = load i32*, i32** %14, align 8
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* @MLX4_MPT_STATUS_SW, align 4
  %54 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %55 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %54, i32 0, i32 1
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = bitcast %struct.TYPE_8__* %56 to i32*
  store i32 %53, i32* %57, align 4
  %58 = call i32 (...) @wmb()
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %60 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %64 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load i32, i32* @DMA_TO_DEVICE, align 4
  %71 = call i32 @dma_sync_single_for_cpu(i32* %62, i32 %65, i32 %69, i32 %70)
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %91, %28
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MLX4_MTT_FLAG_PRESENT, align 4
  %83 = or i32 %81, %82
  %84 = call i8* @cpu_to_be64(i32 %83)
  %85 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %86 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %85, i32 0, i32 3
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %84, i8** %90, align 8
  br label %91

91:                                               ; preds = %76
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %17, align 4
  br label %72

94:                                               ; preds = %72
  %95 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %96 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %100 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* @DMA_TO_DEVICE, align 4
  %107 = call i32 @dma_sync_single_for_device(i32* %98, i32 %101, i32 %105, i32 %106)
  %108 = load i32, i32* %16, align 4
  %109 = call i8* @cpu_to_be32(i32 %108)
  %110 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %111 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 3
  store i8* %109, i8** %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i8* @cpu_to_be32(i32 %114)
  %116 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %117 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %116, i32 0, i32 1
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  store i8* %115, i8** %119, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %123 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = shl i64 1, %124
  %126 = mul i64 %121, %125
  %127 = trunc i64 %126 to i32
  %128 = call i8* @cpu_to_be64(i32 %127)
  %129 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %130 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i8* %128, i8** %132, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i8* @cpu_to_be64(i32 %133)
  %135 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %136 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i8* %134, i8** %138, align 8
  %139 = call i32 (...) @wmb()
  %140 = load i32, i32* @MLX4_MPT_STATUS_HW, align 4
  %141 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %10, align 8
  %142 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %141, i32 0, i32 1
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = bitcast %struct.TYPE_8__* %143 to i32*
  store i32 %140, i32* %144, align 4
  %145 = call i32 (...) @wmb()
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %94, %26
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

declare dso_local i32 @mlx4_check_fmr(%struct.mlx4_fmr*, i32*, i32, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @hw_index_to_key(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
