; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_ioctl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*)* }
%struct.block_device = type { i32 }

@CD_DO_IOCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"entering CDROM_RESET\0A\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CDC_RESET = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.block_device*)* @cdrom_ioctl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_ioctl_reset(%struct.cdrom_device_info* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca %struct.block_device*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %6 = load i32, i32* @CD_DO_IOCTL, align 4
  %7 = call i32 @cdinfo(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %9 = call i32 @capable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EACCES, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %31

14:                                               ; preds = %2
  %15 = load i32, i32* @CDC_RESET, align 4
  %16 = call i32 @CDROM_CAN(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %14
  %22 = load %struct.block_device*, %struct.block_device** %5, align 8
  %23 = call i32 @invalidate_bdev(%struct.block_device* %22)
  %24 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %25 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.cdrom_device_info*)*, i32 (%struct.cdrom_device_info*)** %27, align 8
  %29 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %30 = call i32 %28(%struct.cdrom_device_info* %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %21, %18, %11
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @cdinfo(i32, i8*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @CDROM_CAN(i32) #1

declare dso_local i32 @invalidate_bdev(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
