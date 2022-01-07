; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_bounce_to_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_mlx4_en_bounce_to_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_tx_desc = type { i32 }
%struct.mlx4_en_priv = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, %struct.mlx4_en_tx_desc*, i64 }

@TXBB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_en_tx_desc* (%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32)* @mlx4_en_bounce_to_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_en_tx_desc* @mlx4_en_bounce_to_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_tx_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sub i32 %13, %14
  %16 = load i32, i32* @TXBB_SIZE, align 4
  %17 = mul i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub i32 %18, %19
  %21 = sub i32 %20, 4
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %52, %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @TXBB_SIZE, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 (...) @wmb()
  br label %33

33:                                               ; preds = %31, %25
  %34 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %45, i32 0, i32 1
  %47 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %47, i64 %49
  %51 = bitcast %struct.mlx4_en_tx_desc* %50 to i32*
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 4
  store i32 %54, i32* %10, align 4
  br label %22

55:                                               ; preds = %22
  %56 = load i32, i32* %9, align 4
  %57 = sub i32 %56, 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %90, %55
  %59 = load i32, i32* %10, align 4
  %60 = icmp sge i32 %59, 4
  br i1 %60, label %61, label %93

61:                                               ; preds = %58
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @TXBB_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call i32 (...) @wmb()
  br label %69

69:                                               ; preds = %67, %61
  %70 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %78, i32 0, i32 1
  %80 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @TXBB_SIZE, align 4
  %83 = mul i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %80, i64 %84
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %85, i64 %87
  %89 = bitcast %struct.mlx4_en_tx_desc* %88 to i32*
  store i32 %77, i32* %89, align 4
  br label %90

90:                                               ; preds = %69
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 4
  store i32 %92, i32* %10, align 4
  br label %58

93:                                               ; preds = %58
  %94 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %6, align 8
  %95 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %94, i32 0, i32 1
  %96 = load %struct.mlx4_en_tx_desc*, %struct.mlx4_en_tx_desc** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @TXBB_SIZE, align 4
  %99 = mul i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.mlx4_en_tx_desc, %struct.mlx4_en_tx_desc* %96, i64 %100
  ret %struct.mlx4_en_tx_desc* %101
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
