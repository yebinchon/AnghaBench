; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i64 }
%struct.at76_priv = type { i32, i32 }
%struct.fwentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.usb_device = type { i32 }
%struct.mib_fw_version = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@DBG_DEVSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"opmode %d\00", align 1
@OPMODE_HW_CONFIG_MODE = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"cannot handle a device in HW_CONFIG_MODE\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@OPMODE_NORMAL_NIC_WITH_FLASH = common dso_local global i32 0, align 4
@OPMODE_NORMAL_NIC_WITHOUT_FLASH = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"downloading internal firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"error %d downloading internal firmware\0A\00", align 1
@MIB_FW_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"downloading external firmware\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"error %d getting firmware version\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @at76_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at76_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.at76_priv*, align 8
  %8 = alloca %struct.fwentry*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mib_fw_version, align 4
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %15 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = call i32 @interface_to_usbdev(%struct.usb_interface* %18)
  %20 = call %struct.usb_device* @usb_get_dev(i32 %19)
  store %struct.usb_device* %20, %struct.usb_device** %9, align 8
  %21 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %22 = load i32, i32* %13, align 4
  %23 = call %struct.fwentry* @at76_load_firmware(%struct.usb_device* %21, i32 %22)
  store %struct.fwentry* %23, %struct.fwentry** %8, align 8
  %24 = load %struct.fwentry*, %struct.fwentry** %8, align 8
  %25 = icmp ne %struct.fwentry* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %160

29:                                               ; preds = %2
  %30 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %31 = call i32 @at76_get_op_mode(%struct.usb_device* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @DBG_DEVSTART, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @at76_dbg(i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @OPMODE_HW_CONFIG_MODE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %41 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %40, i32 0, i32 0
  %42 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %39, i32* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %160

45:                                               ; preds = %29
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @OPMODE_NORMAL_NIC_WITH_FLASH, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @OPMODE_NORMAL_NIC_WITHOUT_FLASH, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %49
  %54 = load i32, i32* @KERN_DEBUG, align 4
  %55 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %56 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %55, i32 0, i32 0
  %57 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %54, i32* %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %59 = load %struct.fwentry*, %struct.fwentry** %8, align 8
  %60 = call i32 @at76_load_internal_fw(%struct.usb_device* %58, %struct.fwentry* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = load i32, i32* @KERN_ERR, align 4
  %65 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %64, i32* %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %160

69:                                               ; preds = %53
  %70 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %71 = call i32 @usb_put_dev(%struct.usb_device* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %164

73:                                               ; preds = %49, %45
  %74 = load %struct.fwentry*, %struct.fwentry** %8, align 8
  %75 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %73
  %80 = load %struct.fwentry*, %struct.fwentry** %8, align 8
  %81 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %83, 100
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @OPMODE_NORMAL_NIC_WITH_FLASH, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %85, %79, %73
  %90 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %91 = load i32, i32* @MIB_FW_VERSION, align 4
  %92 = call i32 @at76_get_mib(%struct.usb_device* %90, i32 %91, %struct.mib_fw_version* %12, i32 8)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.mib_fw_version, %struct.mib_fw_version* %12, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.mib_fw_version, %struct.mib_fw_version* %12, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %97, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95, %89
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %102, %95
  br label %105

104:                                              ; preds = %85
  store i32 1, i32* %11, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load i32, i32* @KERN_DEBUG, align 4
  %110 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %111 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %110, i32 0, i32 0
  %112 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %109, i32* %111, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %114 = load %struct.fwentry*, %struct.fwentry** %8, align 8
  %115 = call i32 @at76_load_external_fw(%struct.usb_device* %113, %struct.fwentry* %114)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %108
  br label %160

119:                                              ; preds = %108
  %120 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %121 = load i32, i32* @MIB_FW_VERSION, align 4
  %122 = call i32 @at76_get_mib(%struct.usb_device* %120, i32 %121, %struct.mib_fw_version* %12, i32 8)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, i32* @KERN_ERR, align 4
  %127 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %128 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %127, i32 0, i32 0
  %129 = load i32, i32* %6, align 4
  %130 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %126, i32* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  br label %160

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131, %105
  %133 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %134 = call %struct.at76_priv* @at76_alloc_new_device(%struct.usb_device* %133)
  store %struct.at76_priv* %134, %struct.at76_priv** %7, align 8
  %135 = load %struct.at76_priv*, %struct.at76_priv** %7, align 8
  %136 = icmp ne %struct.at76_priv* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %160

140:                                              ; preds = %132
  %141 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %142 = load %struct.at76_priv*, %struct.at76_priv** %7, align 8
  %143 = call i32 @usb_set_intfdata(%struct.usb_interface* %141, %struct.at76_priv* %142)
  %144 = load %struct.at76_priv*, %struct.at76_priv** %7, align 8
  %145 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %144, i32 0, i32 1
  %146 = call i32 @memcpy(i32* %145, %struct.mib_fw_version* %12, i32 8)
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.at76_priv*, %struct.at76_priv** %7, align 8
  %149 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load %struct.at76_priv*, %struct.at76_priv** %7, align 8
  %151 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %152 = call i32 @at76_init_new_device(%struct.at76_priv* %150, %struct.usb_interface* %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %140
  %156 = load %struct.at76_priv*, %struct.at76_priv** %7, align 8
  %157 = call i32 @at76_delete_device(%struct.at76_priv* %156)
  br label %158

158:                                              ; preds = %155, %140
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %164

160:                                              ; preds = %137, %125, %118, %63, %38, %26
  %161 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %162 = call i32 @usb_put_dev(%struct.usb_device* %161)
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %158, %69
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.usb_device* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.fwentry* @at76_load_firmware(%struct.usb_device*, i32) #1

declare dso_local i32 @at76_get_op_mode(%struct.usb_device*) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, ...) #1

declare dso_local i32 @at76_load_internal_fw(%struct.usb_device*, %struct.fwentry*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

declare dso_local i32 @at76_get_mib(%struct.usb_device*, i32, %struct.mib_fw_version*, i32) #1

declare dso_local i32 @at76_load_external_fw(%struct.usb_device*, %struct.fwentry*) #1

declare dso_local %struct.at76_priv* @at76_alloc_new_device(%struct.usb_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.at76_priv*) #1

declare dso_local i32 @memcpy(i32*, %struct.mib_fw_version*, i32) #1

declare dso_local i32 @at76_init_new_device(%struct.at76_priv*, %struct.usb_interface*) #1

declare dso_local i32 @at76_delete_device(%struct.at76_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
