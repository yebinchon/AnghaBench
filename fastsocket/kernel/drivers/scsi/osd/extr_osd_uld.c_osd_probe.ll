; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c_osd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c_osd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64 }
%struct.gendisk = type { i32, i32, i32 }
%struct.osd_uld_device = type { i32, %struct.TYPE_4__, %struct.device*, i32, %struct.gendisk*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@TYPE_OSD = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@osd_minor_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@SCSI_OSD_MAX_MINOR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"alloc_disk failed\0A\00", align 1
@SCSI_OSD_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"osd%d\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"osd detection failed, non-compatible OSD device\0A\00", align 1
@osd_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"cdev_add failed\0A\00", align 1
@osd_sysfs_class = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"class_device_create failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"osd_probe %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @osd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca %struct.osd_uld_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.scsi_device* @to_scsi_device(%struct.device* %9)
  store %struct.scsi_device* %10, %struct.scsi_device** %4, align 8
  %11 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TYPE_OSD, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %177

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %29, %19
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @ida_pre_get(i32* @osd_minor_ida, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %177

27:                                               ; preds = %20
  %28 = call i32 @ida_get_new(i32* @osd_minor_ida, i32* %7)
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %20, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %2, align 4
  br label %177

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SCSI_OSD_MAX_MINOR, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %173

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.osd_uld_device* @kzalloc(i32 48, i32 %49)
  store %struct.osd_uld_device* %50, %struct.osd_uld_device** %6, align 8
  %51 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %52 = icmp eq %struct.osd_uld_device* null, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %173

54:                                               ; preds = %46
  %55 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %56 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %55, i32 0, i32 5
  %57 = call i32 @kref_init(i32* %56)
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %60 = call i32 @dev_set_drvdata(%struct.device* %58, %struct.osd_uld_device* %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %63 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = call %struct.gendisk* @alloc_disk(i32 1)
  store %struct.gendisk* %64, %struct.gendisk** %5, align 8
  %65 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %66 = icmp ne %struct.gendisk* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %54
  %68 = call i32 @OSD_ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %168

69:                                               ; preds = %54
  %70 = load i32, i32* @SCSI_OSD_MAJOR, align 4
  %71 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %72 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %74 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %77 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %79 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %82 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @sprintf(i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %86 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %87 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %86, i32 0, i32 4
  store %struct.gendisk* %85, %struct.gendisk** %87, align 8
  %88 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %89 = call i32 @scsi_device_get(%struct.scsi_device* %88)
  %90 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %91 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %90, i32 0, i32 3
  %92 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %93 = call i32 @osd_dev_init(i32* %91, %struct.scsi_device* %92)
  %94 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %95 = call i32 @__detect_osd(%struct.osd_uld_device* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %69
  %99 = call i32 @OSD_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %163

100:                                              ; preds = %69
  %101 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %102 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %101, i32 0, i32 1
  %103 = call i32 @cdev_init(%struct.TYPE_4__* %102, i32* @osd_fops)
  %104 = load i32, i32* @THIS_MODULE, align 4
  %105 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %106 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %104, i32* %107, align 4
  %108 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %109 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %108, i32 0, i32 1
  %110 = load i32, i32* @SCSI_OSD_MAJOR, align 4
  %111 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %112 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @MKDEV(i32 %110, i32 %113)
  %115 = call i32 @cdev_add(%struct.TYPE_4__* %109, i32 %114, i32 1)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %100
  %119 = call i32 @OSD_ERR(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %163

120:                                              ; preds = %100
  %121 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %122 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = call i32 @kobject_get(i32* %123)
  %125 = load i32, i32* @osd_sysfs_class, align 4
  %126 = load %struct.device*, %struct.device** %3, align 8
  %127 = load i32, i32* @SCSI_OSD_MAJOR, align 4
  %128 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %129 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @MKDEV(i32 %127, i32 %130)
  %132 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %133 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.device* @device_create(i32 %125, %struct.device* %126, i32 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %137 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %136, i32 0, i32 2
  store %struct.device* %135, %struct.device** %137, align 8
  %138 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %139 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %138, i32 0, i32 2
  %140 = load %struct.device*, %struct.device** %139, align 8
  %141 = call i64 @IS_ERR(%struct.device* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %120
  %144 = call i32 @OSD_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %145 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %146 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %145, i32 0, i32 2
  %147 = load %struct.device*, %struct.device** %146, align 8
  %148 = call i32 @PTR_ERR(%struct.device* %147)
  store i32 %148, i32* %8, align 4
  br label %159

149:                                              ; preds = %120
  %150 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %151 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %150, i32 0, i32 2
  %152 = load %struct.device*, %struct.device** %151, align 8
  %153 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %154 = call i32 @dev_set_drvdata(%struct.device* %152, %struct.osd_uld_device* %153)
  %155 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %156 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @OSD_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  store i32 0, i32* %2, align 4
  br label %177

159:                                              ; preds = %143
  %160 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %161 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %160, i32 0, i32 1
  %162 = call i32 @cdev_del(%struct.TYPE_4__* %161)
  br label %163

163:                                              ; preds = %159, %118, %98
  %164 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %165 = call i32 @scsi_device_put(%struct.scsi_device* %164)
  %166 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %167 = call i32 @put_disk(%struct.gendisk* %166)
  br label %168

168:                                              ; preds = %163, %67
  %169 = load %struct.device*, %struct.device** %3, align 8
  %170 = call i32 @dev_set_drvdata(%struct.device* %169, %struct.osd_uld_device* null)
  %171 = load %struct.osd_uld_device*, %struct.osd_uld_device** %6, align 8
  %172 = call i32 @kfree(%struct.osd_uld_device* %171)
  br label %173

173:                                              ; preds = %168, %53, %43
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @ida_remove(i32* @osd_minor_ida, i32 %174)
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %2, align 4
  br label %177

177:                                              ; preds = %173, %149, %37, %24, %16
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @ida_get_new(i32*, i32*) #1

declare dso_local %struct.osd_uld_device* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.osd_uld_device*) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local i32 @OSD_ERR(i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @scsi_device_get(%struct.scsi_device*) #1

declare dso_local i32 @osd_dev_init(i32*, %struct.scsi_device*) #1

declare dso_local i32 @__detect_osd(%struct.osd_uld_device*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @kobject_get(i32*) #1

declare dso_local %struct.device* @device_create(i32, %struct.device*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @OSD_INFO(i8*, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_4__*) #1

declare dso_local i32 @scsi_device_put(%struct.scsi_device*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @kfree(%struct.osd_uld_device*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
