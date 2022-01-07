; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_fill_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_fill_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, %struct.mlx4_en_rx_ring*, %struct.TYPE_2__* }
%struct.mlx4_en_rx_ring = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX4_EN_MIN_RX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate enough rx buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Only %d buffers allocated reducing ring size to %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_fill_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_fill_rx_buffers(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %73, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %69, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %17
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 1
  %26 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %26, i64 %28
  store %struct.mlx4_en_rx_ring* %29, %struct.mlx4_en_rx_ring** %4, align 8
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %31 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %32 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i64 @mlx4_en_prepare_rx_desc(%struct.mlx4_en_priv* %30, %struct.mlx4_en_rx_ring* %31, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %23
  %39 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MLX4_EN_MIN_RX_SIZE, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %46 = call i32 @en_err(%struct.mlx4_en_priv* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %117

49:                                               ; preds = %38
  %50 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rounddown_pow_of_two(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %55 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @en_warn(%struct.mlx4_en_priv* %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %77

60:                                               ; preds = %23
  %61 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %17

72:                                               ; preds = %17
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %8

76:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %117

77:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %113, %77
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %78
  %85 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %85, i32 0, i32 1
  %87 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %87, i64 %89
  store %struct.mlx4_en_rx_ring* %90, %struct.mlx4_en_rx_ring** %4, align 8
  br label %91

91:                                               ; preds = %97, %84
  %92 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %93 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %91
  %98 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %103 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %107 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %108 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %109 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @mlx4_en_free_rx_desc(%struct.mlx4_en_priv* %106, %struct.mlx4_en_rx_ring* %107, i32 %110)
  br label %91

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %78

116:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %76, %44
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @mlx4_en_prepare_rx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, i32, i32) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*, i32, i32) #1

declare dso_local i32 @mlx4_en_free_rx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
