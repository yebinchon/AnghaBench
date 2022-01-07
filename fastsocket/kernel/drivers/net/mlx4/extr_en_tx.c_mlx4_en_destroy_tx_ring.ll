; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_destroy_tx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_destroy_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev* }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_tx_ring = type { i32*, i32*, i32, %struct.TYPE_2__, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Destroying tx ring, qpn: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_tx_ring(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_tx_ring*, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %4, align 8
  %6 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %6, i32 0, i32 0
  %8 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %7, align 8
  store %struct.mlx4_en_dev* %8, %struct.mlx4_en_dev** %5, align 8
  %9 = load i32, i32* @DRV, align 4
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %11 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @en_dbg(i32 %9, %struct.mlx4_en_priv* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %23, i32 0, i32 5
  %25 = call i32 @mlx4_bf_free(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %30, i32 0, i32 4
  %32 = call i32 @mlx4_qp_remove(i32 %29, i32* %31)
  %33 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %36, i32 0, i32 4
  %38 = call i32 @mlx4_qp_free(i32 %35, i32* %37)
  %39 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @mlx4_en_unmap_buffer(i32* %41)
  %43 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %46, i32 0, i32 3
  %48 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mlx4_free_hwq_res(i32 %45, %struct.TYPE_2__* %47, i32 %50)
  %52 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %53 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @vfree(i32* %60)
  %62 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %4, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @mlx4_bf_free(i32, i32*) #1

declare dso_local i32 @mlx4_qp_remove(i32, i32*) #1

declare dso_local i32 @mlx4_qp_free(i32, i32*) #1

declare dso_local i32 @mlx4_en_unmap_buffer(i32*) #1

declare dso_local i32 @mlx4_free_hwq_res(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
