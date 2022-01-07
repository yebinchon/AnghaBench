; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_mcs7780.c_mcs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32 }
%struct.net_device = type { i32, i32* }
%struct.mcs_cb = type { i32, i32, i32, i32, %struct.TYPE_11__, i32, %struct.net_device*, %struct.usb_device* }
%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"MCS7780 USB-IrDA bridge found at %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"mcs7780: usb reset configuration failed\0A\00", align 1
@IR_2400 = common dso_local global i32 0, align 4
@IR_9600 = common dso_local global i32 0, align 4
@IR_19200 = common dso_local global i32 0, align 4
@IR_38400 = common dso_local global i32 0, align 4
@IR_57600 = common dso_local global i32 0, align 4
@IR_115200 = common dso_local global i32 0, align 4
@IR_576000 = common dso_local global i32 0, align 4
@IR_1152000 = common dso_local global i32 0, align 4
@IR_4000000 = common dso_local global i32 0, align 4
@qos_mtt_bits = common dso_local global i32 0, align 4
@mcs_speed_work = common dso_local global i32 0, align 4
@mcs_netdev_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"IrDA: Registered MosChip MCS7780 device as %s\0A\00", align 1
@transceiver_type = common dso_local global i32 0, align 4
@sir_tweak = common dso_local global i32 0, align 4
@receive_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @mcs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.mcs_cb*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  store %struct.net_device* null, %struct.net_device** %7, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = call %struct.net_device* @alloc_irdadev(i32 48)
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %138

18:                                               ; preds = %2
  %19 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @IRDA_DEBUG(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 1
  %26 = call i32 @SET_NETDEV_DEV(%struct.net_device* %23, i32* %25)
  %27 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %28 = call i32 @usb_reset_configuration(%struct.usb_device* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = call i32 @IRDA_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %135

33:                                               ; preds = %18
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = call %struct.mcs_cb* @netdev_priv(%struct.net_device* %34)
  store %struct.mcs_cb* %35, %struct.mcs_cb** %8, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %38 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %37, i32 0, i32 7
  store %struct.usb_device* %36, %struct.usb_device** %38, align 8
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %41 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %40, i32 0, i32 6
  store %struct.net_device* %39, %struct.net_device** %41, align 8
  %42 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %43 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %42, i32 0, i32 5
  %44 = call i32 @spin_lock_init(i32* %43)
  %45 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %46 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %45, i32 0, i32 4
  %47 = call i32 @irda_init_max_qos_capabilies(%struct.TYPE_11__* %46)
  %48 = load i32, i32* @IR_2400, align 4
  %49 = load i32, i32* @IR_9600, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @IR_19200, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @IR_38400, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @IR_57600, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @IR_115200, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IR_576000, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IR_1152000, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IR_4000000, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %62, %64
  %66 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %67 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* @qos_mtt_bits, align 4
  %73 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %74 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %72
  store i32 %78, i32* %76, align 8
  %79 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %80 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %79, i32 0, i32 4
  %81 = call i32 @irda_qos_bits_to_value(%struct.TYPE_11__* %80)
  %82 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %83 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %82, i32 0, i32 3
  %84 = load i32, i32* @mcs_speed_work, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.net_device*, %struct.net_device** %7, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  store i32* @mcs_netdev_ops, i32** %87, align 8
  %88 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %89 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %33
  br label %135

93:                                               ; preds = %33
  %94 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %95 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %96 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %95, i32 0, i32 0
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %101 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mcs_find_endpoints(%struct.mcs_cb* %94, i32 %99, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %93
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %135

112:                                              ; preds = %93
  %113 = load %struct.net_device*, %struct.net_device** %7, align 8
  %114 = call i32 @register_netdev(%struct.net_device* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %135

118:                                              ; preds = %112
  %119 = load %struct.net_device*, %struct.net_device** %7, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @IRDA_DEBUG(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @transceiver_type, align 4
  %124 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %125 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* @sir_tweak, align 4
  %127 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %128 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @receive_mode, align 4
  %130 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %131 = getelementptr inbounds %struct.mcs_cb, %struct.mcs_cb* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %133 = load %struct.mcs_cb*, %struct.mcs_cb** %8, align 8
  %134 = call i32 @usb_set_intfdata(%struct.usb_interface* %132, %struct.mcs_cb* %133)
  store i32 0, i32* %3, align 4
  br label %140

135:                                              ; preds = %117, %109, %92, %31
  %136 = load %struct.net_device*, %struct.net_device** %7, align 8
  %137 = call i32 @free_netdev(%struct.net_device* %136)
  br label %138

138:                                              ; preds = %135, %17
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %118
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.net_device* @alloc_irdadev(i32) #1

declare dso_local i32 @IRDA_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @usb_reset_configuration(%struct.usb_device*) #1

declare dso_local i32 @IRDA_ERROR(i8*) #1

declare dso_local %struct.mcs_cb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @irda_init_max_qos_capabilies(%struct.TYPE_11__*) #1

declare dso_local i32 @irda_qos_bits_to_value(%struct.TYPE_11__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mcs_find_endpoints(%struct.mcs_cb*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.mcs_cb*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
