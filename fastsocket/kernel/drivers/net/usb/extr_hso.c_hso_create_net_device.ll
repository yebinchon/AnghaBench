; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_net_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_net_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hso_net* }
%struct.hso_net = type { i8*, i8*, i8**, i8**, i8*, i8*, %struct.hso_device*, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"hso%d\00", align 1
@hso_net_init = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to create ethernet device\0A\00", align 1
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Can't find BULK IN endpoint\0A\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Can't find BULK OUT endpoint\0A\00", align 1
@hso_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to register device\0A\00", align 1
@MUX_BULK_RX_BUF_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"Could not allocate rx urb\0A\00", align 1
@MUX_BULK_RX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Could not allocate rx buf\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Could not allocate tx urb\0A\00", align 1
@MUX_BULK_TX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Could not allocate tx buf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hso_device* (%struct.usb_interface*, i32)* @hso_create_net_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hso_device* @hso_create_net_device(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.hso_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.hso_net*, align 8
  %10 = alloca %struct.hso_device*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.hso_device* @hso_create_device(%struct.usb_interface* %11, i32 %12)
  store %struct.hso_device* %13, %struct.hso_device** %10, align 8
  %14 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %15 = icmp ne %struct.hso_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %174

17:                                               ; preds = %2
  %18 = load i32, i32* @hso_net_init, align 4
  %19 = call %struct.net_device* @alloc_netdev(i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %171

26:                                               ; preds = %17
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = call %struct.hso_net* @netdev_priv(%struct.net_device* %27)
  store %struct.hso_net* %28, %struct.hso_net** %9, align 8
  %29 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %30 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %31 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.hso_net* %29, %struct.hso_net** %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %35 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %34, i32 0, i32 7
  store %struct.net_device* %33, %struct.net_device** %35, align 8
  %36 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %37 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %38 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %37, i32 0, i32 6
  store %struct.hso_device* %36, %struct.hso_device** %38, align 8
  %39 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %40 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %41 = load i32, i32* @USB_DIR_IN, align 4
  %42 = call i8* @hso_get_ep(%struct.usb_interface* %39, i32 %40, i32 %41)
  %43 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %44 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %43, i32 0, i32 5
  store i8* %42, i8** %44, align 8
  %45 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %46 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %26
  %50 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %51 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %171

53:                                               ; preds = %26
  %54 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %55 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %56 = load i32, i32* @USB_DIR_OUT, align 4
  %57 = call i8* @hso_get_ep(%struct.usb_interface* %54, i32 %55, i32 %56)
  %58 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %59 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %61 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %60, i32 0, i32 4
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %53
  %65 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %66 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %171

68:                                               ; preds = %53
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %71 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %70, i32 0, i32 0
  %72 = call i32 @SET_NETDEV_DEV(%struct.net_device* %69, i32* %71)
  %73 = load %struct.net_device*, %struct.net_device** %8, align 8
  %74 = call i32 @SET_NETDEV_DEVTYPE(%struct.net_device* %73, i32* @hso_type)
  %75 = load %struct.net_device*, %struct.net_device** %8, align 8
  %76 = call i32 @register_netdev(%struct.net_device* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %81 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %80, i32 0, i32 0
  %82 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %171

83:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %132, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @MUX_BULK_RX_BUF_COUNT, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %135

88:                                               ; preds = %84
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @usb_alloc_urb(i32 0, i32 %89)
  %91 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %92 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %91, i32 0, i32 3
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  store i8* %90, i8** %96, align 8
  %97 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %98 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %97, i32 0, i32 3
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %88
  %106 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %107 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %171

109:                                              ; preds = %88
  %110 = load i32, i32* @MUX_BULK_RX_BUF_SIZE, align 4
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i8* @kzalloc(i32 %110, i32 %111)
  %113 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %114 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %113, i32 0, i32 2
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %112, i8** %118, align 8
  %119 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %120 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %119, i32 0, i32 2
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %109
  %128 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %129 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %171

131:                                              ; preds = %109
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %84

135:                                              ; preds = %84
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call i8* @usb_alloc_urb(i32 0, i32 %136)
  %138 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %139 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %141 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %135
  %145 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %146 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %145, i32 0, i32 0
  %147 = call i32 @dev_err(i32* %146, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %171

148:                                              ; preds = %135
  %149 = load i32, i32* @MUX_BULK_TX_BUF_SIZE, align 4
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i8* @kzalloc(i32 %149, i32 %150)
  %152 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %153 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.hso_net*, %struct.hso_net** %9, align 8
  %155 = getelementptr inbounds %struct.hso_net, %struct.hso_net* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %148
  %159 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %160 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %159, i32 0, i32 0
  %161 = call i32 @dev_err(i32* %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  br label %171

162:                                              ; preds = %148
  %163 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %164 = call i32 @add_net_device(%struct.hso_device* %163)
  %165 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %166 = call i32 @hso_log_port(%struct.hso_device* %165)
  %167 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %168 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %169 = call i32 @hso_create_rfkill(%struct.hso_device* %167, %struct.usb_interface* %168)
  %170 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  store %struct.hso_device* %170, %struct.hso_device** %3, align 8
  br label %174

171:                                              ; preds = %158, %144, %127, %105, %79, %64, %49, %22
  %172 = load %struct.hso_device*, %struct.hso_device** %10, align 8
  %173 = call i32 @hso_free_net_device(%struct.hso_device* %172)
  store %struct.hso_device* null, %struct.hso_device** %3, align 8
  br label %174

174:                                              ; preds = %171, %162, %16
  %175 = load %struct.hso_device*, %struct.hso_device** %3, align 8
  ret %struct.hso_device* %175
}

declare dso_local %struct.hso_device* @hso_create_device(%struct.usb_interface*, i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.hso_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @hso_get_ep(%struct.usb_interface*, i32, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @SET_NETDEV_DEVTYPE(%struct.net_device*, i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @add_net_device(%struct.hso_device*) #1

declare dso_local i32 @hso_log_port(%struct.hso_device*) #1

declare dso_local i32 @hso_create_rfkill(%struct.hso_device*, %struct.usb_interface*) #1

declare dso_local i32 @hso_free_net_device(%struct.hso_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
