; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_sglist_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_i2o_block.c_i2o_block_sglist_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.i2o_block_request = type { i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@READ = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2o_controller*, %struct.i2o_block_request*, i32**)* @i2o_block_sglist_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2o_block_sglist_alloc(%struct.i2o_controller* %0, %struct.i2o_block_request* %1, i32** %2) #0 {
  %4 = alloca %struct.i2o_controller*, align 8
  %5 = alloca %struct.i2o_block_request*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %4, align 8
  store %struct.i2o_block_request* %1, %struct.i2o_block_request** %5, align 8
  store i32** %2, i32*** %6, align 8
  %9 = load %struct.i2o_controller*, %struct.i2o_controller** %4, align 8
  %10 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.i2o_block_request*, %struct.i2o_block_request** %5, align 8
  %14 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %13, i32 0, i32 3
  store i32* %12, i32** %14, align 8
  %15 = load %struct.i2o_block_request*, %struct.i2o_block_request** %5, align 8
  %16 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.i2o_block_request*, %struct.i2o_block_request** %5, align 8
  %21 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.i2o_block_request*, %struct.i2o_block_request** %5, align 8
  %24 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @blk_rq_map_sg(i32 %19, %struct.TYPE_5__* %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.i2o_block_request*, %struct.i2o_block_request** %5, align 8
  %28 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = call i64 @rq_data_dir(%struct.TYPE_5__* %29)
  %31 = load i64, i64* @READ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  store i32 %34, i32* %8, align 4
  br label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.i2o_block_request*, %struct.i2o_block_request** %5, align 8
  %40 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.i2o_controller*, %struct.i2o_controller** %4, align 8
  %42 = load %struct.i2o_block_request*, %struct.i2o_block_request** %5, align 8
  %43 = getelementptr inbounds %struct.i2o_block_request, %struct.i2o_block_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32**, i32*** %6, align 8
  %48 = call i32 @i2o_dma_map_sg(%struct.i2o_controller* %41, i32 %44, i32 %45, i32 %46, i32** %47)
  ret i32 %48
}

declare dso_local i32 @blk_rq_map_sg(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @rq_data_dir(%struct.TYPE_5__*) #1

declare dso_local i32 @i2o_dma_map_sg(%struct.i2o_controller*, i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
