; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_audioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_audioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, i32, i32*)* }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"doing audio ioctl (start/stop/pause/resume)\0A\00", align 1
@CDC_PLAY_AUDIO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_ioctl_audioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_audioctl(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @CD_DO_IOCTL, align 4
  %8 = call i32 @cdinfo(i32 %7, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @CDC_PLAY_AUDIO, align 4
  %10 = call i32 @CDROM_CAN(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOSYS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %17 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %18 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @check_for_audio_disc(%struct.cdrom_device_info* %16, %struct.TYPE_2__* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %15
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %27 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.cdrom_device_info*, i32, i32*)*, i32 (%struct.cdrom_device_info*, i32, i32*)** %29, align 8
  %31 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 %30(%struct.cdrom_device_info* %31, i32 %32, i32* null)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %25, %23, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @check_for_audio_disc(%struct.cdrom_device_info*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
