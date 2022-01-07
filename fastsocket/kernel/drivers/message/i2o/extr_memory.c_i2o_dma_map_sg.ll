; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_dma_map_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_dma_map_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_dma_map_sg(%struct.i2o_controller* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2o_controller*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.i2o_controller* %0, %struct.i2o_controller** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %14 = load i32**, i32*** %11, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %13, align 8
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %19 [
    i32 128, label %17
    i32 129, label %18
  ]

17:                                               ; preds = %5
  store i32 335544320, i32* %12, align 4
  br label %20

18:                                               ; preds = %5
  store i32 268435456, i32* %12, align 4
  br label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %64

20:                                               ; preds = %18, %17
  %21 = load %struct.i2o_controller*, %struct.i2o_controller** %7, align 8
  %22 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @dma_map_sg(i32* %24, %struct.scatterlist* %25, i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %64

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  %36 = icmp sgt i32 %34, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, -1073741824
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %46 = call i32 @sg_dma_len(%struct.scatterlist* %45)
  %47 = or i32 %44, %46
  %48 = call i8* @cpu_to_le32(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %13, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %13, align 8
  store i32 %49, i32* %50, align 4
  %52 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %53 = call i32 @sg_dma_address(%struct.scatterlist* %52)
  %54 = call i32 @i2o_dma_low(i32 %53)
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %60 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %59)
  store %struct.scatterlist* %60, %struct.scatterlist** %8, align 8
  br label %33

61:                                               ; preds = %33
  %62 = load i32*, i32** %13, align 8
  %63 = load i32**, i32*** %11, align 8
  store i32* %62, i32** %63, align 8
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %31, %19
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @dma_map_sg(i32*, %struct.scatterlist*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @i2o_dma_low(i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
