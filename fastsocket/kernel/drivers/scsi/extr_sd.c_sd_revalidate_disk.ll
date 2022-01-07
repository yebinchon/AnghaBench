; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_revalidate_disk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_revalidate_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.scsi_disk = type { i32, %struct.TYPE_2__*, i64, i64, i64, i64, %struct.scsi_device* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_device = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sd_revalidate_disk\0A\00", align 1
@SD_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"sd_revalidate_disk: Memory allocation failure.\0A\00", align 1
@REQ_FLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*)* @sd_revalidate_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_revalidate_disk(%struct.gendisk* %0) #0 {
  %2 = alloca %struct.gendisk*, align 8
  %3 = alloca %struct.scsi_disk*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %2, align 8
  %7 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %8 = call %struct.scsi_disk* @scsi_disk(%struct.gendisk* %7)
  store %struct.scsi_disk* %8, %struct.scsi_disk** %3, align 8
  %9 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %9, i32 0, i32 6
  %11 = load %struct.scsi_device*, %struct.scsi_device** %10, align 8
  store %struct.scsi_device* %11, %struct.scsi_device** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32, i32* @KERN_INFO, align 4
  %13 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %14 = call i32 @sd_printk(i32 %12, %struct.scsi_disk* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @SCSI_LOG_HLQUEUE(i32 3, i32 %14)
  %16 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %17 = call i32 @scsi_device_online(%struct.scsi_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %96

20:                                               ; preds = %1
  %21 = load i32, i32* @SD_BUF_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @KERN_WARNING, align 4
  %28 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %29 = call i32 @sd_printk(i32 %27, %struct.scsi_disk* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %96

30:                                               ; preds = %20
  %31 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %32 = call i32 @sd_spinup_disk(%struct.scsi_disk* %31)
  %33 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %30
  %38 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @sd_read_capacity(%struct.scsi_disk* %38, i8* %39)
  %41 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %42 = call i64 @sd_try_extended_inquiry(%struct.scsi_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %46 = call i32 @sd_read_block_provisioning(%struct.scsi_disk* %45)
  %47 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %48 = call i32 @sd_read_block_limits(%struct.scsi_disk* %47)
  %49 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %50 = call i32 @sd_read_block_characteristics(%struct.scsi_disk* %49)
  br label %51

51:                                               ; preds = %44, %37
  %52 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @sd_read_write_protect_flag(%struct.scsi_disk* %52, i8* %53)
  %55 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @sd_read_cache_type(%struct.scsi_disk* %55, i8* %56)
  %58 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @sd_read_app_tag_own(%struct.scsi_disk* %58, i8* %59)
  br label %61

61:                                               ; preds = %51, %30
  %62 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %65 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %61
  %69 = load i32, i32* @REQ_FLUSH, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %73 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @REQ_FUA, align 4
  %78 = load i32, i32* %6, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %68
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %83 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @blk_queue_flush(i32 %86, i32 %87)
  %89 = load %struct.gendisk*, %struct.gendisk** %2, align 8
  %90 = load %struct.scsi_disk*, %struct.scsi_disk** %3, align 8
  %91 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @set_capacity(%struct.gendisk* %89, i32 %92)
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @kfree(i8* %94)
  br label %96

96:                                               ; preds = %81, %26, %19
  ret i32 0
}

declare dso_local %struct.scsi_disk* @scsi_disk(%struct.gendisk*) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @sd_spinup_disk(%struct.scsi_disk*) #1

declare dso_local i32 @sd_read_capacity(%struct.scsi_disk*, i8*) #1

declare dso_local i64 @sd_try_extended_inquiry(%struct.scsi_device*) #1

declare dso_local i32 @sd_read_block_provisioning(%struct.scsi_disk*) #1

declare dso_local i32 @sd_read_block_limits(%struct.scsi_disk*) #1

declare dso_local i32 @sd_read_block_characteristics(%struct.scsi_disk*) #1

declare dso_local i32 @sd_read_write_protect_flag(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_read_cache_type(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @sd_read_app_tag_own(%struct.scsi_disk*, i8*) #1

declare dso_local i32 @blk_queue_flush(i32, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
