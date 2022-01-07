; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr_ioctl.c_sr_select_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sr_ioctl.c_sr_select_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i32* }
%struct.packet_command = type { i32*, i32, i32 }

@GPCMD_SET_SPEED = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_select_speed(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.packet_command, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %9 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 65535, i32* %5, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %15, 177
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %13
  %18 = call i32 @memset(%struct.packet_command* %7, i32 0, i32 16)
  %19 = load i32, i32* @GPCMD_SET_SPEED, align 4
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 255
  %31 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @DMA_NONE, align 4
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @IOCTL_TIMEOUT, align 4
  %37 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @sr_do_ioctl(i32* %38, %struct.packet_command* %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %17
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

declare dso_local i64 @sr_do_ioctl(i32*, %struct.packet_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
