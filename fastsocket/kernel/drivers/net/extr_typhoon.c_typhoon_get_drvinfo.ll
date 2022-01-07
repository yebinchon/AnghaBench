; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_get_drvinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_typhoon.c_typhoon_get_drvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_drvinfo = type { i32, i32, i32, i32 }
%struct.typhoon = type { i64, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.cmd_desc = type { i32 }
%struct.resp_desc = type { i32 }

@Sleeping = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Sleep image\00", align 1
@TYPHOON_CMD_READ_VERSIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Unknown runtime\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%02x.%03x.%03x\00", align 1
@DRV_MODULE_NAME = common dso_local global i8* null, align 8
@DRV_MODULE_VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_drvinfo*)* @typhoon_get_drvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @typhoon_get_drvinfo(%struct.net_device* %0, %struct.ethtool_drvinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_drvinfo*, align 8
  %5 = alloca %struct.typhoon*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.cmd_desc, align 4
  %8 = alloca [3 x %struct.resp_desc], align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_drvinfo* %1, %struct.ethtool_drvinfo** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.typhoon* @netdev_priv(%struct.net_device* %10)
  store %struct.typhoon* %11, %struct.typhoon** %5, align 8
  %12 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %13 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %12, i32 0, i32 1
  %14 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  store %struct.pci_dev* %14, %struct.pci_dev** %6, align 8
  %15 = call i32 (...) @smp_rmb()
  %16 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %17 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @Sleeping, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @strcpy(i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %55

26:                                               ; preds = %2
  %27 = load i32, i32* @TYPHOON_CMD_READ_VERSIONS, align 4
  %28 = call i32 @INIT_COMMAND_WITH_RESPONSE(%struct.cmd_desc* %7, i32 %27)
  %29 = load %struct.typhoon*, %struct.typhoon** %5, align 8
  %30 = getelementptr inbounds [3 x %struct.resp_desc], [3 x %struct.resp_desc]* %8, i64 0, i64 0
  %31 = call i64 @typhoon_issue_command(%struct.typhoon* %29, i32 1, %struct.cmd_desc* %7, i32 3, %struct.resp_desc* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcpy(i32 %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %54

38:                                               ; preds = %26
  %39 = getelementptr inbounds [3 x %struct.resp_desc], [3 x %struct.resp_desc]* %8, i64 0, i64 0
  %40 = getelementptr inbounds %struct.resp_desc, %struct.resp_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %44 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = ashr i32 %46, 24
  %48 = load i32, i32* %9, align 4
  %49 = ashr i32 %48, 12
  %50 = and i32 %49, 4095
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 4095
  %53 = call i32 @snprintf(i32 %45, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %50, i32 %52)
  br label %54

54:                                               ; preds = %38, %33
  br label %55

55:                                               ; preds = %54, %21
  %56 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** @DRV_MODULE_NAME, align 8
  %60 = call i32 @strcpy(i32 %58, i8* %59)
  %61 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** @DRV_MODULE_VERSION, align 8
  %65 = call i32 @strcpy(i32 %63, i8* %64)
  %66 = load %struct.ethtool_drvinfo*, %struct.ethtool_drvinfo** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_drvinfo, %struct.ethtool_drvinfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %70 = call i8* @pci_name(%struct.pci_dev* %69)
  %71 = call i32 @strcpy(i32 %68, i8* %70)
  ret void
}

declare dso_local %struct.typhoon* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @INIT_COMMAND_WITH_RESPONSE(%struct.cmd_desc*, i32) #1

declare dso_local i64 @typhoon_issue_command(%struct.typhoon*, i32, %struct.cmd_desc*, i32, %struct.resp_desc*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
