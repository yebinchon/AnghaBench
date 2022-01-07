; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_free_rx_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_rx.c_mlx4_en_free_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32 }
%struct.mlx4_en_rx_ring = type { %struct.mlx4_en_rx_alloc* }
%struct.mlx4_en_rx_alloc = type { i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Freeing fragment:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, i32)* @mlx4_en_free_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_en_free_rx_desc(%struct.mlx4_en_priv* %0, %struct.mlx4_en_rx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca %struct.mlx4_en_rx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_en_rx_alloc*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %4, align 8
  store %struct.mlx4_en_rx_ring* %1, %struct.mlx4_en_rx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %9, i32 0, i32 0
  %11 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %12, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlx4_en_rx_alloc, %struct.mlx4_en_rx_alloc* %11, i64 %17
  store %struct.mlx4_en_rx_alloc* %18, %struct.mlx4_en_rx_alloc** %7, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %34, %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load i32, i32* @DRV, align 4
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @en_dbg(i32 %26, %struct.mlx4_en_priv* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %31 = load %struct.mlx4_en_rx_alloc*, %struct.mlx4_en_rx_alloc** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @mlx4_en_free_frag(%struct.mlx4_en_priv* %30, %struct.mlx4_en_rx_alloc* %31, i32 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %19

37:                                               ; preds = %19
  ret void
}

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv*, i8*, i32) #1

declare dso_local i32 @mlx4_en_free_frag(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_alloc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
