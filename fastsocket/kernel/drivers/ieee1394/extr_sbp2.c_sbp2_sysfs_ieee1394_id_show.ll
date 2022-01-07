; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_sysfs_ieee1394_id_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_sysfs_ieee1394_id_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }
%struct.sbp2_lu = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@sbp2_long_sysfs_ieee1394_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%016Lx:%06x:%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%016Lx:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @sbp2_sysfs_ieee1394_id_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_sysfs_ieee1394_id_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca %struct.sbp2_lu*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.scsi_device* @to_scsi_device(%struct.device* %10)
  store %struct.scsi_device* %11, %struct.scsi_device** %8, align 8
  %12 = icmp ne %struct.scsi_device* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.sbp2_lu*
  store %struct.sbp2_lu* %22, %struct.sbp2_lu** %9, align 8
  %23 = icmp ne %struct.sbp2_lu* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %62

25:                                               ; preds = %14
  %26 = load i64, i64* @sbp2_long_sysfs_ieee1394_id, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.sbp2_lu*, %struct.sbp2_lu** %9, align 8
  %31 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %30, i32 0, i32 2
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sbp2_lu*, %struct.sbp2_lu** %9, align 8
  %36 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sbp2_lu*, %struct.sbp2_lu** %9, align 8
  %41 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ORB_SET_LUN(i32 %42)
  %44 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %39, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %25
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.sbp2_lu*, %struct.sbp2_lu** %9, align 8
  %48 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.sbp2_lu*, %struct.sbp2_lu** %9, align 8
  %53 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sbp2_lu*, %struct.sbp2_lu** %9, align 8
  %58 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ORB_SET_LUN(i32 %59)
  %61 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %51, i32 %56, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %45, %28, %24, %13
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @ORB_SET_LUN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
