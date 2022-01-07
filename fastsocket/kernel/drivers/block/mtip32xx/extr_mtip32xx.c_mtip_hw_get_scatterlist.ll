; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_get_scatterlist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_get_scatterlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.driver_data = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.semaphore, %struct.semaphore }
%struct.TYPE_3__ = type { %struct.scatterlist* }
%struct.semaphore = type { i32 }

@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scatterlist* (%struct.driver_data*, i32*, i32)* @mtip_hw_get_scatterlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scatterlist* @mtip_hw_get_scatterlist(%struct.driver_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.driver_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.semaphore*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %13 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  br label %21

16:                                               ; preds = %3
  %17 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi %struct.semaphore* [ %15, %11 ], [ %20, %16 ]
  store %struct.semaphore* %22, %struct.semaphore** %8, align 8
  %23 = load %struct.semaphore*, %struct.semaphore** %8, align 8
  %24 = call i32 @down(%struct.semaphore* %23)
  %25 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %26 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @get_slot(%struct.TYPE_4__* %27)
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %31 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 1
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load %struct.semaphore*, %struct.semaphore** %8, align 8
  %38 = call i32 @up(%struct.semaphore* %37)
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %61

39:                                               ; preds = %21
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.semaphore*, %struct.semaphore** %8, align 8
  %48 = call i32 @up(%struct.semaphore* %47)
  store %struct.scatterlist* null, %struct.scatterlist** %4, align 8
  br label %61

49:                                               ; preds = %39
  %50 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %51 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.scatterlist*, %struct.scatterlist** %59, align 8
  store %struct.scatterlist* %60, %struct.scatterlist** %4, align 8
  br label %61

61:                                               ; preds = %49, %46, %36
  %62 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  ret %struct.scatterlist* %62
}

declare dso_local i32 @down(%struct.semaphore*) #1

declare dso_local i32 @get_slot(%struct.TYPE_4__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @up(%struct.semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
