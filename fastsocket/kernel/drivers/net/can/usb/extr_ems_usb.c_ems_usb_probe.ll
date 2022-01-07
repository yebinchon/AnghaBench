; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.net_device = type { %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.ems_usb = type { i32, i8*, i8*, i32, %struct.TYPE_7__*, i32, i32, i32, %struct.TYPE_6__, %struct.net_device*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't alloc candev\0A\00", align 1
@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@EMS_USB_ARM7_CLOCK = common dso_local global i32 0, align 4
@ems_usb_bittiming_const = common dso_local global i32 0, align 4
@ems_usb_set_bittiming = common dso_local global i32 0, align 4
@ems_usb_set_mode = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@ems_usb_netdev_ops = common dso_local global i32 0, align 4
@MAX_TX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't alloc intr URB\0A\00", align 1
@INTR_IN_BUFFER_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Couldn't alloc Intr buffer\0A\00", align 1
@CPC_HEADER_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Couldn't alloc Tx buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"couldn't initialize controller: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"couldn't register CAN device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @ems_usb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_usb_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ems_usb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call %struct.net_device* @alloc_candev(i32 96)
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @dev_err(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %194

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call %struct.ems_usb* @netdev_priv(%struct.net_device* %24)
  store %struct.ems_usb* %25, %struct.ems_usb** %7, align 8
  %26 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %27 = call i32 @interface_to_usbdev(%struct.usb_interface* %26)
  %28 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %29 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %28, i32 0, i32 10
  store i32 %27, i32* %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %32 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %31, i32 0, i32 9
  store %struct.net_device* %30, %struct.net_device** %32, align 8
  %33 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %34 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %35 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @EMS_USB_ARM7_CLOCK, align 4
  %38 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %39 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %38, i32 0, i32 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %43 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32* @ems_usb_bittiming_const, i32** %44, align 8
  %45 = load i32, i32* @ems_usb_set_bittiming, align 4
  %46 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %47 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @ems_usb_set_mode, align 4
  %50 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %51 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @IFF_ECHO, align 4
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.net_device*, %struct.net_device** %6, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 2
  store i32* @ems_usb_netdev_ops, i32** %59, align 8
  %60 = load i32, i32* @IFF_ECHO, align 4
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %66 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %65, i32 0, i32 7
  %67 = call i32 @init_usb_anchor(i32* %66)
  %68 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %69 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %68, i32 0, i32 6
  %70 = call i32 @init_usb_anchor(i32* %69)
  %71 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %72 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %71, i32 0, i32 5
  %73 = call i32 @atomic_set(i32* %72, i32 0)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %87, %23
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @MAX_TX_URBS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* @MAX_TX_URBS, align 4
  %80 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %81 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %80, i32 0, i32 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 4
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %74

90:                                               ; preds = %74
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32 @usb_alloc_urb(i32 0, i32 %91)
  %93 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %94 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %96 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %90
  %100 = load %struct.net_device*, %struct.net_device** %6, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @dev_err(i32 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %190

105:                                              ; preds = %90
  %106 = load i64, i64* @INTR_IN_BUFFER_SIZE, align 8
  %107 = load i32, i32* @GFP_KERNEL, align 4
  %108 = call i8* @kzalloc(i64 %106, i32 %107)
  %109 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %110 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %112 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %121, label %115

115:                                              ; preds = %105
  %116 = load %struct.net_device*, %struct.net_device** %6, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %185

121:                                              ; preds = %105
  %122 = load i64, i64* @CPC_HEADER_SIZE, align 8
  %123 = add i64 %122, 4
  %124 = load i32, i32* @GFP_KERNEL, align 4
  %125 = call i8* @kzalloc(i64 %123, i32 %124)
  %126 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %127 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %129 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %121
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 (i32, i8*, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %180

138:                                              ; preds = %121
  %139 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %140 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %141 = call i32 @usb_set_intfdata(%struct.usb_interface* %139, %struct.ems_usb* %140)
  %142 = load %struct.net_device*, %struct.net_device** %6, align 8
  %143 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %144 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %143, i32 0, i32 0
  %145 = call i32 @SET_NETDEV_DEV(%struct.net_device* %142, i32* %144)
  %146 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %147 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %146, i32 0, i32 3
  %148 = call i32 @init_params_sja1000(i32* %147)
  %149 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %150 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %151 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %150, i32 0, i32 3
  %152 = call i32 @ems_usb_command_msg(%struct.ems_usb* %149, i32* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %138
  %156 = load %struct.net_device*, %struct.net_device** %6, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 (i32, i8*, ...) @dev_err(i32 %159, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  br label %175

162:                                              ; preds = %138
  %163 = load %struct.net_device*, %struct.net_device** %6, align 8
  %164 = call i32 @register_candev(%struct.net_device* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.net_device*, %struct.net_device** %6, align 8
  %169 = getelementptr inbounds %struct.net_device, %struct.net_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = call i32 (i32, i8*, ...) @dev_err(i32 %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  br label %175

174:                                              ; preds = %162
  store i32 0, i32* %3, align 4
  br label %194

175:                                              ; preds = %167, %155
  %176 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %177 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %176, i32 0, i32 2
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @kfree(i8* %178)
  br label %180

180:                                              ; preds = %175, %132
  %181 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %182 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @kfree(i8* %183)
  br label %185

185:                                              ; preds = %180, %115
  %186 = load %struct.ems_usb*, %struct.ems_usb** %7, align 8
  %187 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @usb_free_urb(i32 %188)
  br label %190

190:                                              ; preds = %185, %99
  %191 = load %struct.net_device*, %struct.net_device** %6, align 8
  %192 = call i32 @free_candev(%struct.net_device* %191)
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %190, %174, %15
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local %struct.net_device* @alloc_candev(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.ems_usb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, %struct.ems_usb*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @init_params_sja1000(i32*) #1

declare dso_local i32 @ems_usb_command_msg(%struct.ems_usb*, i32*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
