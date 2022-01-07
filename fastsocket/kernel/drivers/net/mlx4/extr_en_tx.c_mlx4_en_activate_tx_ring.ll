; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_activate_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_activate_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@MLX4_QP_STATE_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_en_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %12, align 8
  store %struct.mlx4_en_dev* %13, %struct.mlx4_en_dev** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %17, i32 0, i32 17
  store i64 0, i64* %18, align 8
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  %21 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %21, i32 0, i32 2
  store i32 1, i32* %22, align 8
  %23 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %23, i32 0, i32 16
  store i64 0, i64* %24, align 8
  %25 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %29 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memset(i32 %27, i32 0, i32 %33)
  %35 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memset(i32 %37, i32 0, i32 %40)
  %42 = load i32, i32* @MLX4_QP_STATE_RST, align 4
  %43 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %53 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %66, i32 0, i32 8
  %68 = call i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv* %52, i32 %55, i32 %58, i32 1, i32 0, i32 %61, i32 %64, i32 %65, %struct.TYPE_10__* %67)
  %69 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %69, i32 0, i32 11
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %4
  %74 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cpu_to_be32(i32 %79)
  %81 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %82 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %81, i32 0, i32 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  br label %84

84:                                               ; preds = %73, %4
  %85 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %9, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %89 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %91, i32 0, i32 8
  %93 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %93, i32 0, i32 7
  %95 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %96 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %95, i32 0, i32 6
  %97 = call i32 @mlx4_qp_to_ready(i32 %87, i32* %90, %struct.TYPE_10__* %92, %struct.TYPE_11__* %94, i32* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  ret i32 %98
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_fill_qp_context(%struct.mlx4_en_priv*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_qp_to_ready(i32, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
