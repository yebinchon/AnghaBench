; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_drive_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_drive_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, {}* }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"entering CDROM_DRIVE_STATUS\0A\00", align 1
@CDC_DRIVE_STATUS = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@CDC_SELECT_DISC = common dso_local global i32 0, align 4
@CDSL_CURRENT = common dso_local global i64 0, align 8
@CDSL_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i64)* @cdrom_ioctl_drive_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_drive_status(%struct.cdrom_device_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i64, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @CD_DO_IOCTL, align 4
  %7 = call i32 @cdinfo(i32 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %9 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CDC_DRIVE_STATUS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* @CDC_SELECT_DISC, align 4
  %21 = call i32 @CDROM_CAN(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @CDSL_CURRENT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @CDSL_NONE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27, %23, %19
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %33 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = bitcast {}** %35 to i32 (%struct.cdrom_device_info*, i64)**
  %37 = load i32 (%struct.cdrom_device_info*, i64)*, i32 (%struct.cdrom_device_info*, i64)** %36, align 8
  %38 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %39 = load i64, i64* @CDSL_CURRENT, align 8
  %40 = call i32 %37(%struct.cdrom_device_info* %38, i64 %39)
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %27
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %45 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %41
  %52 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @cdrom_slot_status(%struct.cdrom_device_info* %52, i64 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %48, %31, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @cdrom_slot_status(%struct.cdrom_device_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
