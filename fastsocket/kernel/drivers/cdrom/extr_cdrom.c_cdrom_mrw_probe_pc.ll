; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_mrw_probe_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_mrw_probe_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { i8* }
%struct.packet_command = type { i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MRW_MODE_PC = common dso_local global i8* null, align 8
@MRW_MODE_PC_PRE1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*)* @cdrom_mrw_probe_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_mrw_probe_pc(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.packet_command, align 4
  %5 = alloca [16 x i8], align 16
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %6 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %7 = load i32, i32* @CGC_DATA_READ, align 4
  %8 = call i32 @init_cdrom_command(%struct.packet_command* %4, i8* %6, i32 16, i32 %7)
  %9 = load i32, i32* @HZ, align 4
  %10 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %4, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %4, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %13 = load i8*, i8** @MRW_MODE_PC, align 8
  %14 = call i32 @cdrom_mode_sense(%struct.cdrom_device_info* %12, %struct.packet_command* %4, i8* %13, i32 0)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** @MRW_MODE_PC, align 8
  %18 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %19 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  store i32 0, i32* %2, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %22 = load i8*, i8** @MRW_MODE_PC_PRE1, align 8
  %23 = call i32 @cdrom_mode_sense(%struct.cdrom_device_info* %21, %struct.packet_command* %4, i8* %22, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** @MRW_MODE_PC_PRE1, align 8
  %27 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %28 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  store i32 0, i32* %2, align 4
  br label %31

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

declare dso_local i32 @cdrom_mode_sense(%struct.cdrom_device_info*, %struct.packet_command*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
