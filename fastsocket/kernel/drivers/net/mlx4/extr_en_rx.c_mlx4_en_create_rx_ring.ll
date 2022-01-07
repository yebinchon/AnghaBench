; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_create_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_create_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_7__, %struct.mlx4_en_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_rx_ring = type { i32, i32, i32, i32*, i64, %struct.TYPE_8__, i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@TXBB_SIZE = common dso_local global i64 0, align 8
@MLX4_EN_MAX_RX_FRAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed allocating rx_info ring\0A\00", align 1
@DRV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Allocated rx_info ring at addr:%p size:%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to map RX buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_create_rx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_rx_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_en_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 1
  %15 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %14, align 8
  store %struct.mlx4_en_dev* %15, %struct.mlx4_en_dev** %10, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  %20 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %20, i32 0, i32 9
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @ffs(i32 %34)
  %36 = sub nsw i64 %35, 1
  %37 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %37, i32 0, i32 8
  store i64 %36, i64* %38, align 8
  %39 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @TXBB_SIZE, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @MLX4_EN_MAX_RX_FRAGS, align 4
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @roundup_pow_of_two(i32 %55)
  %57 = mul nsw i32 %51, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32* @vmalloc(i32 %58)
  %60 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %61 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %4
  %67 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %68 = call i32 @en_err(%struct.mlx4_en_priv* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %136

71:                                               ; preds = %4
  %72 = load i32, i32* @DRV, align 4
  %73 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %74 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @en_dbg(i32 %72, %struct.mlx4_en_priv* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %76, i32 %77)
  %79 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %10, align 8
  %80 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %82, i32 0, i32 5
  %84 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = mul nsw i32 2, %87
  %89 = call i32 @mlx4_alloc_hwq_res(i32 %81, %struct.TYPE_8__* %83, i64 %86, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  br label %128

93:                                               ; preds = %71
  %94 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = call i32 @mlx4_en_map_buffer(%struct.TYPE_9__* %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %102 = call i32 @en_err(%struct.mlx4_en_priv* %101, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %118

103:                                              ; preds = %93
  %104 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %111 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %110, i32 0, i32 7
  store i32 %109, i32* %111, align 8
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %117 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  store i32 0, i32* %5, align 4
  br label %136

118:                                              ; preds = %100
  %119 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %10, align 8
  %120 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %123 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %122, i32 0, i32 5
  %124 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %125 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @mlx4_free_hwq_res(i32 %121, %struct.TYPE_8__* %123, i64 %126)
  br label %128

128:                                              ; preds = %118, %92
  %129 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @vfree(i32* %131)
  %133 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %7, align 8
  %134 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %133, i32 0, i32 3
  store i32* null, i32** %134, align 8
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %128, %103, %66
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32*, i32) #1

declare dso_local i32 @mlx4_alloc_hwq_res(i32, %struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @mlx4_en_map_buffer(%struct.TYPE_9__*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
