; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_parse_vendor_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/uvc/extr_uvc_driver.c_uvc_parse_vendor_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_device = type { i32, %struct.usb_device*, %struct.TYPE_5__* }
%struct.usb_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.uvc_entity = type { i32, i32, %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i8, i8, i32*, i32*, i32* }

@UVC_TRACE_DESCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"device %d videocontrol interface %d EXTENSION_UNIT error\0A\00", align 1
@UVC_VC_EXTENSION_UNIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Extension %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_device*, i8*, i32)* @uvc_parse_vendor_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_parse_vendor_control(%struct.uvc_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.uvc_entity*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uvc_device* %0, %struct.uvc_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %15 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %14, i32 0, i32 1
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %8, align 8
  %17 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %18 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %20, align 8
  store %struct.usb_host_interface* %21, %struct.usb_host_interface** %9, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %23 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %22, i32 0, i32 1
  %24 = load %struct.usb_device*, %struct.usb_device** %23, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  switch i32 %28, label %197 [
    i32 1133, label %29
  ]

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 65
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  br label %197

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp sge i32 %43, 22
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 21
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  br label %51

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50, %45
  %52 = phi i32 [ %49, %45 ], [ 0, %50 ]
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add i32 25, %54
  %56 = icmp uge i32 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %12, align 4
  %60 = add i32 22, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  br label %66

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %57
  %67 = phi i32 [ %64, %57 ], [ 0, %65 ]
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add i32 25, %69
  %71 = load i32, i32* %11, align 4
  %72 = mul i32 2, %71
  %73 = add i32 %70, %72
  %74 = icmp ult i32 %68, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %66
  %76 = load i32, i32* @UVC_TRACE_DESCR, align 4
  %77 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %78 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %81 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @uvc_trace(i32 %76, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %83)
  br label %197

85:                                               ; preds = %66
  %86 = load i32, i32* @UVC_VC_EXTENSION_UNIT, align 4
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = load i8, i8* %88, align 1
  %90 = load i32, i32* %12, align 4
  %91 = add i32 %90, 1
  %92 = load i32, i32* %11, align 4
  %93 = mul i32 2, %92
  %94 = call %struct.uvc_entity* @uvc_alloc_entity(i32 %86, i8 zeroext %89, i32 %91, i32 %93)
  store %struct.uvc_entity* %94, %struct.uvc_entity** %10, align 8
  %95 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %96 = icmp eq %struct.uvc_entity* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %85
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %199

100:                                              ; preds = %85
  %101 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %102 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = call i32 @memcpy(i32* %104, i8* %106, i32 16)
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 20
  %110 = load i8, i8* %109, align 1
  %111 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %112 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i8 %110, i8* %113, align 8
  %114 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %115 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 22
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @memcpy(i32* %116, i8* %118, i32 %119)
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = add i32 22, %122
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %128 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i8 %126, i8* %129, align 1
  %130 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %131 = bitcast %struct.uvc_entity* %130 to i32*
  %132 = getelementptr inbounds i32, i32* %131, i64 48
  %133 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %134 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  store i32* %132, i32** %135, align 8
  %136 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %137 = bitcast %struct.uvc_entity* %136 to i32*
  %138 = getelementptr inbounds i32, i32* %137, i64 48
  %139 = load i32, i32* %11, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %143 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  store i32* %141, i32** %144, align 8
  %145 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %146 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = load i32, i32* %12, align 4
  %151 = add i32 23, %150
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i32, i32* %11, align 4
  %155 = mul i32 2, %154
  %156 = call i32 @memcpy(i32* %148, i8* %153, i32 %155)
  %157 = load i8*, i8** %6, align 8
  %158 = load i32, i32* %12, align 4
  %159 = add i32 24, %158
  %160 = load i32, i32* %11, align 4
  %161 = mul i32 2, %160
  %162 = add i32 %159, %161
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %157, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %100
  %169 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = load i32, i32* %12, align 4
  %172 = add i32 24, %171
  %173 = load i32, i32* %11, align 4
  %174 = mul i32 2, %173
  %175 = add i32 %172, %174
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %170, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %180 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @usb_string(%struct.usb_device* %169, i8 zeroext %178, i32 %181, i32 4)
  br label %191

183:                                              ; preds = %100
  %184 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %185 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i8*, i8** %6, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  %189 = load i8, i8* %188, align 1
  %190 = call i32 @sprintf(i32 %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %189)
  br label %191

191:                                              ; preds = %183, %168
  %192 = load %struct.uvc_entity*, %struct.uvc_entity** %10, align 8
  %193 = getelementptr inbounds %struct.uvc_entity, %struct.uvc_entity* %192, i32 0, i32 0
  %194 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %195 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %194, i32 0, i32 0
  %196 = call i32 @list_add_tail(i32* %193, i32* %195)
  store i32 1, i32* %13, align 4
  br label %197

197:                                              ; preds = %3, %191, %75, %41
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %197, %97
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, i32) #1

declare dso_local %struct.uvc_entity* @uvc_alloc_entity(i32, i8 zeroext, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @usb_string(%struct.usb_device*, i8 zeroext, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8 zeroext) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
