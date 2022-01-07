; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_has_defect_mgt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_has_defect_mgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_GET_CONFIGURATION = common dso_local global i32 0, align 4
@CDF_HWDM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*)* @cdrom_has_defect_mgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_has_defect_mgt(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.packet_command, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %9 = load i32, i32* @CGC_DATA_READ, align 4
  %10 = call i32 @init_cdrom_command(%struct.packet_command* %4, i8* %8, i32 16, i32 %9)
  %11 = load i32, i32* @GPCMD_GET_CONFIGURATION, align 4
  %12 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %4, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %11, i32* %14, align 4
  %15 = load i64, i64* @CDF_HWDM, align 8
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %4, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  store i32 %16, i32* %19, align 4
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %4, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  store i32 16, i32* %22, align 4
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %4, i32 0, i32 1
  store i32 1, i32* %23, align 8
  %24 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %25 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %27, align 8
  %29 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %30 = call i32 %28(%struct.cdrom_device_info* %29, %struct.packet_command* %4)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %1
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @be16_to_cpu(i32 %38)
  %40 = load i64, i64* @CDF_HWDM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42, %32
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
