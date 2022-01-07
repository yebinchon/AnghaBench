; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_fw_flash_update_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pm8001/extr_pm8001_hwi.c_pm8001_chip_fw_flash_update_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { %struct.pm8001_ccb_info*, %struct.TYPE_6__ }
%struct.pm8001_ccb_info = type { i64, %struct.fw_control_ex* }
%struct.fw_control_ex = type { i32, i32, i8*, %struct.fw_control_info* }
%struct.fw_control_info = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.fw_flash_updata_info = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.pm8001_ioctl_payload = type { i32 }

@FW_FLASH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm8001_chip_fw_flash_update_req(%struct.pm8001_hba_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fw_flash_updata_info, align 8
  %7 = alloca %struct.fw_control_info*, align 8
  %8 = alloca %struct.fw_control_ex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pm8001_ccb_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pm8001_ioctl_payload*, align 8
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %16 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i64, i64* @FW_FLASH, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %12, align 8
  %23 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %24 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i64, i64* @FW_FLASH, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to %struct.pm8001_ioctl_payload*
  store %struct.pm8001_ioctl_payload* %32, %struct.pm8001_ioctl_payload** %14, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.fw_control_ex* @kzalloc(i32 24, i32 %33)
  store %struct.fw_control_ex* %34, %struct.fw_control_ex** %8, align 8
  %35 = load %struct.fw_control_ex*, %struct.fw_control_ex** %8, align 8
  %36 = icmp ne %struct.fw_control_ex* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %116

40:                                               ; preds = %2
  %41 = load %struct.pm8001_ioctl_payload*, %struct.pm8001_ioctl_payload** %14, align 8
  %42 = getelementptr inbounds %struct.pm8001_ioctl_payload, %struct.pm8001_ioctl_payload* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to %struct.fw_control_info*
  store %struct.fw_control_info* %43, %struct.fw_control_info** %7, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %46 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %49 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i8* %44, i32 %47, i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @cpu_to_le64(i32 %52)
  %54 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %6, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %57 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpu_to_le32(i32 %58)
  %60 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %6, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  %63 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %6, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %67 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %6, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %71 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %6, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %75 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.fw_flash_updata_info, %struct.fw_flash_updata_info* %6, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %79 = load %struct.fw_control_ex*, %struct.fw_control_ex** %8, align 8
  %80 = getelementptr inbounds %struct.fw_control_ex, %struct.fw_control_ex* %79, i32 0, i32 3
  store %struct.fw_control_info* %78, %struct.fw_control_info** %80, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load %struct.fw_control_ex*, %struct.fw_control_ex** %8, align 8
  %83 = getelementptr inbounds %struct.fw_control_ex, %struct.fw_control_ex* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.fw_control_ex*, %struct.fw_control_ex** %8, align 8
  %86 = getelementptr inbounds %struct.fw_control_ex, %struct.fw_control_ex* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.fw_control_info*, %struct.fw_control_info** %7, align 8
  %88 = getelementptr inbounds %struct.fw_control_info, %struct.fw_control_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.fw_control_ex*, %struct.fw_control_ex** %8, align 8
  %91 = getelementptr inbounds %struct.fw_control_ex, %struct.fw_control_ex* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %93 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %92, i64* %10)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %40
  %97 = load %struct.fw_control_ex*, %struct.fw_control_ex** %8, align 8
  %98 = call i32 @kfree(%struct.fw_control_ex* %97)
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %116

100:                                              ; preds = %40
  %101 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %102 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %101, i32 0, i32 0
  %103 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %103, i64 %104
  store %struct.pm8001_ccb_info* %105, %struct.pm8001_ccb_info** %11, align 8
  %106 = load %struct.fw_control_ex*, %struct.fw_control_ex** %8, align 8
  %107 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %11, align 8
  %108 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %107, i32 0, i32 1
  store %struct.fw_control_ex* %106, %struct.fw_control_ex** %108, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %11, align 8
  %111 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @pm8001_chip_fw_flash_update_build(%struct.pm8001_hba_info* %112, %struct.fw_flash_updata_info* %6, i64 %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %100, %96, %37
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.fw_control_ex* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i64*) #1

declare dso_local i32 @kfree(%struct.fw_control_ex*) #1

declare dso_local i32 @pm8001_chip_fw_flash_update_build(%struct.pm8001_hba_info*, %struct.fw_flash_updata_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
