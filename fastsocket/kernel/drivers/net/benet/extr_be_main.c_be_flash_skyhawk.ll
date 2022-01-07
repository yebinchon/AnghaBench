; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_flash_skyhawk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_flash_skyhawk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.be_dma_mem = type { i32 }
%struct.flash_section_info = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Invalid Cookie. UFI corrupted ?\0A\00", align 1
@OPTYPE_ISCSI_ACTIVE = common dso_local global i32 0, align 4
@OPTYPE_REDBOOT = common dso_local global i32 0, align 4
@OPTYPE_BIOS = common dso_local global i32 0, align 4
@OPTYPE_PXE_BIOS = common dso_local global i32 0, align 4
@OPTYPE_FCOE_BIOS = common dso_local global i32 0, align 4
@OPTYPE_ISCSI_BACKUP = common dso_local global i32 0, align 4
@OPTYPE_NCSI_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Flashing section type %d failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.firmware*, %struct.be_dma_mem*, i32)* @be_flash_skyhawk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_flash_skyhawk(%struct.be_adapter* %0, %struct.firmware* %1, %struct.be_dma_mem* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.be_dma_mem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.flash_section_info*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %6, align 8
  store %struct.firmware* %1, %struct.firmware** %7, align 8
  store %struct.be_dma_mem* %2, %struct.be_dma_mem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %17, align 4
  %24 = load %struct.firmware*, %struct.firmware** %7, align 8
  %25 = getelementptr inbounds %struct.firmware, %struct.firmware* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %18, align 8
  store %struct.flash_section_info* null, %struct.flash_section_info** %19, align 8
  store i32 4, i32* %12, align 4
  %27 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %17, align 4
  %30 = add nsw i32 %28, %29
  %31 = load %struct.firmware*, %struct.firmware** %7, align 8
  %32 = call %struct.flash_section_info* @get_fsec_info(%struct.be_adapter* %27, i32 %30, %struct.firmware* %31)
  store %struct.flash_section_info* %32, %struct.flash_section_info** %19, align 8
  %33 = load %struct.flash_section_info*, %struct.flash_section_info** %19, align 8
  %34 = icmp ne %struct.flash_section_info* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %4
  %36 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %167

41:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %163, %41
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.flash_section_info*, %struct.flash_section_info** %19, align 8
  %45 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %50, label %166

50:                                               ; preds = %42
  %51 = load %struct.flash_section_info*, %struct.flash_section_info** %19, align 8
  %52 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.flash_section_info*, %struct.flash_section_info** %19, align 8
  %61 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le32_to_cpu(i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load %struct.flash_section_info*, %struct.flash_section_info** %19, align 8
  %70 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  switch i32 %77, label %92 [
    i32 132, label %78
    i32 134, label %80
    i32 129, label %82
    i32 128, label %84
    i32 130, label %86
    i32 133, label %88
    i32 131, label %90
  ]

78:                                               ; preds = %50
  %79 = load i32, i32* @OPTYPE_ISCSI_ACTIVE, align 4
  store i32 %79, i32* %15, align 4
  br label %93

80:                                               ; preds = %50
  %81 = load i32, i32* @OPTYPE_REDBOOT, align 4
  store i32 %81, i32* %15, align 4
  br label %93

82:                                               ; preds = %50
  %83 = load i32, i32* @OPTYPE_BIOS, align 4
  store i32 %83, i32* %15, align 4
  br label %93

84:                                               ; preds = %50
  %85 = load i32, i32* @OPTYPE_PXE_BIOS, align 4
  store i32 %85, i32* %15, align 4
  br label %93

86:                                               ; preds = %50
  %87 = load i32, i32* @OPTYPE_FCOE_BIOS, align 4
  store i32 %87, i32* %15, align 4
  br label %93

88:                                               ; preds = %50
  %89 = load i32, i32* @OPTYPE_ISCSI_BACKUP, align 4
  store i32 %89, i32* %15, align 4
  br label %93

90:                                               ; preds = %50
  %91 = load i32, i32* @OPTYPE_NCSI_FW, align 4
  store i32 %91, i32* %15, align 4
  br label %93

92:                                               ; preds = %50
  br label %163

93:                                               ; preds = %90, %88, %86, %84, %82, %80, %78
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @OPTYPE_REDBOOT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %99 = load %struct.firmware*, %struct.firmware** %7, align 8
  %100 = getelementptr inbounds %struct.firmware, %struct.firmware* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %104, %105
  %107 = call i32 @be_flash_redboot(%struct.be_adapter* %98, i32* %101, i32 %102, i32 %103, i32 %106)
  store i32 %107, i32* %16, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %97
  br label %163

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %93
  %113 = load %struct.firmware*, %struct.firmware** %7, align 8
  %114 = getelementptr inbounds %struct.firmware, %struct.firmware* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %18, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %17, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32*, i32** %18, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32* %123, i32** %18, align 8
  %124 = load i32*, i32** %18, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load %struct.firmware*, %struct.firmware** %7, align 8
  %129 = getelementptr inbounds %struct.firmware, %struct.firmware* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.firmware*, %struct.firmware** %7, align 8
  %132 = getelementptr inbounds %struct.firmware, %struct.firmware* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = icmp ugt i32* %127, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %112
  store i32 -1, i32* %5, align 4
  br label %167

138:                                              ; preds = %112
  %139 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %140 = load i32*, i32** %18, align 8
  %141 = load %struct.be_dma_mem*, %struct.be_dma_mem** %8, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = call i32 @be_flash(%struct.be_adapter* %139, i32* %140, %struct.be_dma_mem* %141, i32 %142, i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %138
  %148 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %149 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load %struct.flash_section_info*, %struct.flash_section_info** %19, align 8
  %153 = getelementptr inbounds %struct.flash_section_info, %struct.flash_section_info* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %151, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* %10, align 4
  store i32 %161, i32* %5, align 4
  br label %167

162:                                              ; preds = %138
  br label %163

163:                                              ; preds = %162, %110, %92
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  br label %42

166:                                              ; preds = %42
  store i32 0, i32* %5, align 4
  br label %167

167:                                              ; preds = %166, %147, %137, %35
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local %struct.flash_section_info* @get_fsec_info(%struct.be_adapter*, i32, %struct.firmware*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @be_flash_redboot(%struct.be_adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @be_flash(%struct.be_adapter*, i32*, %struct.be_dma_mem*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
