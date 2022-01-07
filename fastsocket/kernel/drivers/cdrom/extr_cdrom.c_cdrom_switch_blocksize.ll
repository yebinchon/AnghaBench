; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_switch_blocksize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_switch_blocksize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32, i32, i32, i32*, i32, i8*, i32 }
%struct.modesel_head = type { i32, i32, i32, i32*, i32, i8*, i32 }

@CGC_DATA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_switch_blocksize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_switch_blocksize(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdrom_device_ops*, align 8
  %6 = alloca %struct.packet_command, align 8
  %7 = alloca %struct.modesel_head, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %9 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %8, i32 0, i32 0
  %10 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %9, align 8
  store %struct.cdrom_device_ops* %10, %struct.cdrom_device_ops** %5, align 8
  %11 = bitcast %struct.modesel_head* %7 to %struct.packet_command*
  %12 = call i32 @memset(%struct.packet_command* %11, i32 0, i32 48)
  %13 = getelementptr inbounds %struct.modesel_head, %struct.modesel_head* %7, i32 0, i32 0
  store i32 8, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds %struct.modesel_head, %struct.modesel_head* %7, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 255
  %20 = getelementptr inbounds %struct.modesel_head, %struct.modesel_head* %7, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = call i32 @memset(%struct.packet_command* %6, i32 0, i32 48)
  %22 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 21, i32* %24, align 4
  %25 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 16, i32* %27, align 4
  %28 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  store i32 12, i32* %30, align 4
  %31 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 4
  store i32 48, i32* %31, align 8
  %32 = bitcast %struct.modesel_head* %7 to i8*
  %33 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 5
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* @CGC_DATA_WRITE, align 4
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 6
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.modesel_head, %struct.modesel_head* %7, i32 0, i32 0
  store i32 8, i32* %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds %struct.modesel_head, %struct.modesel_head* %7, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, 255
  %43 = getelementptr inbounds %struct.modesel_head, %struct.modesel_head* %7, i32 0, i32 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %5, align 8
  %45 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %44, i32 0, i32 0
  %46 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %45, align 8
  %47 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %48 = bitcast %struct.cdrom_device_info* %47 to %struct.cdrom_device_info.0*
  %49 = call i32 %46(%struct.cdrom_device_info.0* %48, %struct.packet_command* %6)
  ret i32 %49
}

declare dso_local i32 @memset(%struct.packet_command*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
