; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_check_firmware_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_check_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm3510_state = type { i32 }
%struct.bcm3510_hab_cmd_get_version_info = type { i64, i64, i64, i32 }

@CMD_GET_VERSION_INFO = common dso_local global i32 0, align 4
@MSGID_GET_VERSION_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Version information: 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@BCM3510_DEF_SCRIPT_VERSION = common dso_local global i64 0, align 8
@BCM3510_DEF_CONFIG_VERSION = common dso_local global i64 0, align 8
@BCM3510_DEF_DEMOD_VERSION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"version check failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm3510_state*)* @bcm3510_check_firmware_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_check_firmware_version(%struct.bcm3510_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm3510_state*, align 8
  %4 = alloca %struct.bcm3510_hab_cmd_get_version_info, align 8
  store %struct.bcm3510_state* %0, %struct.bcm3510_state** %3, align 8
  %5 = load %struct.bcm3510_state*, %struct.bcm3510_state** %3, align 8
  %6 = load i32, i32* @CMD_GET_VERSION_INFO, align 4
  %7 = load i32, i32* @MSGID_GET_VERSION_INFO, align 4
  %8 = bitcast %struct.bcm3510_hab_cmd_get_version_info* %4 to i32*
  %9 = call i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state* %5, i32 %6, i32 %7, i32* null, i32 0, i32* %8, i32 32)
  %10 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %4, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %4, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %4, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11, i64 %13, i64 %15, i64 %17)
  %19 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BCM3510_DEF_SCRIPT_VERSION, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BCM3510_DEF_CONFIG_VERSION, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.bcm3510_hab_cmd_get_version_info, %struct.bcm3510_hab_cmd_get_version_info* %4, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BCM3510_DEF_DEMOD_VERSION, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %38

34:                                               ; preds = %28, %23, %1
  %35 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @bcm3510_do_hab_cmd(%struct.bcm3510_state*, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @deb_info(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
