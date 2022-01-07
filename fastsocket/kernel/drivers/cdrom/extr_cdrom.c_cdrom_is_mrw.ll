; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_is_mrw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_is_mrw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.cdrom_device_info*, %struct.packet_command*)* }
%struct.packet_command = type { i32*, i32 }
%struct.mrw_feature_desc = type { i32, i32 }

@CGC_DATA_READ = common dso_local global i32 0, align 4
@GPCMD_GET_CONFIGURATION = common dso_local global i32 0, align 4
@CDF_MRW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, i32*)* @cdrom_is_mrw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_is_mrw(%struct.cdrom_device_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdrom_device_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.packet_command, align 8
  %7 = alloca %struct.mrw_feature_desc*, align 8
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %12 = load i32, i32* @CGC_DATA_READ, align 4
  %13 = call i32 @init_cdrom_command(%struct.packet_command* %6, i8* %11, i32 16, i32 %12)
  %14 = load i32, i32* @GPCMD_GET_CONFIGURATION, align 4
  %15 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %14, i32* %17, align 4
  %18 = load i64, i64* @CDF_MRW, align 8
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 %19, i32* %22, align 4
  %23 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 8
  store i32 16, i32* %25, align 4
  %26 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %6, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %28 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.cdrom_device_info*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info*, %struct.packet_command*)** %30, align 8
  %32 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %33 = call i32 %31(%struct.cdrom_device_info* %32, %struct.packet_command* %6)
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %2
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 4
  %39 = bitcast i8* %38 to %struct.mrw_feature_desc*
  store %struct.mrw_feature_desc* %39, %struct.mrw_feature_desc** %7, align 8
  %40 = load %struct.mrw_feature_desc*, %struct.mrw_feature_desc** %7, align 8
  %41 = getelementptr inbounds %struct.mrw_feature_desc, %struct.mrw_feature_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @be16_to_cpu(i32 %42)
  %44 = load i64, i64* @CDF_MRW, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %59

47:                                               ; preds = %37
  %48 = load %struct.mrw_feature_desc*, %struct.mrw_feature_desc** %7, align 8
  %49 = getelementptr inbounds %struct.mrw_feature_desc, %struct.mrw_feature_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %4, align 8
  %53 = call i32 @cdrom_mrw_probe_pc(%struct.cdrom_device_info* %52)
  store i32 %53, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32*, i32** %5, align 8
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %46, %35
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @init_cdrom_command(%struct.packet_command*, i8*, i32, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @cdrom_mrw_probe_pc(%struct.cdrom_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
