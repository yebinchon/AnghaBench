; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_free_proxy_bufs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_free_proxy_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_ib_qp = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*, %struct.mlx4_ib_qp*)* @free_proxy_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_proxy_bufs(%struct.ib_device* %0, %struct.mlx4_ib_qp* %1) #0 {
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca %struct.mlx4_ib_qp*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %3, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %34, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %6
  %14 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %15 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %24 = call i32 @ib_dma_unmap_single(%struct.ib_device* %14, i32 %22, i32 4, i32 %23)
  %25 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @kfree(%struct.TYPE_4__* %32)
  br label %34

34:                                               ; preds = %13
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %6

37:                                               ; preds = %6
  %38 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @kfree(%struct.TYPE_4__* %40)
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
