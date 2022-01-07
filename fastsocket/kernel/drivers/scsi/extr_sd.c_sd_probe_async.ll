; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_probe_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_probe_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, %struct.scsi_device*, i32, %struct.gendisk* }
%struct.scsi_device = type { i32, i64, %struct.device, i32 }
%struct.device = type { i32 }
%struct.gendisk = type { i32, i32, %struct.device*, i32, i32*, i32*, i32, i32 }

@SD_MAX_DISKS = common dso_local global i32 0, align 4
@SD_MINORS = common dso_local global i32 0, align 4
@sd_fops = common dso_local global i32 0, align 4
@sd_prep_fn = common dso_local global i32 0, align 4
@sd_unprep_fn = common dso_local global i32 0, align 4
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@GENHD_FL_DRIVERFS = common dso_local global i32 0, align 4
@GENHD_FL_REMOVABLE = common dso_local global i32 0, align 4
@KERN_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Attached SCSI %sdisk\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"removable \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @sd_probe_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_probe_async(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.scsi_device*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.scsi_disk*
  store %struct.scsi_disk* %11, %struct.scsi_disk** %5, align 8
  %12 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %12, i32 0, i32 10
  %14 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  store %struct.scsi_device* %14, %struct.scsi_device** %6, align 8
  %15 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %15, i32 0, i32 12
  %17 = load %struct.gendisk*, %struct.gendisk** %16, align 8
  store %struct.gendisk* %17, %struct.gendisk** %7, align 8
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %19 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 2
  store %struct.device* %22, %struct.device** %9, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SD_MAX_DISKS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 240
  %29 = ashr i32 %28, 4
  %30 = call i32 @sd_major(i32 %29)
  %31 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %32 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 15
  %35 = shl i32 %34, 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 1048320
  %38 = or i32 %35, %37
  %39 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %40 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @SD_MINORS, align 4
  %42 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %43 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %26, %2
  %45 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %46 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %45, i32 0, i32 5
  store i32* @sd_fops, i32** %46, align 8
  %47 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %48 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %47, i32 0, i32 11
  %49 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %50 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %52 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %51, i32 0, i32 10
  %53 = load %struct.scsi_device*, %struct.scsi_device** %52, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %57 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %59 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %58, i32 0, i32 0
  store i32 512, i32* %59, align 8
  %60 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %61 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %63 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %67 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %69 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %68, i32 0, i32 7
  store i64 0, i64* %69, align 8
  %70 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %71 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %73 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %75 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  %76 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %77 = call i32 @sd_revalidate_disk(%struct.gendisk* %76)
  %78 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %79 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @sd_prep_fn, align 4
  %82 = call i32 @blk_queue_prep_rq(i32 %80, i32 %81)
  %83 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %84 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @sd_unprep_fn, align 4
  %87 = call i32 @blk_queue_unprep_rq(i32 %85, i32 %86)
  %88 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %89 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %88, i32 0, i32 2
  %90 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %91 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %90, i32 0, i32 2
  store %struct.device* %89, %struct.device** %91, align 8
  %92 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %93 = load i32, i32* @GENHD_FL_DRIVERFS, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %96 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %98 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %44
  %102 = load i32, i32* @GENHD_FL_REMOVABLE, align 4
  %103 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %104 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %44
  %108 = load %struct.device*, %struct.device** %9, align 8
  %109 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %110 = call i32 @dev_set_drvdata(%struct.device* %108, %struct.scsi_disk* %109)
  %111 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %112 = call i32 @add_disk(%struct.gendisk* %111)
  %113 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %119 = call i32 @sd_dif_config_host(%struct.scsi_disk* %118)
  br label %120

120:                                              ; preds = %117, %107
  %121 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %122 = call i32 @sd_revalidate_disk(%struct.gendisk* %121)
  %123 = load i32, i32* @KERN_NOTICE, align 4
  %124 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %125 = load %struct.scsi_device*, %struct.scsi_device** %6, align 8
  %126 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %131 = call i32 @sd_printk(i32 %123, %struct.scsi_disk* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %130)
  %132 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %133 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %132, i32 0, i32 3
  %134 = call i32 @put_device(i32* %133)
  ret void
}

declare dso_local i32 @sd_major(i32) #1

declare dso_local i32 @sd_revalidate_disk(%struct.gendisk*) #1

declare dso_local i32 @blk_queue_prep_rq(i32, i32) #1

declare dso_local i32 @blk_queue_unprep_rq(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.scsi_disk*) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @sd_dif_config_host(%struct.scsi_disk*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i8*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
