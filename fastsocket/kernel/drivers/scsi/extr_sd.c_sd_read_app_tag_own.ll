; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_app_tag_own.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_app_tag_own.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i64, i32, %struct.scsi_device* }
%struct.scsi_device = type { i64 }
%struct.scsi_mode_data = type { i32, i32, i32 }
%struct.scsi_sense_hdr = type { i32 }

@TYPE_DISK = common dso_local global i64 0, align 8
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"getting Control mode page failed, assume no ATO\0A\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ATO Got wrong page\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sd_read_app_tag_own(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.scsi_mode_data, align 4
  %9 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %10, i32 0, i32 2
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %7, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TYPE_DISK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %84

19:                                               ; preds = %2
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %21 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %84

25:                                               ; preds = %19
  %26 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @SD_TIMEOUT, align 4
  %29 = load i32, i32* @SD_MAX_RETRIES, align 4
  %30 = call i32 @scsi_mode_sense(%struct.scsi_device* %26, i32 1, i32 10, i8* %27, i32 36, i32 %28, i32 %29, %struct.scsi_mode_data* %8, %struct.scsi_sense_hdr* %9)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @scsi_status_is_good(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 6
  br i1 %41, label %42, label %52

42:                                               ; preds = %38, %34, %25
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %45 = call i32 @sd_printk(i32 %43, %struct.scsi_disk* %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %46 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %9)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %50 = call i32 @sd_print_sense_hdr(%struct.scsi_disk* %49, %struct.scsi_sense_hdr* %9)
  br label %51

51:                                               ; preds = %48, %42
  br label %84

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %8, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %6, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 63
  %65 = icmp ne i32 %64, 10
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %69 = call i32 @sd_printk(i32 %67, %struct.scsi_disk* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %84

70:                                               ; preds = %52
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 5
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 %77, 128
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %84

81:                                               ; preds = %70
  %82 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %82, i32 0, i32 1
  store i32 1, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %80, %66, %51, %24, %18
  ret void
}

declare dso_local i32 @scsi_mode_sense(%struct.scsi_device*, i32, i32, i8*, i32, i32, i32, %struct.scsi_mode_data*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_status_is_good(i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @sd_print_sense_hdr(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
