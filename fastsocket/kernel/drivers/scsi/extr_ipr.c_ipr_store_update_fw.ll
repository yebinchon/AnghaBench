; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_store_update_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_store_update_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipr_ucode_image_header = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.ipr_sglist = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Firmware file %s not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Microcode buffer allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Microcode buffer copy to DMA buffer failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Updating microcode, please be patient.  This may take up to 30 minutes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ipr_store_update_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_store_update_fw(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.ipr_ioa_cfg*, align 8
  %12 = alloca %struct.ipr_ucode_image_header*, align 8
  %13 = alloca %struct.firmware*, align 8
  %14 = alloca %struct.ipr_sglist*, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %20)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %10, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %25, %struct.ipr_ioa_cfg** %11, align 8
  %26 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %121

32:                                               ; preds = %4
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @snprintf(i8* %33, i32 99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 %38
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %41 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %42 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i64 @request_firmware(%struct.firmware** %13, i8* %40, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %32
  %48 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %49 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %53 = call i32 (i32*, i8*, ...) @dev_err(i32* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %121

56:                                               ; preds = %32
  %57 = load %struct.firmware*, %struct.firmware** %13, align 8
  %58 = getelementptr inbounds %struct.firmware, %struct.firmware* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.ipr_ucode_image_header*
  store %struct.ipr_ucode_image_header* %60, %struct.ipr_ucode_image_header** %12, align 8
  %61 = load %struct.ipr_ucode_image_header*, %struct.ipr_ucode_image_header** %12, align 8
  %62 = bitcast %struct.ipr_ucode_image_header* %61 to i8*
  %63 = load %struct.ipr_ucode_image_header*, %struct.ipr_ucode_image_header** %12, align 8
  %64 = getelementptr inbounds %struct.ipr_ucode_image_header, %struct.ipr_ucode_image_header* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @be32_to_cpu(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %62, i64 %67
  store i8* %68, i8** %16, align 8
  %69 = load %struct.firmware*, %struct.firmware** %13, align 8
  %70 = getelementptr inbounds %struct.firmware, %struct.firmware* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ipr_ucode_image_header*, %struct.ipr_ucode_image_header** %12, align 8
  %73 = getelementptr inbounds %struct.ipr_ucode_image_header, %struct.ipr_ucode_image_header* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @be32_to_cpu(i32 %74)
  %76 = sub nsw i32 %71, %75
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = call %struct.ipr_sglist* @ipr_alloc_ucode_buffer(i32 %77)
  store %struct.ipr_sglist* %78, %struct.ipr_sglist** %14, align 8
  %79 = load %struct.ipr_sglist*, %struct.ipr_sglist** %14, align 8
  %80 = icmp ne %struct.ipr_sglist* %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %56
  %82 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %83 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.firmware*, %struct.firmware** %13, align 8
  %88 = call i32 @release_firmware(%struct.firmware* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %121

91:                                               ; preds = %56
  %92 = load %struct.ipr_sglist*, %struct.ipr_sglist** %14, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = load i32, i32* %19, align 4
  %95 = call i32 @ipr_copy_ucode_buffer(%struct.ipr_sglist* %92, i8* %93, i32 %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %100 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %115

104:                                              ; preds = %91
  %105 = call i32 @ipr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %106 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %107 = load %struct.ipr_sglist*, %struct.ipr_sglist** %14, align 8
  %108 = call i32 @ipr_update_ioa_ucode(%struct.ipr_ioa_cfg* %106, %struct.ipr_sglist* %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load i64, i64* %9, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %18, align 4
  br label %114

114:                                              ; preds = %111, %104
  br label %115

115:                                              ; preds = %114, %98
  %116 = load %struct.ipr_sglist*, %struct.ipr_sglist** %14, align 8
  %117 = call i32 @ipr_free_ucode_buffer(%struct.ipr_sglist* %116)
  %118 = load %struct.firmware*, %struct.firmware** %13, align 8
  %119 = call i32 @release_firmware(%struct.firmware* %118)
  %120 = load i32, i32* %18, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %115, %81, %47, %29
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.ipr_sglist* @ipr_alloc_ucode_buffer(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @ipr_copy_ucode_buffer(%struct.ipr_sglist*, i8*, i32) #1

declare dso_local i32 @ipr_info(i8*) #1

declare dso_local i32 @ipr_update_ioa_ucode(%struct.ipr_ioa_cfg*, %struct.ipr_sglist*) #1

declare dso_local i32 @ipr_free_ucode_buffer(%struct.ipr_sglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
