; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_buffer_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_buffer = type { i32, i32, i32** }
%struct.fw_card = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_buffer_init(%struct.fw_iso_buffer* %0, %struct.fw_card* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_iso_buffer*, align 8
  %7 = alloca %struct.fw_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fw_iso_buffer* %0, %struct.fw_iso_buffer** %6, align 8
  store %struct.fw_card* %1, %struct.fw_card** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32** @kmalloc(i32 %22, i32 %23)
  %25 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %25, i32 0, i32 2
  store i32** %24, i32*** %26, align 8
  %27 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %27, i32 0, i32 2
  %29 = load i32**, i32*** %28, align 8
  %30 = icmp eq i32** %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %141

32:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %100, %32
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %103

39:                                               ; preds = %33
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* @GFP_DMA32, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @__GFP_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i32* @alloc_page(i32 %44)
  %46 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  store i32* %45, i32** %51, align 8
  %52 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  br label %104

61:                                               ; preds = %39
  %62 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %63 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dma_map_page(i32 %64, i32* %71, i32 0, i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %76 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i64 @dma_mapping_error(i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %61
  %82 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %82, i32 0, i32 2
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @__free_page(i32* %88)
  br label %104

90:                                               ; preds = %61
  %91 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %92 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %91, i32 0, i32 2
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @set_page_private(i32* %97, i32 %98)
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %33

103:                                              ; preds = %33
  store i32 0, i32* %5, align 4
  br label %146

104:                                              ; preds = %81, %60
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %133, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %136

109:                                              ; preds = %105
  %110 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %111 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %110, i32 0, i32 2
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @page_private(i32* %116)
  store i32 %117, i32* %12, align 4
  %118 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %119 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @dma_unmap_page(i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %126 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %125, i32 0, i32 2
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @__free_page(i32* %131)
  br label %133

133:                                              ; preds = %109
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %11, align 4
  br label %105

136:                                              ; preds = %105
  %137 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %138 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %137, i32 0, i32 2
  %139 = load i32**, i32*** %138, align 8
  %140 = call i32 @kfree(i32** %139)
  br label %141

141:                                              ; preds = %136, %31
  %142 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %6, align 8
  %143 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %142, i32 0, i32 2
  store i32** null, i32*** %143, align 8
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %141, %103
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32** @kmalloc(i32, i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i32 @dma_map_page(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @__free_page(i32*) #1

declare dso_local i32 @set_page_private(i32*, i32) #1

declare dso_local i32 @page_private(i32*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
