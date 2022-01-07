; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_init_pioavailregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_init_chip.c_init_pioavailregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i8*, i32, i32*, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to allocate PIOavail reg area in memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*)* @init_pioavailregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pioavailregs(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %4 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %5 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %4, i32 0, i32 7
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %10 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %9, i32 0, i32 6
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i64 @dma_alloc_coherent(i32* %7, i32 %8, i32* %10, i32 %11)
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 5
  store i64 %12, i64* %14, align 8
  %15 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %16 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %21 = call i32 @ipath_dev_err(%struct.ipath_devdata* %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %1
  %25 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* @L1_CACHE_BYTES, align 4
  %30 = mul nsw i32 2, %29
  %31 = sext i32 %30 to i64
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %33 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = add i64 %31, %36
  %38 = load i32, i32* @L1_CACHE_BYTES, align 4
  %39 = xor i32 %38, -1
  %40 = sext i32 %39 to i64
  %41 = and i64 %37, %40
  %42 = getelementptr inbounds i8, i8* %28, i64 %41
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %45 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %47 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %50 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %53 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = bitcast i32* %55 to i8*
  %57 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %58 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @L1_CACHE_BYTES, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %64 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %24, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
