; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_ucc_uart_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ucc_uart.c_ucc_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.of_device = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }
%struct.uart_qe_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32, %struct.device_node* }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32, i32*, i32*, i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i32, i64, i32, i32, i32, i32, i64 }
%struct.resource = type { i64 }
%struct.qe_firmware_info = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"soft-uart\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"using Soft-UART mode\0A\00", align 1
@soft_uart = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Soft-UART\00", align 1
@firmware_loaded = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown CPU model\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"fsl_qe_ucode_uart_%u_%u%u.bin\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"waiting for firmware %s\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@uart_firmware_cont = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"could not load firmware %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"can't allocate QE port structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"missing 'reg' property in device tree\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"invalid 'reg' property in device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"cell-index\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"UCC is unspecified in device tree\0A\00", align 1
@UCC_MAX_NUM = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"no support for UCC%u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"rx-clock-name\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"missing rx-clock-name in device tree\0A\00", align 1
@QE_BRG1 = common dso_local global i64 0, align 8
@QE_BRG16 = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [38 x i8] c"rx-clock-name must be a BRG for UART\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"tx-clock-name\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"missing tx-clock-name in device tree\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"tx-clock-name must be a BRG for UART\0A\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"port-number\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"missing port-number in device tree\0A\00", align 1
@UCC_MAX_UART = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [26 x i8] c"port-number must be 0-%u\0A\00", align 1
@NO_IRQ = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [29 x i8] c"could not map IRQ for UCC%u\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"fsl,qe\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"qe\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"could not find 'qe' node\0A\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"brg-frequency\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"missing brg-frequency in device tree\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"bus-frequency\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"missing QE bus-frequency in device tree\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"invalid QE bus-frequency in device tree\0A\00", align 1
@qe_uart_pops = common dso_local global i32 0, align 4
@UPIO_MEM = common dso_local global i32 0, align 4
@TX_NUM_FIFO = common dso_local global i32 0, align 4
@TX_BUF_SIZE = common dso_local global i32 0, align 4
@RX_NUM_FIFO = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@UCC_WAIT_CLOSING = common dso_local global i32 0, align 4
@UPF_BOOT_AUTOCONF = common dso_local global i32 0, align 4
@UPF_IOREMAP = common dso_local global i32 0, align 4
@ucc_uart_driver = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [28 x i8] c"could not add /dev/ttyQE%u\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"UCC%u assigned to /dev/ttyQE%u\0A\00", align 1
@.str.34 = private unnamed_addr constant [47 x i8] c"mknod command is 'mknod /dev/ttyQE%u c %u %u'\0A\00", align 1
@SERIAL_QE_MAJOR = common dso_local global i32 0, align 4
@SERIAL_QE_MINOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.of_device*, %struct.of_device_id*)* @ucc_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucc_uart_probe(%struct.of_device* %0, %struct.of_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.uart_qe_port*, align 8
  %10 = alloca %struct.resource, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qe_firmware_info*, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.of_device* %0, %struct.of_device** %4, align 8
  store %struct.of_device_id* %1, %struct.of_device_id** %5, align 8
  %17 = load %struct.of_device*, %struct.of_device** %4, align 8
  %18 = getelementptr inbounds %struct.of_device, %struct.of_device* %17, i32 0, i32 1
  %19 = load %struct.device_node*, %struct.device_node** %18, align 8
  store %struct.device_node* %19, %struct.device_node** %6, align 8
  store %struct.uart_qe_port* null, %struct.uart_qe_port** %9, align 8
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i64 @of_find_property(%struct.device_node* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.of_device*, %struct.of_device** %4, align 8
  %25 = getelementptr inbounds %struct.of_device, %struct.of_device* %24, i32 0, i32 0
  %26 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @soft_uart, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* @soft_uart, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %27
  %31 = call %struct.qe_firmware_info* (...) @qe_get_firmware_info()
  store %struct.qe_firmware_info* %31, %struct.qe_firmware_info** %12, align 8
  %32 = load %struct.qe_firmware_info*, %struct.qe_firmware_info** %12, align 8
  %33 = icmp ne %struct.qe_firmware_info* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.qe_firmware_info*, %struct.qe_firmware_info** %12, align 8
  %36 = getelementptr inbounds %struct.qe_firmware_info, %struct.qe_firmware_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strstr(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* @firmware_loaded, align 4
  br label %80

41:                                               ; preds = %34, %30
  %42 = call i32 @soc_info(i32* %15, i32* %16)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load %struct.of_device*, %struct.of_device** %4, align 8
  %47 = getelementptr inbounds %struct.of_device, %struct.of_device* %46, i32 0, i32 0
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %510

51:                                               ; preds = %41
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @sprintf(i8* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  %57 = load %struct.of_device*, %struct.of_device** %4, align 8
  %58 = getelementptr inbounds %struct.of_device, %struct.of_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %60 = call i32 (i32*, i8*, ...) @dev_info(i32* %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %64 = load %struct.of_device*, %struct.of_device** %4, align 8
  %65 = getelementptr inbounds %struct.of_device, %struct.of_device* %64, i32 0, i32 0
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = load %struct.of_device*, %struct.of_device** %4, align 8
  %68 = getelementptr inbounds %struct.of_device, %struct.of_device* %67, i32 0, i32 0
  %69 = load i32, i32* @uart_firmware_cont, align 4
  %70 = call i32 @request_firmware_nowait(i32 %61, i32 %62, i8* %63, i32* %65, i32 %66, i32* %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %51
  %74 = load %struct.of_device*, %struct.of_device** %4, align 8
  %75 = getelementptr inbounds %struct.of_device, %struct.of_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %510

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %79, %40
  br label %81

81:                                               ; preds = %80, %27
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.uart_qe_port* @kzalloc(i32 160, i32 %82)
  store %struct.uart_qe_port* %83, %struct.uart_qe_port** %9, align 8
  %84 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %85 = icmp ne %struct.uart_qe_port* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load %struct.of_device*, %struct.of_device** %4, align 8
  %88 = getelementptr inbounds %struct.of_device, %struct.of_device* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %510

92:                                               ; preds = %81
  %93 = load %struct.device_node*, %struct.device_node** %6, align 8
  %94 = call i32 @of_address_to_resource(%struct.device_node* %93, i32 0, %struct.resource* %10)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.of_device*, %struct.of_device** %4, align 8
  %99 = getelementptr inbounds %struct.of_device, %struct.of_device* %98, i32 0, i32 0
  %100 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %101 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %102 = call i32 @kfree(%struct.uart_qe_port* %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %510

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = load %struct.of_device*, %struct.of_device** %4, align 8
  %110 = getelementptr inbounds %struct.of_device, %struct.of_device* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %112 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %113 = call i32 @kfree(%struct.uart_qe_port* %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %510

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %120 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 9
  store i64 %118, i64* %121, align 8
  %122 = load %struct.device_node*, %struct.device_node** %6, align 8
  %123 = call i8* @of_get_property(%struct.device_node* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32* null)
  %124 = bitcast i8* %123 to i32*
  store i32* %124, i32** %7, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %142, label %127

127:                                              ; preds = %116
  %128 = load %struct.device_node*, %struct.device_node** %6, align 8
  %129 = call i8* @of_get_property(%struct.device_node* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32* null)
  %130 = bitcast i8* %129 to i32*
  store i32* %130, i32** %7, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %141, label %133

133:                                              ; preds = %127
  %134 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %135 = call i32 @kfree(%struct.uart_qe_port* %134)
  %136 = load %struct.of_device*, %struct.of_device** %4, align 8
  %137 = getelementptr inbounds %struct.of_device, %struct.of_device* %136, i32 0, i32 0
  %138 = call i32 (i32*, i8*, ...) @dev_err(i32* %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %510

141:                                              ; preds = %127
  br label %142

142:                                              ; preds = %141, %116
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ult i32 %144, 1
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @UCC_MAX_NUM, align 4
  %150 = icmp ugt i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %146, %142
  %152 = load %struct.of_device*, %struct.of_device** %4, align 8
  %153 = getelementptr inbounds %struct.of_device, %struct.of_device* %152, i32 0, i32 0
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32*, i8*, ...) @dev_err(i32* %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %155)
  %157 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %158 = call i32 @kfree(%struct.uart_qe_port* %157)
  %159 = load i32, i32* @ENODEV, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %510

161:                                              ; preds = %146
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %162, align 4
  %164 = sub i32 %163, 1
  %165 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %166 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  %167 = load %struct.device_node*, %struct.device_node** %6, align 8
  %168 = call i8* @of_get_property(%struct.device_node* %167, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32* null)
  store i8* %168, i8** %8, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %179, label %171

171:                                              ; preds = %161
  %172 = load %struct.of_device*, %struct.of_device** %4, align 8
  %173 = getelementptr inbounds %struct.of_device, %struct.of_device* %172, i32 0, i32 0
  %174 = call i32 (i32*, i8*, ...) @dev_err(i32* %173, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  %175 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %176 = call i32 @kfree(%struct.uart_qe_port* %175)
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %510

179:                                              ; preds = %161
  %180 = load i8*, i8** %8, align 8
  %181 = call i8* @qe_clock_source(i8* %180)
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %184 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i64 %182, i64* %185, align 8
  %186 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %187 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @QE_BRG1, align 8
  %191 = icmp slt i64 %189, %190
  br i1 %191, label %199, label %192

192:                                              ; preds = %179
  %193 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %194 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @QE_BRG16, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %192, %179
  %200 = load %struct.of_device*, %struct.of_device** %4, align 8
  %201 = getelementptr inbounds %struct.of_device, %struct.of_device* %200, i32 0, i32 0
  %202 = call i32 (i32*, i8*, ...) @dev_err(i32* %201, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  %203 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %204 = call i32 @kfree(%struct.uart_qe_port* %203)
  %205 = load i32, i32* @ENODEV, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %510

207:                                              ; preds = %192
  %208 = load %struct.device_node*, %struct.device_node** %6, align 8
  %209 = call i8* @of_get_property(%struct.device_node* %208, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32* null)
  store i8* %209, i8** %8, align 8
  %210 = load i8*, i8** %8, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %220, label %212

212:                                              ; preds = %207
  %213 = load %struct.of_device*, %struct.of_device** %4, align 8
  %214 = getelementptr inbounds %struct.of_device, %struct.of_device* %213, i32 0, i32 0
  %215 = call i32 (i32*, i8*, ...) @dev_err(i32* %214, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0))
  %216 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %217 = call i32 @kfree(%struct.uart_qe_port* %216)
  %218 = load i32, i32* @ENODEV, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %510

220:                                              ; preds = %207
  %221 = load i8*, i8** %8, align 8
  %222 = call i8* @qe_clock_source(i8* %221)
  %223 = ptrtoint i8* %222 to i64
  %224 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %225 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  store i64 %223, i64* %226, align 8
  %227 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %228 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @QE_BRG1, align 8
  %232 = icmp slt i64 %230, %231
  br i1 %232, label %240, label %233

233:                                              ; preds = %220
  %234 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %235 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @QE_BRG16, align 8
  %239 = icmp sgt i64 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %233, %220
  %241 = load %struct.of_device*, %struct.of_device** %4, align 8
  %242 = getelementptr inbounds %struct.of_device, %struct.of_device* %241, i32 0, i32 0
  %243 = call i32 (i32*, i8*, ...) @dev_err(i32* %242, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0))
  %244 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %245 = call i32 @kfree(%struct.uart_qe_port* %244)
  %246 = load i32, i32* @ENODEV, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %3, align 4
  br label %510

248:                                              ; preds = %233
  %249 = load %struct.device_node*, %struct.device_node** %6, align 8
  %250 = call i8* @of_get_property(%struct.device_node* %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32* null)
  %251 = bitcast i8* %250 to i32*
  store i32* %251, i32** %7, align 8
  %252 = load i32*, i32** %7, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %262, label %254

254:                                              ; preds = %248
  %255 = load %struct.of_device*, %struct.of_device** %4, align 8
  %256 = getelementptr inbounds %struct.of_device, %struct.of_device* %255, i32 0, i32 0
  %257 = call i32 (i32*, i8*, ...) @dev_err(i32* %256, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i64 0, i64 0))
  %258 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %259 = call i32 @kfree(%struct.uart_qe_port* %258)
  %260 = load i32, i32* @EINVAL, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %3, align 4
  br label %510

262:                                              ; preds = %248
  %263 = load i32*, i32** %7, align 8
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %266 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  store i32 %264, i32* %267, align 8
  %268 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %269 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @UCC_MAX_UART, align 4
  %273 = icmp uge i32 %271, %272
  br i1 %273, label %274, label %284

274:                                              ; preds = %262
  %275 = load %struct.of_device*, %struct.of_device** %4, align 8
  %276 = getelementptr inbounds %struct.of_device, %struct.of_device* %275, i32 0, i32 0
  %277 = load i32, i32* @UCC_MAX_UART, align 4
  %278 = sub nsw i32 %277, 1
  %279 = call i32 (i32*, i8*, ...) @dev_err(i32* %276, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 %278)
  %280 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %281 = call i32 @kfree(%struct.uart_qe_port* %280)
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %3, align 4
  br label %510

284:                                              ; preds = %262
  %285 = load %struct.device_node*, %struct.device_node** %6, align 8
  %286 = call i64 @irq_of_parse_and_map(%struct.device_node* %285, i32 0)
  %287 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %288 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 1
  store i64 %286, i64* %289, align 8
  %290 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %291 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @NO_IRQ, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %308

296:                                              ; preds = %284
  %297 = load %struct.of_device*, %struct.of_device** %4, align 8
  %298 = getelementptr inbounds %struct.of_device, %struct.of_device* %297, i32 0, i32 0
  %299 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %300 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = add i32 %301, 1
  %303 = call i32 (i32*, i8*, ...) @dev_err(i32* %298, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %302)
  %304 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %305 = call i32 @kfree(%struct.uart_qe_port* %304)
  %306 = load i32, i32* @EINVAL, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %3, align 4
  br label %510

308:                                              ; preds = %284
  %309 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  store %struct.device_node* %309, %struct.device_node** %6, align 8
  %310 = load %struct.device_node*, %struct.device_node** %6, align 8
  %311 = icmp ne %struct.device_node* %310, null
  br i1 %311, label %325, label %312

312:                                              ; preds = %308
  %313 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  store %struct.device_node* %313, %struct.device_node** %6, align 8
  %314 = load %struct.device_node*, %struct.device_node** %6, align 8
  %315 = icmp ne %struct.device_node* %314, null
  br i1 %315, label %324, label %316

316:                                              ; preds = %312
  %317 = load %struct.of_device*, %struct.of_device** %4, align 8
  %318 = getelementptr inbounds %struct.of_device, %struct.of_device* %317, i32 0, i32 0
  %319 = call i32 (i32*, i8*, ...) @dev_err(i32* %318, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0))
  %320 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %321 = call i32 @kfree(%struct.uart_qe_port* %320)
  %322 = load i32, i32* @EINVAL, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %3, align 4
  br label %510

324:                                              ; preds = %312
  br label %325

325:                                              ; preds = %324, %308
  %326 = load %struct.device_node*, %struct.device_node** %6, align 8
  %327 = call i8* @of_get_property(%struct.device_node* %326, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32* null)
  %328 = bitcast i8* %327 to i32*
  store i32* %328, i32** %7, align 8
  %329 = load i32*, i32** %7, align 8
  %330 = icmp ne i32* %329, null
  br i1 %330, label %339, label %331

331:                                              ; preds = %325
  %332 = load %struct.of_device*, %struct.of_device** %4, align 8
  %333 = getelementptr inbounds %struct.of_device, %struct.of_device* %332, i32 0, i32 0
  %334 = call i32 (i32*, i8*, ...) @dev_err(i32* %333, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0))
  %335 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %336 = call i32 @kfree(%struct.uart_qe_port* %335)
  %337 = load i32, i32* @EINVAL, align 4
  %338 = sub nsw i32 0, %337
  store i32 %338, i32* %3, align 4
  br label %510

339:                                              ; preds = %325
  %340 = load i32*, i32** %7, align 8
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %349

343:                                              ; preds = %339
  %344 = load i32*, i32** %7, align 8
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %347 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 2
  store i32 %345, i32* %348, align 8
  br label %383

349:                                              ; preds = %339
  %350 = load %struct.device_node*, %struct.device_node** %6, align 8
  %351 = call i8* @of_get_property(%struct.device_node* %350, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i32* null)
  %352 = bitcast i8* %351 to i32*
  store i32* %352, i32** %7, align 8
  %353 = load i32*, i32** %7, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %363, label %355

355:                                              ; preds = %349
  %356 = load %struct.of_device*, %struct.of_device** %4, align 8
  %357 = getelementptr inbounds %struct.of_device, %struct.of_device* %356, i32 0, i32 0
  %358 = call i32 (i32*, i8*, ...) @dev_err(i32* %357, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0))
  %359 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %360 = call i32 @kfree(%struct.uart_qe_port* %359)
  %361 = load i32, i32* @EINVAL, align 4
  %362 = sub nsw i32 0, %361
  store i32 %362, i32* %3, align 4
  br label %510

363:                                              ; preds = %349
  %364 = load i32*, i32** %7, align 8
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %363
  %368 = load i32*, i32** %7, align 8
  %369 = load i32, i32* %368, align 4
  %370 = udiv i32 %369, 2
  %371 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %372 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %371, i32 0, i32 1
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 2
  store i32 %370, i32* %373, align 8
  br label %382

374:                                              ; preds = %363
  %375 = load %struct.of_device*, %struct.of_device** %4, align 8
  %376 = getelementptr inbounds %struct.of_device, %struct.of_device* %375, i32 0, i32 0
  %377 = call i32 (i32*, i8*, ...) @dev_err(i32* %376, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  %378 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %379 = call i32 @kfree(%struct.uart_qe_port* %378)
  %380 = load i32, i32* @EINVAL, align 4
  %381 = sub nsw i32 0, %380
  store i32 %381, i32* %3, align 4
  br label %510

382:                                              ; preds = %367
  br label %383

383:                                              ; preds = %382, %343
  %384 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %385 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 8
  %387 = call i32 @spin_lock_init(i32* %386)
  %388 = load %struct.device_node*, %struct.device_node** %6, align 8
  %389 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %390 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %389, i32 0, i32 8
  store %struct.device_node* %388, %struct.device_node** %390, align 8
  %391 = load %struct.of_device*, %struct.of_device** %4, align 8
  %392 = getelementptr inbounds %struct.of_device, %struct.of_device* %391, i32 0, i32 0
  %393 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %394 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 7
  store i32* %392, i32** %395, align 8
  %396 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %397 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 6
  store i32* @qe_uart_pops, i32** %398, align 8
  %399 = load i32, i32* @UPIO_MEM, align 4
  %400 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %401 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 5
  store i32 %399, i32* %402, align 4
  %403 = load i32, i32* @TX_NUM_FIFO, align 4
  %404 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %405 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %404, i32 0, i32 3
  store i32 %403, i32* %405, align 8
  %406 = load i32, i32* @TX_BUF_SIZE, align 4
  %407 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %408 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %407, i32 0, i32 7
  store i32 %406, i32* %408, align 8
  %409 = load i32, i32* @RX_NUM_FIFO, align 4
  %410 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %411 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %410, i32 0, i32 4
  store i32 %409, i32* %411, align 4
  %412 = load i32, i32* @RX_BUF_SIZE, align 4
  %413 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %414 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %413, i32 0, i32 6
  store i32 %412, i32* %414, align 4
  %415 = load i32, i32* @UCC_WAIT_CLOSING, align 4
  %416 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %417 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %416, i32 0, i32 5
  store i32 %415, i32* %417, align 8
  %418 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %419 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 3
  store i32 512, i32* %420, align 4
  %421 = load i32, i32* @UPF_BOOT_AUTOCONF, align 4
  %422 = load i32, i32* @UPF_IOREMAP, align 4
  %423 = or i32 %421, %422
  %424 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %425 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 4
  store i32 %423, i32* %426, align 8
  %427 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %428 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %431 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 2
  store i32 %429, i32* %432, align 8
  %433 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %436 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 8
  store i64 %434, i64* %437, align 8
  %438 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %439 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %443 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 3
  store i64 %441, i64* %444, align 8
  %445 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %446 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %449 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 7
  store i32 %447, i32* %450, align 4
  %451 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %452 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %455 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %454, i32 0, i32 2
  %456 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %455, i32 0, i32 6
  store i32 %453, i32* %456, align 8
  %457 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %458 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %458, i32 0, i32 4
  store i32 1, i32* %459, align 8
  %460 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %461 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 5
  store i32 1, i32* %462, align 4
  %463 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %464 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %463, i32 0, i32 1
  %465 = call i32 @uart_add_one_port(i32* @ucc_uart_driver, %struct.TYPE_4__* %464)
  store i32 %465, i32* %11, align 4
  %466 = load i32, i32* %11, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %383
  %469 = load %struct.of_device*, %struct.of_device** %4, align 8
  %470 = getelementptr inbounds %struct.of_device, %struct.of_device* %469, i32 0, i32 0
  %471 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %472 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %471, i32 0, i32 1
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = call i32 (i32*, i8*, ...) @dev_err(i32* %470, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i32 %474)
  %476 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %477 = call i32 @kfree(%struct.uart_qe_port* %476)
  %478 = load i32, i32* %11, align 4
  store i32 %478, i32* %3, align 4
  br label %510

479:                                              ; preds = %383
  %480 = load %struct.of_device*, %struct.of_device** %4, align 8
  %481 = getelementptr inbounds %struct.of_device, %struct.of_device* %480, i32 0, i32 0
  %482 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %483 = call i32 @dev_set_drvdata(i32* %481, %struct.uart_qe_port* %482)
  %484 = load %struct.of_device*, %struct.of_device** %4, align 8
  %485 = getelementptr inbounds %struct.of_device, %struct.of_device* %484, i32 0, i32 0
  %486 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %487 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = add i32 %488, 1
  %490 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %491 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %490, i32 0, i32 1
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = call i32 (i32*, i8*, ...) @dev_info(i32* %485, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i32 %489, i32 %493)
  %495 = load %struct.of_device*, %struct.of_device** %4, align 8
  %496 = getelementptr inbounds %struct.of_device, %struct.of_device* %495, i32 0, i32 0
  %497 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %498 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = load i32, i32* @SERIAL_QE_MAJOR, align 4
  %502 = load i64, i64* @SERIAL_QE_MINOR, align 8
  %503 = load %struct.uart_qe_port*, %struct.uart_qe_port** %9, align 8
  %504 = getelementptr inbounds %struct.uart_qe_port, %struct.uart_qe_port* %503, i32 0, i32 1
  %505 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = zext i32 %506 to i64
  %508 = add nsw i64 %502, %507
  %509 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %496, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.34, i64 0, i64 0), i32 %500, i32 %501, i64 %508)
  store i32 0, i32* %3, align 4
  br label %510

510:                                              ; preds = %479, %468, %374, %355, %331, %316, %296, %274, %254, %240, %212, %199, %171, %151, %133, %108, %97, %86, %73, %45
  %511 = load i32, i32* %3, align 4
  ret i32 %511
}

declare dso_local i64 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.qe_firmware_info* @qe_get_firmware_info(...) #1

declare dso_local i64 @strstr(i32, i8*) #1

declare dso_local i32 @soc_info(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local %struct.uart_qe_port* @kzalloc(i32, i32) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @kfree(%struct.uart_qe_port*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @qe_clock_source(i8*) #1

declare dso_local i64 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.uart_qe_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
