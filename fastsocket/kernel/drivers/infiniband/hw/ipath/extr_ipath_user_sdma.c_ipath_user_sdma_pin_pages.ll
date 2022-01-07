; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_pin_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_pin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ipath_devdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipath_user_sdma_pkt = type { i32 }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, %struct.ipath_user_sdma_pkt*, i64, i32, i32)* @ipath_user_sdma_pin_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_user_sdma_pin_pages(%struct.ipath_devdata* %0, %struct.ipath_user_sdma_pkt* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ipath_devdata*, align 8
  %7 = alloca %struct.ipath_user_sdma_pkt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.page*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %6, align 8
  store %struct.ipath_user_sdma_pkt* %1, %struct.ipath_user_sdma_pkt** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %11, i64 0, i64 0
  %25 = call i32 @get_user_pages(%struct.TYPE_5__* %18, i32 %21, i64 %22, i32 %23, i32 0, i32 1, %struct.page** %24, i32* null)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %40, %29
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %11, i64 0, i64 %36
  %38 = load %struct.page*, %struct.page** %37, align 8
  %39 = call i32 @put_page(%struct.page* %38)
  br label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %30

43:                                               ; preds = %30
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %13, align 4
  br label %113

46:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %109, %46
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @ipath_user_sdma_page_length(i64 %52, i32 %53)
  store i32 %54, i32* %15, align 4
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %11, i64 0, i64 %60
  %62 = load %struct.page*, %struct.page** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @DMA_TO_DEVICE, align 4
  %65 = call i32 @dma_map_page(i32* %58, %struct.page* %62, i32 0, i32 %63, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @PAGE_MASK, align 8
  %68 = xor i64 %67, -1
  %69 = and i64 %66, %68
  store i64 %69, i64* %17, align 8
  %70 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %71 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %16, align 4
  %75 = call i64 @dma_mapping_error(i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %51
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %13, align 4
  br label %113

80:                                               ; preds = %51
  %81 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %7, align 8
  %82 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %7, align 8
  %83 = getelementptr inbounds %struct.ipath_user_sdma_pkt, %struct.ipath_user_sdma_pkt* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* %17, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %11, i64 0, i64 %88
  %90 = load %struct.page*, %struct.page** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x %struct.page*], [2 x %struct.page*]* %11, i64 0, i64 %92
  %94 = load %struct.page*, %struct.page** %93, align 8
  %95 = call i32 @kmap(%struct.page* %94)
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @ipath_user_sdma_init_frag(%struct.ipath_user_sdma_pkt* %81, i32 %84, i64 %85, i32 %86, i32 1, i32 1, %struct.page* %90, i32 %95, i32 %96)
  %98 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %7, align 8
  %99 = getelementptr inbounds %struct.ipath_user_sdma_pkt, %struct.ipath_user_sdma_pkt* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64, i64* %8, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %8, align 8
  %106 = load i32, i32* %15, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %80
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %47

112:                                              ; preds = %47
  br label %113

113:                                              ; preds = %112, %77, %43
  %114 = load i32, i32* %13, align 4
  ret i32 %114
}

declare dso_local i32 @get_user_pages(%struct.TYPE_5__*, i32, i64, i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @ipath_user_sdma_page_length(i64, i32) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @ipath_user_sdma_init_frag(%struct.ipath_user_sdma_pkt*, i32, i64, i32, i32, i32, %struct.page*, i32, i32) #1

declare dso_local i32 @kmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
