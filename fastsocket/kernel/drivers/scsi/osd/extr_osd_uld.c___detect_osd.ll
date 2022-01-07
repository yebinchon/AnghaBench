; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c___detect_osd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_uld.c___detect_osd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_uld_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.scsi_device* }
%struct.scsi_device = type { i32 }

@OSD_CAP_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"start scsi_test_unit_ready %p %p %p\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"warning: scsi_test_unit_ready failed\0A\00", align 1
@osd_root_object = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osd_uld_device*)* @__detect_osd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__detect_osd(%struct.osd_uld_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.osd_uld_device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.osd_uld_device* %0, %struct.osd_uld_device** %3, align 8
  %9 = load %struct.osd_uld_device*, %struct.osd_uld_device** %3, align 8
  %10 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.scsi_device*, %struct.scsi_device** %11, align 8
  store %struct.scsi_device* %12, %struct.scsi_device** %4, align 8
  %13 = load i32, i32* @OSD_CAP_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  %17 = load %struct.osd_uld_device*, %struct.osd_uld_device** %3, align 8
  %18 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %19 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @OSD_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.osd_uld_device* %17, %struct.scsi_device* %18, i32 %21)
  %23 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %24 = load i32, i32* @HZ, align 4
  %25 = mul nsw i32 10, %24
  %26 = call i32 @scsi_test_unit_ready(%struct.scsi_device* %23, i32 %25, i32 5, i32* null)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 @OSD_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %1
  %32 = call i32 @osd_sec_init_nosec_doall_caps(i8* %16, i32* @osd_root_object, i32 0, i32 1)
  %33 = load %struct.osd_uld_device*, %struct.osd_uld_device** %3, align 8
  %34 = getelementptr inbounds %struct.osd_uld_device, %struct.osd_uld_device* %33, i32 0, i32 0
  %35 = call i64 @osd_auto_detect_ver(%struct.TYPE_2__* %34, i8* %16)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %41

40:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @OSD_DEBUG(i8*, %struct.osd_uld_device*, %struct.scsi_device*, i32) #2

declare dso_local i32 @scsi_test_unit_ready(%struct.scsi_device*, i32, i32, i32*) #2

declare dso_local i32 @OSD_ERR(i8*) #2

declare dso_local i32 @osd_sec_init_nosec_doall_caps(i8*, i32*, i32, i32) #2

declare dso_local i64 @osd_auto_detect_ver(%struct.TYPE_2__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
