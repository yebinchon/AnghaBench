; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_eject_sw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_eject_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32 }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"entering CDROMEJECT_SW\0A\00", align 1
@CDC_OPEN_TRAY = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@keeplocked = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CDO_AUTO_CLOSE = common dso_local global i32 0, align 4
@CDO_AUTO_EJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i64)* @cdrom_ioctl_eject_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_eject_sw(%struct.cdrom_device_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i64, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @CD_DO_IOCTL, align 4
  %7 = call i32 @cdinfo(i32 %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CDC_OPEN_TRAY, align 4
  %9 = call i32 @CDROM_CAN(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOSYS, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %40

14:                                               ; preds = %2
  %15 = load i64, i64* @keeplocked, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %14
  %21 = load i32, i32* @CDO_AUTO_CLOSE, align 4
  %22 = load i32, i32* @CDO_AUTO_EJECT, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %26 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %20
  %32 = load i32, i32* @CDO_AUTO_CLOSE, align 4
  %33 = load i32, i32* @CDO_AUTO_EJECT, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %36 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31, %20
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %17, %11
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
