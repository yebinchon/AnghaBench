; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_write_protect_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_read_write_protect_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i64, i32, %struct.scsi_device* }
%struct.scsi_device = type { i64, i64 }
%struct.scsi_mode_data = type { i32 }

@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Assuming Write Enabled\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Test WP failed, assume Write Enabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Write Protect is %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Mode Sense: %02x %02x %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_disk*, i8*)* @sd_read_write_protect_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_read_write_protect_flag(%struct.scsi_disk* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.scsi_mode_data, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %9, i32 0, i32 3
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %6, align 8
  %12 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @set_disk_ro(i32 %17, i32 0)
  %19 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @KERN_NOTICE, align 4
  %25 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %26 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %24, %struct.scsi_disk* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %119

27:                                               ; preds = %2
  %28 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %29 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @sd_do_mode_sense(%struct.scsi_device* %33, i32 0, i32 63, i8* %34, i32 192, %struct.scsi_mode_data* %7, i32* null)
  store i32 %35, i32* %5, align 4
  br label %56

36:                                               ; preds = %27
  %37 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @sd_do_mode_sense(%struct.scsi_device* %37, i32 0, i32 63, i8* %38, i32 4, %struct.scsi_mode_data* %7, i32* null)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @scsi_status_is_good(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @sd_do_mode_sense(%struct.scsi_device* %44, i32 0, i32 0, i8* %45, i32 4, %struct.scsi_mode_data* %7, i32* null)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @scsi_status_is_good(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @sd_do_mode_sense(%struct.scsi_device* %52, i32 0, i32 63, i8* %53, i32 255, %struct.scsi_mode_data* %7, i32* null)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %56

56:                                               ; preds = %55, %32
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @scsi_status_is_good(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @KERN_WARNING, align 4
  %62 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %63 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %61, %struct.scsi_disk* %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %119

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.scsi_mode_data, %struct.scsi_mode_data* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 128
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %71 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %73 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %76 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @set_disk_ro(i32 %74, i32 %77)
  %79 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %64
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %86 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %83, %64
  %90 = load i32, i32* @KERN_NOTICE, align 4
  %91 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %92 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %93 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %98 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %90, %struct.scsi_disk* %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %97)
  %99 = load i32, i32* @KERN_DEBUG, align 4
  %100 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8*, i8** %4, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 3
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = call i32 (i32, %struct.scsi_disk*, i8*, ...) @sd_printk(i32 %99, %struct.scsi_disk* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32 %108, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %89, %83
  br label %119

119:                                              ; preds = %23, %118, %60
  ret void
}

declare dso_local i32 @set_disk_ro(i32, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, ...) #1

declare dso_local i32 @sd_do_mode_sense(%struct.scsi_device*, i32, i32, i8*, i32, %struct.scsi_mode_data*, i32*) #1

declare dso_local i32 @scsi_status_is_good(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
