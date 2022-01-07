; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_mrw_bgformat_susp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_mrw_bgformat_susp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32 }

@CGC_DATA_NONE = common dso_local global i32 0, align 4
@GPCMD_CLOSE_TRACK = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32)* @cdrom_mrw_bgformat_susp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_mrw_bgformat_susp(%struct.cdrom_device_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.packet_command, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CGC_DATA_NONE, align 4
  %7 = call i32 @init_cdrom_command(%struct.packet_command* %5, i32* null, i32 0, i32 %6)
  %8 = load i32, i32* @GPCMD_CLOSE_TRACK, align 4
  %9 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 2, i32* %22, align 4
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 300, %23
  %25 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %5, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %27 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %29, align 8
  %31 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %32 = call i32 %30(%struct.cdrom_device_info* %31, %struct.packet_command* %5)
  ret i32 %32
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
