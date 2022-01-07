; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_store_provisioning_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_store_provisioning_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_disk = type { %struct.scsi_device* }
%struct.scsi_device = type { i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@TYPE_DISK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@lbp_mode = common dso_local global i32* null, align 8
@SD_LBP_UNMAP = common dso_local global i64 0, align 8
@SD_LBP_WS16 = common dso_local global i64 0, align 8
@SD_LBP_WS10 = common dso_local global i64 0, align 8
@SD_LBP_ZERO = common dso_local global i64 0, align 8
@SD_LBP_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @sd_store_provisioning_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sd_store_provisioning_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.scsi_disk*, align 8
  %11 = alloca %struct.scsi_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.scsi_disk* @to_scsi_disk(%struct.device* %12)
  store %struct.scsi_disk* %13, %struct.scsi_disk** %10, align 8
  %14 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %15 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %14, i32 0, i32 0
  %16 = load %struct.scsi_device*, %struct.scsi_device** %15, align 8
  store %struct.scsi_device* %16, %struct.scsi_device** %11, align 8
  %17 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %18 = call i32 @capable(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* @EACCES, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %5, align 8
  br label %101

23:                                               ; preds = %4
  %24 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  %25 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TYPE_DISK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* @EINVAL, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %101

32:                                               ; preds = %23
  %33 = load i8*, i8** %8, align 8
  %34 = load i32*, i32** @lbp_mode, align 8
  %35 = load i64, i64* @SD_LBP_UNMAP, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strncmp(i8* %33, i32 %37, i32 20)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %42 = load i64, i64* @SD_LBP_UNMAP, align 8
  %43 = call i32 @sd_config_discard(%struct.scsi_disk* %41, i64 %42)
  br label %99

44:                                               ; preds = %32
  %45 = load i8*, i8** %8, align 8
  %46 = load i32*, i32** @lbp_mode, align 8
  %47 = load i64, i64* @SD_LBP_WS16, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strncmp(i8* %45, i32 %49, i32 20)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %54 = load i64, i64* @SD_LBP_WS16, align 8
  %55 = call i32 @sd_config_discard(%struct.scsi_disk* %53, i64 %54)
  br label %98

56:                                               ; preds = %44
  %57 = load i8*, i8** %8, align 8
  %58 = load i32*, i32** @lbp_mode, align 8
  %59 = load i64, i64* @SD_LBP_WS10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strncmp(i8* %57, i32 %61, i32 20)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %66 = load i64, i64* @SD_LBP_WS10, align 8
  %67 = call i32 @sd_config_discard(%struct.scsi_disk* %65, i64 %66)
  br label %97

68:                                               ; preds = %56
  %69 = load i8*, i8** %8, align 8
  %70 = load i32*, i32** @lbp_mode, align 8
  %71 = load i64, i64* @SD_LBP_ZERO, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strncmp(i8* %69, i32 %73, i32 20)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %68
  %77 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %78 = load i64, i64* @SD_LBP_ZERO, align 8
  %79 = call i32 @sd_config_discard(%struct.scsi_disk* %77, i64 %78)
  br label %96

80:                                               ; preds = %68
  %81 = load i8*, i8** %8, align 8
  %82 = load i32*, i32** @lbp_mode, align 8
  %83 = load i64, i64* @SD_LBP_DISABLE, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @strncmp(i8* %81, i32 %85, i32 20)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %80
  %89 = load %struct.scsi_disk*, %struct.scsi_disk** %10, align 8
  %90 = load i64, i64* @SD_LBP_DISABLE, align 8
  %91 = call i32 @sd_config_discard(%struct.scsi_disk* %89, i64 %90)
  br label %95

92:                                               ; preds = %80
  %93 = load i64, i64* @EINVAL, align 8
  %94 = sub i64 0, %93
  store i64 %94, i64* %5, align 8
  br label %101

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %76
  br label %97

97:                                               ; preds = %96, %64
  br label %98

98:                                               ; preds = %97, %52
  br label %99

99:                                               ; preds = %98, %40
  %100 = load i64, i64* %9, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %99, %92, %29, %20
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local %struct.scsi_disk* @to_scsi_disk(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @sd_config_discard(%struct.scsi_disk*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
