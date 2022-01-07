; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.scsi_disk = type { i32, i64, i32, %struct.scsi_device* }
%struct.scsi_device = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"sd_open\0A\00", align 1
@ENOMEDIUM = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@SCSI_REMOVAL_PREVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32)* @sd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_open(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.block_device*, %struct.block_device** %4, align 8
  %10 = getelementptr inbounds %struct.block_device, %struct.block_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.scsi_disk* @scsi_disk_get(i32 %11)
  store %struct.scsi_disk* %12, %struct.scsi_disk** %6, align 8
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %14 = icmp ne %struct.scsi_disk* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load i32, i32* @KERN_INFO, align 4
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %21 = call i32 @sd_printk(i32 %19, %struct.scsi_disk* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @SCSI_LOG_HLQUEUE(i32 3, i32 %21)
  %23 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %24 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %23, i32 0, i32 3
  %25 = load %struct.scsi_device*, %struct.scsi_device** %24, align 8
  store %struct.scsi_device* %25, %struct.scsi_device** %7, align 8
  %26 = load i32, i32* @ENXIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %29 = call i64 @scsi_block_when_processing_errors(%struct.scsi_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %18
  br label %104

32:                                               ; preds = %18
  %33 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %39 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32
  %43 = load %struct.block_device*, %struct.block_device** %4, align 8
  %44 = call i32 @check_disk_change(%struct.block_device* %43)
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* @ENOMEDIUM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %49 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %54 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @FMODE_NDELAY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %104

63:                                               ; preds = %57, %52, %45
  %64 = load i32, i32* @EROFS, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  %66 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %67 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @FMODE_WRITE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %104

76:                                               ; preds = %70, %63
  %77 = load i32, i32* @ENXIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  %79 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %80 = call i32 @scsi_device_online(%struct.scsi_device* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %104

83:                                               ; preds = %76
  %84 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %85 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = icmp ne i32 %86, 0
  br i1 %88, label %103, label %89

89:                                               ; preds = %83
  %90 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %91 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %96 = call i64 @scsi_block_when_processing_errors(%struct.scsi_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %100 = load i32, i32* @SCSI_REMOVAL_PREVENT, align 4
  %101 = call i32 @scsi_set_medium_removal(%struct.scsi_device* %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %102, %89, %83
  store i32 0, i32* %3, align 4
  br label %108

104:                                              ; preds = %82, %75, %62, %31
  %105 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %106 = call i32 @scsi_disk_put(%struct.scsi_disk* %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %103, %15
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.scsi_disk* @scsi_disk_get(i32) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i64 @scsi_block_when_processing_errors(%struct.scsi_device*) #1

declare dso_local i32 @check_disk_change(%struct.block_device*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i32 @scsi_set_medium_removal(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_disk_put(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
