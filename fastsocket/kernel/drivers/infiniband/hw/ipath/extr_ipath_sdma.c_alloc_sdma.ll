; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_alloc_sdma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_alloc_sdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i64, i32*, %struct.TYPE_3__*, i32, %struct.TYPE_4__, i64*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@SDMA_DESCQ_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to allocate SendDMA descriptor FIFO memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to allocate SendDMA head memory\0A\00", align 1
@vl15_watchdog_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @alloc_sdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_sdma(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* @SDMA_DESCQ_SZ, align 4
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %9, i32 0, i32 1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @dma_alloc_coherent(i32* %7, i32 %8, i64* %10, i32 %11)
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %15 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %22 = call i32 @ipath_dev_err(%struct.ipath_devdata* %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %1
  %26 = load i32, i32* @SDMA_DESCQ_SZ, align 4
  %27 = sext i32 %26 to i64
  %28 = udiv i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %31 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %33 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %38 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %37, i32 0, i32 7
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @dma_alloc_coherent(i32* %35, i32 %36, i64* %38, i32 %39)
  %41 = bitcast i8* %40 to i64*
  %42 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %43 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %42, i32 0, i32 6
  store i64* %41, i64** %43, align 8
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %45 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %44, i32 0, i32 6
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %25
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %50 = call i32 @ipath_dev_err(%struct.ipath_devdata* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %73

53:                                               ; preds = %25
  %54 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %54, i32 0, i32 6
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %58, i32 0, i32 5
  %60 = call i32 @init_timer(%struct.TYPE_4__* %59)
  %61 = load i32, i32* @vl15_watchdog_timeout, align 4
  %62 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %66 = ptrtoint %struct.ipath_devdata* %65 to i64
  %67 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %68 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %70, i32 0, i32 4
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  br label %91

73:                                               ; preds = %48
  %74 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %75 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %74, i32 0, i32 3
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* @SDMA_DESCQ_SZ, align 4
  %79 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %80 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @dma_free_coherent(i32* %77, i32 %78, i8* %82, i64 %85)
  %87 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %88 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %87, i32 0, i32 2
  store i32* null, i32** %88, align 8
  %89 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %90 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %73, %53, %20
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i64*, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

declare dso_local i32 @init_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
