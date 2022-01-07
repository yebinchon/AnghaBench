; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_dma_map_single.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_memory.c_i2o_dma_map_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2o_dma_map_single(%struct.i2o_controller* %0, i8* %1, i64 %2, i32 %3, i64** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2o_controller*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.i2o_controller* %0, %struct.i2o_controller** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64** %4, i64*** %11, align 8
  %15 = load i64**, i64*** %11, align 8
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %13, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %20 [
    i32 128, label %18
    i32 129, label %19
  ]

18:                                               ; preds = %5
  store i64 3556769792, i64* %12, align 8
  br label %21

19:                                               ; preds = %5
  store i64 3489660928, i64* %12, align 8
  br label %21

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %55

21:                                               ; preds = %19, %18
  %22 = load %struct.i2o_controller*, %struct.i2o_controller** %7, align 8
  %23 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @dma_map_single(i32* %25, i8* %26, i64 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.i2o_controller*, %struct.i2o_controller** %7, align 8
  %31 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @dma_mapping_error(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %21
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = or i64 %38, %39
  %41 = call i8* @cpu_to_le32(i64 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load i64*, i64** %13, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %13, align 8
  store i64 %42, i64* %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @i2o_dma_low(i32 %45)
  %47 = call i8* @cpu_to_le32(i64 %46)
  %48 = ptrtoint i8* %47 to i64
  %49 = load i64*, i64** %13, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %13, align 8
  store i64 %48, i64* %49, align 8
  %51 = load i64*, i64** %13, align 8
  %52 = load i64**, i64*** %11, align 8
  store i64* %51, i64** %52, align 8
  br label %53

53:                                               ; preds = %37, %21
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %20
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @dma_map_single(i32*, i8*, i64, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i64 @i2o_dma_low(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
