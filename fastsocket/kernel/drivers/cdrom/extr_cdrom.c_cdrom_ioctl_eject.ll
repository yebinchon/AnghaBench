; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_eject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_eject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*, i32)* }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"entering CDROMEJECT\0A\00", align 1
@CDC_OPEN_TRAY = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@keeplocked = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CDC_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*)* @cdrom_ioctl_eject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_eject(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %5 = load i32, i32* @CD_DO_IOCTL, align 4
  %6 = call i32 @cdinfo(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @CDC_OPEN_TRAY, align 4
  %8 = call i64 @CDROM_CAN(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOSYS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %15 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* @keeplocked, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %18
  %25 = load i32, i32* @CDC_LOCK, align 4
  %26 = call i64 @CDROM_CAN(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %30 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*, i32)** %32, align 8
  %34 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %35 = call i32 %33(%struct.cdrom_device_info* %34, i32 0)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %49

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %43 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.cdrom_device_info*, i32)*, i32 (%struct.cdrom_device_info*, i32)** %45, align 8
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %48 = call i32 %46(%struct.cdrom_device_info* %47, i32 1)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %38, %21, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i64 @CDROM_CAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
