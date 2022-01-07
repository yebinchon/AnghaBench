; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr.c_sr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64, i32, i32, i32, i32 }
%struct.gendisk = type { i32, i32, i32, i32**, i32*, i32*, i32, i32 }
%struct.scsi_cd = type { i32, i32, i32, %struct.TYPE_2__, i32*, i64, i64, %struct.scsi_device*, %struct.gendisk*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.gendisk*, i64, %struct.scsi_cd*, i32* }

@ENODEV = common dso_local global i32 0, align 4
@TYPE_ROM = common dso_local global i64 0, align 8
@TYPE_WORM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@sr_index_lock = common dso_local global i32 0, align 4
@sr_index_bits = common dso_local global i32 0, align 4
@SR_DISKS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SCSI_CDROM_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"sr%d\00", align 1
@sr_bdops = common dso_local global i32 0, align 4
@GENHD_FL_CD = common dso_local global i32 0, align 4
@SR_TIMEOUT = common dso_local global i32 0, align 4
@sr_template = common dso_local global i32 0, align 4
@sr_dops = common dso_local global i32 0, align 4
@sr_prep_fn = common dso_local global i32 0, align 4
@GENHD_FL_REMOVABLE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Attached scsi CD-ROM %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @sr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.scsi_cd*, align 8
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
  %16 = load i64, i64* @TYPE_ROM, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TYPE_WORM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %185

25:                                               ; preds = %18, %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.scsi_cd* @kzalloc(i32 104, i32 %28)
  store %struct.scsi_cd* %29, %struct.scsi_cd** %6, align 8
  %30 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %31 = icmp ne %struct.scsi_cd* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %185

33:                                               ; preds = %25
  %34 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %35 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %34, i32 0, i32 9
  %36 = call i32 @kref_init(i32* %35)
  %37 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %37, %struct.gendisk** %5, align 8
  %38 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %39 = icmp ne %struct.gendisk* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %182

41:                                               ; preds = %33
  %42 = call i32 @spin_lock(i32* @sr_index_lock)
  %43 = load i32, i32* @sr_index_bits, align 4
  %44 = load i32, i32* @SR_DISKS, align 4
  %45 = call i32 @find_first_zero_bit(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SR_DISKS, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = call i32 @spin_unlock(i32* @sr_index_lock)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %179

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @sr_index_bits, align 4
  %56 = call i32 @__set_bit(i32 %54, i32 %55)
  %57 = call i32 @spin_unlock(i32* @sr_index_lock)
  %58 = load i32, i32* @SCSI_CDROM_MAJOR, align 4
  %59 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %60 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %63 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %65 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @sprintf(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %70 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %69, i32 0, i32 5
  store i32* @sr_bdops, i32** %70, align 8
  %71 = load i32, i32* @GENHD_FL_CD, align 4
  %72 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %73 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %75 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SR_TIMEOUT, align 4
  %78 = call i32 @blk_queue_rq_timeout(i32 %76, i32 %77)
  %79 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %80 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %81 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %80, i32 0, i32 7
  store %struct.scsi_device* %79, %struct.scsi_device** %81, align 8
  %82 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %83 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %84 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %83, i32 0, i32 8
  store %struct.gendisk* %82, %struct.gendisk** %84, align 8
  %85 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %86 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %85, i32 0, i32 4
  store i32* @sr_template, i32** %86, align 8
  %87 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %88 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %89 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %88, i32 0, i32 8
  store %struct.gendisk* %87, %struct.gendisk** %89, align 8
  %90 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %91 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %90, i32 0, i32 0
  store i32 2097151, i32* %91, align 8
  %92 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %93 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %92, i32 0, i32 7
  %94 = load %struct.scsi_device*, %struct.scsi_device** %93, align 8
  %95 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  %96 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %97 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %99 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %101 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %100, i32 0, i32 6
  store i64 0, i64* %101, align 8
  %102 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %103 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %105 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  store i32* @sr_dops, i32** %106, align 8
  %107 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %108 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %109 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  store %struct.scsi_cd* %107, %struct.scsi_cd** %110, align 8
  %111 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %112 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %115 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %118 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @sprintf(i32 %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %124 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %123, i32 0, i32 2
  store i32 2048, i32* %124, align 4
  %125 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %126 = call i32 @get_capabilities(%struct.scsi_cd* %125)
  %127 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %128 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @sr_prep_fn, align 4
  %131 = call i32 @blk_queue_prep_rq(i32 %129, i32 %130)
  %132 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %133 = call i32 @sr_vendor_init(%struct.scsi_cd* %132)
  %134 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %135 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %134, i32 0, i32 4
  %136 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %137 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %136, i32 0, i32 4
  store i32* %135, i32** %137, align 8
  %138 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %139 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %140 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @set_capacity(%struct.gendisk* %138, i32 %141)
  %143 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %144 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %143, i32 0, i32 4
  %145 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %146 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %145, i32 0, i32 3
  store i32** %144, i32*** %146, align 8
  %147 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %148 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %151 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %153 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %154 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 2
  store %struct.gendisk* %152, %struct.gendisk** %155, align 8
  %156 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %157 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %156, i32 0, i32 3
  %158 = call i64 @register_cdrom(%struct.TYPE_2__* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %53
  br label %179

161:                                              ; preds = %53
  %162 = load %struct.device*, %struct.device** %3, align 8
  %163 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %164 = call i32 @dev_set_drvdata(%struct.device* %162, %struct.scsi_cd* %163)
  %165 = load i32, i32* @GENHD_FL_REMOVABLE, align 4
  %166 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %167 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %171 = call i32 @add_disk(%struct.gendisk* %170)
  %172 = load i32, i32* @KERN_DEBUG, align 4
  %173 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %174 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %175 = getelementptr inbounds %struct.scsi_cd, %struct.scsi_cd* %174, i32 0, i32 3
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @sdev_printk(i32 %172, %struct.scsi_device* %173, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  store i32 0, i32* %2, align 4
  br label %187

179:                                              ; preds = %160, %49
  %180 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %181 = call i32 @put_disk(%struct.gendisk* %180)
  br label %182

182:                                              ; preds = %179, %40
  %183 = load %struct.scsi_cd*, %struct.scsi_cd** %6, align 8
  %184 = call i32 @kfree(%struct.scsi_cd* %183)
  br label %185

185:                                              ; preds = %182, %32, %24
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %2, align 4
  br label %187

187:                                              ; preds = %185, %161
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.scsi_cd* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @blk_queue_rq_timeout(i32, i32) #1

declare dso_local i32 @get_capabilities(%struct.scsi_cd*) #1

declare dso_local i32 @blk_queue_prep_rq(i32, i32) #1

declare dso_local i32 @sr_vendor_init(%struct.scsi_cd*) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i64 @register_cdrom(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.scsi_cd*) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.scsi_cd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
