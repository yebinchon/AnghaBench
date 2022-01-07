; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/usbhid/extr_hid-core.c_usbhid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_8__, %struct.usb_host_interface* }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.hid_descriptor = type { i32, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@HID_QUIRK_IGNORE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@USB_INTERFACE_SUBCLASS_BOOT = common dso_local global i64 0, align 8
@USB_INTERFACE_PROTOCOL_KEYBOARD = common dso_local global i64 0, align 8
@USB_INTERFACE_PROTOCOL_MOUSE = common dso_local global i64 0, align 8
@HID_QUIRK_NOGET = common dso_local global i32 0, align 4
@HID_DT_HID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"class descriptor not present\0A\00", align 1
@HID_DT_REPORT = common dso_local global i64 0, align 8
@HID_MAX_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"weird size of report descriptor (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't allocate rdesc memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"reading report descriptor failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"parsing report descriptor failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @usbhid_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhid_parse(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.hid_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.usb_interface* @to_usb_interface(i32 %16)
  store %struct.usb_interface* %17, %struct.usb_interface** %4, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %19 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %18, i32 0, i32 0
  %20 = load %struct.usb_host_interface*, %struct.usb_host_interface** %19, align 8
  store %struct.usb_host_interface* %20, %struct.usb_host_interface** %5, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %22 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %21)
  store %struct.usb_device* %22, %struct.usb_device** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @le16_to_cpu(i32 %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @le16_to_cpu(i32 %31)
  %33 = call i32 @usbhid_lookup_quirk(i8* %27, i8* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @HID_QUIRK_IGNORE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %196

41:                                               ; preds = %1
  %42 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %43 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @USB_INTERFACE_SUBCLASS_BOOT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %41
  %49 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %50 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @USB_INTERFACE_PROTOCOL_KEYBOARD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %57 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @USB_INTERFACE_PROTOCOL_MOUSE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55, %48
  %63 = load i32, i32* @HID_QUIRK_NOGET, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %55
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %69 = load i32, i32* @HID_DT_HID, align 4
  %70 = call i64 @usb_get_extra_descriptor(%struct.usb_host_interface* %68, i32 %69, %struct.hid_descriptor** %7)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %74 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %80 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %79, i32 0, i32 1
  %81 = load %struct.usb_host_interface*, %struct.usb_host_interface** %80, align 8
  %82 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %81, i64 0
  %83 = load i32, i32* @HID_DT_HID, align 4
  %84 = call i64 @usb_get_extra_descriptor(%struct.usb_host_interface* %82, i32 %83, %struct.hid_descriptor** %7)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78, %72
  %87 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %196

90:                                               ; preds = %78, %67
  %91 = load %struct.hid_descriptor*, %struct.hid_descriptor** %7, align 8
  %92 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le16_to_cpu(i32 %93)
  %95 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %96 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.hid_descriptor*, %struct.hid_descriptor** %7, align 8
  %98 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %101 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %131, %90
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.hid_descriptor*, %struct.hid_descriptor** %7, align 8
  %105 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %102
  %109 = load %struct.hid_descriptor*, %struct.hid_descriptor** %7, align 8
  %110 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @HID_DT_REPORT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %108
  %120 = load %struct.hid_descriptor*, %struct.hid_descriptor** %7, align 8
  %121 = getelementptr inbounds %struct.hid_descriptor, %struct.hid_descriptor* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @le16_to_cpu(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %119, %108
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %102

134:                                              ; preds = %102
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @HID_MAX_DESCRIPTOR_SIZE, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %137, %134
  %142 = load i32, i32* %9, align 4
  %143 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %196

146:                                              ; preds = %137
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call i8* @kmalloc(i32 %147, i32 %148)
  store i8* %149, i8** %10, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %146
  %152 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %196

155:                                              ; preds = %146
  %156 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %157 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %158 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @hid_set_idle(%struct.usb_device* %156, i32 %160, i32 0, i32 0)
  %162 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %163 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %164 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* @HID_DT_REPORT, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @hid_get_class_descriptor(%struct.usb_device* %162, i32 %166, i64 %167, i8* %168, i32 %169)
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %155
  %174 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 @kfree(i8* %175)
  br label %194

177:                                              ; preds = %155
  %178 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %179 = load i8*, i8** %10, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @hid_parse_report(%struct.hid_device* %178, i8* %179, i32 %180)
  store i32 %181, i32* %11, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = call i32 @kfree(i8* %182)
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %177
  %187 = call i32 (i8*, ...) @dbg_hid(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %194

188:                                              ; preds = %177
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %191 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  store i32 0, i32* %2, align 4
  br label %196

194:                                              ; preds = %186, %173
  %195 = load i32, i32* %11, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %194, %188, %151, %141, %86, %38
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @usbhid_lookup_quirk(i8*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @usb_get_extra_descriptor(%struct.usb_host_interface*, i32, %struct.hid_descriptor**) #1

declare dso_local i32 @dbg_hid(i8*, ...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @hid_set_idle(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @hid_get_class_descriptor(%struct.usb_device*, i32, i64, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hid_parse_report(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
