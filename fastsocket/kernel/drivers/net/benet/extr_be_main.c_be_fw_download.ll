; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_fw_download.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_fw_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32* }
%struct.flash_file_hdr_g3 = type { i32 }
%struct.image_hdr = type { i32 }
%struct.be_dma_mem = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't load BE3 UFI on BE3R\0A\00", align 1
@UFI_TYPE2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Firmware load error\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Firmware flashed successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.firmware*)* @be_fw_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_fw_download(%struct.be_adapter* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.flash_file_hdr_g3*, align 8
  %6 = alloca %struct.image_hdr*, align 8
  %7 = alloca %struct.be_dma_mem, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  store %struct.image_hdr* null, %struct.image_hdr** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  store i32 4, i32* %13, align 4
  %14 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @dma_alloc_coherent(i32* %17, i32 %19, i32* %20, i32 %21)
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %135

30:                                               ; preds = %2
  %31 = load %struct.firmware*, %struct.firmware** %4, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = bitcast i32* %34 to %struct.flash_file_hdr_g3*
  store %struct.flash_file_hdr_g3* %35, %struct.flash_file_hdr_g3** %5, align 8
  %36 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %37 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %38 = call i32 @be_get_ufi_type(%struct.be_adapter* %36, %struct.flash_file_hdr_g3* %37)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.flash_file_hdr_g3*, %struct.flash_file_hdr_g3** %5, align 8
  %40 = getelementptr inbounds %struct.flash_file_hdr_g3, %struct.flash_file_hdr_g3* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %93, %30
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load %struct.firmware*, %struct.firmware** %4, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 4, %53
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = bitcast i32* %55 to %struct.image_hdr*
  store %struct.image_hdr* %56, %struct.image_hdr** %6, align 8
  %57 = load %struct.image_hdr*, %struct.image_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.image_hdr, %struct.image_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @le32_to_cpu(i32 %59)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %92

62:                                               ; preds = %47
  %63 = load i32, i32* %12, align 4
  switch i32 %63, label %91 [
    i32 128, label %64
    i32 129, label %69
    i32 130, label %74
  ]

64:                                               ; preds = %62
  %65 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %66 = load %struct.firmware*, %struct.firmware** %4, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @be_flash_skyhawk(%struct.be_adapter* %65, %struct.firmware* %66, %struct.be_dma_mem* %7, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %91

69:                                               ; preds = %62
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = load %struct.firmware*, %struct.firmware** %4, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @be_flash_BEx(%struct.be_adapter* %70, %struct.firmware* %71, %struct.be_dma_mem* %7, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %91

74:                                               ; preds = %62
  %75 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %77, 16
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %81 = load %struct.firmware*, %struct.firmware** %4, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @be_flash_BEx(%struct.be_adapter* %80, %struct.firmware* %81, %struct.be_dma_mem* %7, i32 %82)
  store i32 %83, i32* %9, align 4
  br label %90

84:                                               ; preds = %74
  store i32 -1, i32* %9, align 4
  %85 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %84, %79
  br label %91

91:                                               ; preds = %90, %62, %69, %64
  br label %92

92:                                               ; preds = %91, %47
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %43

96:                                               ; preds = %43
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @UFI_TYPE2, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %102 = load %struct.firmware*, %struct.firmware** %4, align 8
  %103 = call i32 @be_flash_BEx(%struct.be_adapter* %101, %struct.firmware* %102, %struct.be_dma_mem* %7, i32 0)
  store i32 %103, i32* %9, align 4
  br label %109

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 -1, i32* %9, align 4
  br label %108

108:                                              ; preds = %107, %104
  br label %109

109:                                              ; preds = %108, %100
  %110 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %7, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dma_free_coherent(i32* %113, i32 %115, i32 %117, i32 %119)
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %109
  %124 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = call i32 @dev_err(i32* %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %135

129:                                              ; preds = %109
  %130 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = call i32 @dev_info(i32* %133, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %129, %123, %27
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @be_get_ufi_type(%struct.be_adapter*, %struct.flash_file_hdr_g3*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @be_flash_skyhawk(%struct.be_adapter*, %struct.firmware*, %struct.be_dma_mem*, i32) #1

declare dso_local i32 @be_flash_BEx(%struct.be_adapter*, %struct.firmware*, %struct.be_dma_mem*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
