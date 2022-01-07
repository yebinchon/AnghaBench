; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sd.c_sd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64, %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.scsi_disk = type { i32, %struct.TYPE_7__, i64, i32, %struct.gendisk*, i32*, %struct.scsi_device* }
%struct.gendisk = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@TYPE_DISK = common dso_local global i64 0, align 8
@TYPE_MOD = common dso_local global i64 0, align 8
@TYPE_RBC = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sd_attach\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SD_MINORS = common dso_local global i32 0, align 4
@sd_index_ida = common dso_local global i32 0, align 4
@sd_index_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"sd\00", align 1
@DISK_NAME_LEN = common dso_local global i32 0, align 4
@sd_template = common dso_local global i32 0, align 4
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MOD_TIMEOUT = common dso_local global i32 0, align 4
@sd_disk_class = common dso_local global i32 0, align 4
@sd_probe_async = common dso_local global i32 0, align 4
@scsi_sd_probe_domain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_disk*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.scsi_device* @to_scsi_device(%struct.device* %9)
  store %struct.scsi_device* %10, %struct.scsi_device** %4, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TYPE_DISK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TYPE_MOD, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TYPE_RBC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %163

31:                                               ; preds = %24, %18, %1
  %32 = load i32, i32* @KERN_INFO, align 4
  %33 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %34 = call i32 @sdev_printk(i32 %32, %struct.scsi_device* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @SCSI_LOG_HLQUEUE(i32 3, i32 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.scsi_disk* @kzalloc(i32 64, i32 %38)
  store %struct.scsi_disk* %39, %struct.scsi_disk** %5, align 8
  %40 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %41 = icmp ne %struct.scsi_disk* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %163

43:                                               ; preds = %31
  %44 = load i32, i32* @SD_MINORS, align 4
  %45 = call %struct.gendisk* @alloc_disk(i32 %44)
  store %struct.gendisk* %45, %struct.gendisk** %6, align 8
  %46 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %47 = icmp ne %struct.gendisk* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %160

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @ida_pre_get(i32* @sd_index_ida, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %157

55:                                               ; preds = %50
  %56 = call i32 @spin_lock(i32* @sd_index_lock)
  %57 = call i32 @ida_get_new(i32* @sd_index_ida, i32* %7)
  store i32 %57, i32* %8, align 4
  %58 = call i32 @spin_unlock(i32* @sd_index_lock)
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %50, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %157

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %71 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DISK_NAME_LEN, align 4
  %74 = call i32 @sd_format_disk_name(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %152

78:                                               ; preds = %68
  %79 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %80 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %81 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %80, i32 0, i32 6
  store %struct.scsi_device* %79, %struct.scsi_device** %81, align 8
  %82 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %83 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %82, i32 0, i32 5
  store i32* @sd_template, i32** %83, align 8
  %84 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %85 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %85, i32 0, i32 4
  store %struct.gendisk* %84, %struct.gendisk** %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %89 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %91 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %93 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %95 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %119, label %100

100:                                              ; preds = %78
  %101 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %102 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TYPE_MOD, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %108 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %107, i32 0, i32 2
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* @SD_TIMEOUT, align 4
  %111 = call i32 @blk_queue_rq_timeout(%struct.TYPE_8__* %109, i32 %110)
  br label %118

112:                                              ; preds = %100
  %113 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %114 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %113, i32 0, i32 2
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* @SD_MOD_TIMEOUT, align 4
  %117 = call i32 @blk_queue_rq_timeout(%struct.TYPE_8__* %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %106
  br label %119

119:                                              ; preds = %118, %78
  %120 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %121 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %120, i32 0, i32 1
  %122 = call i32 @device_initialize(%struct.TYPE_7__* %121)
  %123 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %124 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %123, i32 0, i32 1
  %125 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %126 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  store %struct.TYPE_7__* %124, %struct.TYPE_7__** %127, align 8
  %128 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %129 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i32* @sd_disk_class, i32** %130, align 8
  %131 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %132 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %131, i32 0, i32 1
  %133 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %134 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %133, i32 0, i32 1
  %135 = call i32 @dev_name(%struct.TYPE_7__* %134)
  %136 = call i32 @dev_set_name(%struct.TYPE_7__* %132, i32 %135)
  %137 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %138 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %137, i32 0, i32 1
  %139 = call i64 @device_add(%struct.TYPE_7__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %119
  br label %152

142:                                              ; preds = %119
  %143 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %144 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %143, i32 0, i32 1
  %145 = call i32 @get_device(%struct.TYPE_7__* %144)
  %146 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %147 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %146, i32 0, i32 1
  %148 = call i32 @get_device(%struct.TYPE_7__* %147)
  %149 = load i32, i32* @sd_probe_async, align 4
  %150 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %151 = call i32 @async_schedule_domain(i32 %149, %struct.scsi_disk* %150, i32* @scsi_sd_probe_domain)
  store i32 0, i32* %2, align 4
  br label %165

152:                                              ; preds = %141, %77
  %153 = call i32 @spin_lock(i32* @sd_index_lock)
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @ida_remove(i32* @sd_index_ida, i32 %154)
  %156 = call i32 @spin_unlock(i32* @sd_index_lock)
  br label %157

157:                                              ; preds = %152, %67, %54
  %158 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %159 = call i32 @put_disk(%struct.gendisk* %158)
  br label %160

160:                                              ; preds = %157, %48
  %161 = load %struct.scsi_disk*, %struct.scsi_disk** %5, align 8
  %162 = call i32 @kfree(%struct.scsi_disk* %161)
  br label %163

163:                                              ; preds = %160, %42, %30
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %163, %142
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*) #1

declare dso_local %struct.scsi_disk* @kzalloc(i32, i32) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ida_get_new(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sd_format_disk_name(i8*, i32, i32, i32) #1

declare dso_local i32 @blk_queue_rq_timeout(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i64 @device_add(%struct.TYPE_7__*) #1

declare dso_local i32 @get_device(%struct.TYPE_7__*) #1

declare dso_local i32 @async_schedule_domain(i32, %struct.scsi_disk*, i32*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
