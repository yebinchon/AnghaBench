; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis5595.c_sis5595_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sis5595.c_sis5595_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@blacklist = common dso_local global i32* null, align 8
@PCI_VENDOR_ID_SI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Looked for SIS5595 but found unsupported device %.4x\0A\00", align 1
@ACPI_BASE = common dso_local global i32 0, align 4
@sis5595_base = common dso_local global i32 0, align 4
@force_addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"ACPI base address uninitialized - upgrade BIOS or use force_addr=0xaddr\0A\00", align 1
@SIS5595_EXTENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"ACPI Base address: %04x\0A\00", align 1
@SMB_INDEX = common dso_local global i32 0, align 4
@sis5595_driver = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"SMBus registers 0x%04x-0x%04x already in use!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"forcing ISA address 0x%04X\0A\00", align 1
@PCIBIOS_SUCCESSFUL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"force address failed - not supported?\0A\00", align 1
@SIS5595_ENABLE_REG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"enabling ACPI\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"ACPI enable failed - not supported?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @sis5595_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis5595_setup(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** @blacklist, align 8
  store i32* %11, i32** %6, align 8
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %12
  %17 = load i32, i32* @PCI_VENDOR_ID_SI, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.pci_dev* @pci_get_device(i32 %17, i32 %19, i32* null)
  store %struct.pci_dev* %20, %struct.pci_dev** %8, align 8
  %21 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %22 = icmp ne %struct.pci_dev* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %30 = call i32 @pci_dev_put(%struct.pci_dev* %29)
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %176

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 8
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %39 = load i32, i32* @ACPI_BASE, align 4
  %40 = call i64 @pci_read_config_word(%struct.pci_dev* %38, i32 %39, i32* @sis5595_base)
  %41 = load i32, i32* @sis5595_base, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* @force_addr, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %176

52:                                               ; preds = %43, %37
  %53 = load i32, i32* @force_addr, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @force_addr, align 4
  %57 = load i32, i32* @SIS5595_EXTENT, align 4
  %58 = sub nsw i32 %57, 1
  %59 = xor i32 %58, -1
  %60 = and i32 %56, %59
  store i32 %60, i32* @sis5595_base, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* @sis5595_base, align 4
  %65 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @sis5595_base, align 4
  %67 = load i32, i32* @SMB_INDEX, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis5595_driver, i32 0, i32 0), align 4
  %70 = call i32 @acpi_check_region(i32 %68, i32 2, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %176

75:                                               ; preds = %61
  %76 = load i32, i32* @sis5595_base, align 4
  %77 = load i32, i32* @SMB_INDEX, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sis5595_driver, i32 0, i32 0), align 4
  %80 = call i32 @request_region(i32 %78, i32 2, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %75
  %83 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 0
  %85 = load i32, i32* @sis5595_base, align 4
  %86 = load i32, i32* @SMB_INDEX, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* @sis5595_base, align 4
  %89 = load i32, i32* @SMB_INDEX, align 4
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %91)
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %176

95:                                               ; preds = %75
  %96 = load i32, i32* @force_addr, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %130

98:                                               ; preds = %95
  %99 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load i32, i32* @sis5595_base, align 4
  %102 = call i32 (i32*, i8*, ...) @dev_info(i32* %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %104 = load i32, i32* @ACPI_BASE, align 4
  %105 = load i32, i32* @sis5595_base, align 4
  %106 = call i64 @pci_write_config_word(%struct.pci_dev* %103, i32 %104, i32 %105)
  %107 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %170

110:                                              ; preds = %98
  %111 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %112 = load i32, i32* @ACPI_BASE, align 4
  %113 = call i64 @pci_read_config_word(%struct.pci_dev* %111, i32 %112, i32* %4)
  %114 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %170

117:                                              ; preds = %110
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @SIS5595_EXTENT, align 4
  %120 = sub nsw i32 %119, 1
  %121 = xor i32 %120, -1
  %122 = and i32 %118, %121
  %123 = load i32, i32* @sis5595_base, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %127 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %170

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129, %95
  %131 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %132 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %133 = call i64 @pci_read_config_byte(%struct.pci_dev* %131, i32 %132, i32* %5)
  %134 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %170

137:                                              ; preds = %130
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, 128
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %169

141:                                              ; preds = %137
  %142 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 0
  %144 = call i32 (i32*, i8*, ...) @dev_info(i32* %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %145 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %146 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, 128
  %149 = call i64 @pci_write_config_byte(%struct.pci_dev* %145, i32 %146, i32 %148)
  %150 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %141
  br label %170

153:                                              ; preds = %141
  %154 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %155 = load i32, i32* @SIS5595_ENABLE_REG, align 4
  %156 = call i64 @pci_read_config_byte(%struct.pci_dev* %154, i32 %155, i32* %5)
  %157 = load i64, i64* @PCIBIOS_SUCCESSFUL, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %170

160:                                              ; preds = %153
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, 128
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %166 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %165, i32 0, i32 0
  %167 = call i32 (i32*, i8*, ...) @dev_err(i32* %166, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %170

168:                                              ; preds = %160
  br label %169

169:                                              ; preds = %168, %137
  store i32 0, i32* %2, align 4
  br label %176

170:                                              ; preds = %164, %159, %152, %136, %125, %116, %109
  %171 = load i32, i32* @sis5595_base, align 4
  %172 = load i32, i32* @SMB_INDEX, align 4
  %173 = add nsw i32 %171, %172
  %174 = call i32 @release_region(i32 %173, i32 2)
  %175 = load i32, i32* %7, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %170, %169, %82, %73, %46, %23
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i64 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @acpi_check_region(i32, i32, i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
