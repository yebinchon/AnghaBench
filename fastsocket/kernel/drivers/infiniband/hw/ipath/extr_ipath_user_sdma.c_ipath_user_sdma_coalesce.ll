; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_user_sdma_pkt = type { i32 }
%struct.iovec = type { i64, i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, %struct.ipath_user_sdma_pkt*, %struct.iovec*, i64)* @ipath_user_sdma_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_user_sdma_coalesce(%struct.ipath_devdata* %0, %struct.ipath_user_sdma_pkt* %1, %struct.iovec* %2, i64 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca %struct.ipath_user_sdma_pkt*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store %struct.ipath_user_sdma_pkt* %1, %struct.ipath_user_sdma_pkt** %6, align 8
  store %struct.iovec* %2, %struct.iovec** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.page* @alloc_page(i32 %17)
  store %struct.page* %18, %struct.page** %10, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.page*, %struct.page** %10, align 8
  %20 = icmp ne %struct.page* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %108

24:                                               ; preds = %4
  %25 = load %struct.page*, %struct.page** %10, align 8
  %26 = call i8* @kmap(%struct.page* %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  store i8* %27, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %72, %24
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %8, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %28
  %34 = load i8*, i8** %12, align 8
  %35 = load %struct.iovec*, %struct.iovec** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i64 %37
  %39 = getelementptr inbounds %struct.iovec, %struct.iovec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.iovec*, %struct.iovec** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.iovec, %struct.iovec* %41, i64 %43
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @copy_from_user(i8* %34, i32 %40, i64 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = load i32, i32* @EFAULT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %103

53:                                               ; preds = %33
  %54 = load %struct.iovec*, %struct.iovec** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %54, i64 %56
  %58 = getelementptr inbounds %struct.iovec, %struct.iovec* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %12, align 8
  %62 = load %struct.iovec*, %struct.iovec** %7, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i64 %64
  %66 = getelementptr inbounds %struct.iovec, %struct.iovec* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %53
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %28

75:                                               ; preds = %28
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %77 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.page*, %struct.page** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @DMA_TO_DEVICE, align 4
  %83 = call i32 @dma_map_page(i32* %79, %struct.page* %80, i32 0, i32 %81, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %85 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %15, align 4
  %89 = call i64 @dma_mapping_error(i32* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %9, align 4
  br label %103

94:                                               ; preds = %75
  %95 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %6, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.page*, %struct.page** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load i32, i32* %15, align 4
  %100 = call i32 @ipath_user_sdma_init_frag(%struct.ipath_user_sdma_pkt* %95, i32 1, i32 0, i32 %96, i32 0, i32 1, %struct.page* %97, i8* %98, i32 %99)
  %101 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %6, align 8
  %102 = getelementptr inbounds %struct.ipath_user_sdma_pkt, %struct.ipath_user_sdma_pkt* %101, i32 0, i32 0
  store i32 2, i32* %102, align 4
  br label %108

103:                                              ; preds = %91, %50
  %104 = load %struct.page*, %struct.page** %10, align 8
  %105 = call i32 @kunmap(%struct.page* %104)
  %106 = load %struct.page*, %struct.page** %10, align 8
  %107 = call i32 @__free_page(%struct.page* %106)
  br label %108

108:                                              ; preds = %103, %94, %21
  %109 = load i32, i32* %9, align 4
  ret i32 %109
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @copy_from_user(i8*, i32, i64) #1

declare dso_local i32 @dma_map_page(i32*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @ipath_user_sdma_init_frag(%struct.ipath_user_sdma_pkt*, i32, i32, i32, i32, i32, %struct.page*, i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
