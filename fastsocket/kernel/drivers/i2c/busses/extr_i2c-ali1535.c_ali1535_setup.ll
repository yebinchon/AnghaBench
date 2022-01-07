; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1535.c_ali1535_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SMBBA = common dso_local global i32 0, align 4
@ali1535_smba = common dso_local global i32 0, align 4
@ALI1535_SMB_IOSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"ALI1535_smb region uninitialized - upgrade BIOS?\0A\00", align 1
@ali1535_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ALI1535_smb region 0x%x already in use!\0A\00", align 1
@SMBCFG = common dso_local global i32 0, align 4
@ALI1535_SMBIO_EN = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"SMB device not enabled - upgrade BIOS?\0A\00", align 1
@SMBHSTCFG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"SMBus controller not enabled - upgrade BIOS?\0A\00", align 1
@SMBCLK = common dso_local global i32 0, align 4
@SMBREV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"SMBREV = 0x%X\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ALI1535_smba = 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @ali1535_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1535_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = load i32, i32* @SMBBA, align 4
  %10 = call i32 @pci_read_config_word(%struct.pci_dev* %8, i32 %9, i32* @ali1535_smba)
  %11 = load i32, i32* @ALI1535_SMB_IOSIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = xor i32 %12, -1
  %14 = and i32 65535, %13
  %15 = load i32, i32* @ali1535_smba, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @ali1535_smba, align 4
  %17 = load i32, i32* @ali1535_smba, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 0
  %22 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %84

23:                                               ; preds = %1
  %24 = load i32, i32* @ali1535_smba, align 4
  %25 = load i32, i32* @ALI1535_SMB_IOSIZE, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ali1535_driver, i32 0, i32 0), align 4
  %27 = call i32 @acpi_check_region(i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %84

31:                                               ; preds = %23
  %32 = load i32, i32* @ali1535_smba, align 4
  %33 = load i32, i32* @ALI1535_SMB_IOSIZE, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ali1535_driver, i32 0, i32 0), align 4
  %35 = call i32 @request_region(i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = load i32, i32* @ali1535_smba, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %84

42:                                               ; preds = %31
  %43 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %44 = load i32, i32* @SMBCFG, align 4
  %45 = call i32 @pci_read_config_byte(%struct.pci_dev* %43, i32 %44, i8* %5)
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @ALI1535_SMBIO_EN, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %86

56:                                               ; preds = %42
  %57 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %58 = load i32, i32* @SMBHSTCFG, align 4
  %59 = call i32 @pci_read_config_byte(%struct.pci_dev* %57, i32 %58, i8* %5)
  %60 = load i8, i8* %5, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %86

68:                                               ; preds = %56
  %69 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %70 = load i32, i32* @SMBCLK, align 4
  %71 = call i32 @pci_write_config_byte(%struct.pci_dev* %69, i32 %70, i32 32)
  %72 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %73 = load i32, i32* @SMBREV, align 4
  %74 = call i32 @pci_read_config_byte(%struct.pci_dev* %72, i32 %73, i8* %5)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i8, i8* %5, align 1
  %78 = zext i8 %77 to i32
  %79 = call i32 @dev_dbg(i32* %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %78)
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %80, i32 0, i32 0
  %82 = load i32, i32* @ali1535_smba, align 4
  %83 = call i32 @dev_dbg(i32* %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %68, %37, %30, %19
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %91

86:                                               ; preds = %64, %52
  %87 = load i32, i32* @ali1535_smba, align 4
  %88 = load i32, i32* @ALI1535_SMB_IOSIZE, align 4
  %89 = call i32 @release_region(i32 %87, i32 %88)
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %84
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @acpi_check_region(i32, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
