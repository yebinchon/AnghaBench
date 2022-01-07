; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_download_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.firmware = type { i32 }
%struct.hexline = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"writing to address 0x%08x (buffer: 0x%02x %02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"firmware download failed at %d with %d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"firmware started successfully.\00", align 1
@EIO = common dso_local global i32 0, align 4
@nb_packet_buffer_size = common dso_local global i32 0, align 4
@REQUEST_GET_VERSION = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@dib0700_device_count = common dso_local global i32 0, align 4
@dib0700_devices = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib0700_download_firmware(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.hexline, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca [260 x i32], align 16
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %70, %2
  %16 = load %struct.firmware*, %struct.firmware** %5, align 8
  %17 = call i32 @dvb_usb_get_hexline(%struct.firmware* %16, %struct.hexline* %6, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @deb_fwdata(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23, i32 %25)
  %27 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 0
  store i32 %28, i32* %29, align 16
  %30 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 8
  %33 = and i32 %32, 255
  %34 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 3
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 4
  %43 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32* %42, i32 %44, i32 %46)
  %48 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 4, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %56 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %57 = call i32 @usb_sndbulkpipe(%struct.usb_device* %56, i32 1)
  %58 = getelementptr inbounds [260 x i32], [260 x i32]* %14, i64 0, i64 0
  %59 = getelementptr inbounds %struct.hexline, %struct.hexline* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 5
  %62 = call i32 @usb_bulk_msg(%struct.usb_device* %55, i32 %57, i32* %58, i32 %61, i32* %9, i32 1000)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %19
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %206

70:                                               ; preds = %19
  br label %15

71:                                               ; preds = %15
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %76 = call i32 @dib0700_jumpram(%struct.usb_device* %75, i32 1879048192)
  store i32 %76, i32* %8, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = call i32 @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i32 @msleep(i32 500)
  br label %81

81:                                               ; preds = %78, %74
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82, %81
  %86 = load i32, i32* @nb_packet_buffer_size, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 1, i32* @nb_packet_buffer_size, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %91 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %92 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %91, i32 0)
  %93 = load i32, i32* @REQUEST_GET_VERSION, align 4
  %94 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %95 = load i32, i32* @USB_DIR_IN, align 4
  %96 = or i32 %94, %95
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %98 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %99 = call i32 @usb_control_msg(%struct.usb_device* %90, i32 %92, i32 %93, i32 %96, i32 0, i32 0, i32* %97, i32 64, i32 %98)
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 8
  %101 = load i32, i32* %100, align 16
  %102 = shl i32 %101, 24
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 9
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 16
  %106 = or i32 %102, %105
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 10
  %108 = load i32, i32* %107, align 8
  %109 = shl i32 %108, 8
  %110 = or i32 %106, %109
  %111 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 11
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %110, %112
  store i32 %113, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %114

114:                                              ; preds = %201, %89
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @dib0700_device_count, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %204

118:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %197, %118
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dib0700_devices, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %120, %126
  br i1 %127, label %128, label %200

128:                                              ; preds = %119
  %129 = load i32, i32* %13, align 4
  %130 = icmp sge i32 %129, 66049
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load i32, i32* @nb_packet_buffer_size, align 4
  %133 = mul nsw i32 188, %132
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dib0700_devices, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  store i32 %133, i32* %146, align 4
  br label %196

147:                                              ; preds = %128
  %148 = load i32, i32* @nb_packet_buffer_size, align 4
  %149 = mul nsw i32 188, %148
  %150 = add nsw i32 %149, 94
  %151 = sdiv i32 %150, 512
  %152 = mul nsw i32 %151, 512
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dib0700_devices, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  store i32 %152, i32* %165, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dib0700_devices, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp slt i32 %179, 512
  br i1 %180, label %181, label %195

181:                                              ; preds = %147
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dib0700_devices, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  store i32 512, i32* %194, align 4
  br label %195

195:                                              ; preds = %181, %147
  br label %196

196:                                              ; preds = %195, %131
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %11, align 4
  br label %119

200:                                              ; preds = %119
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %114

204:                                              ; preds = %114
  %205 = load i32, i32* %8, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %204, %65
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @dvb_usb_get_hexline(%struct.firmware*, %struct.hexline*, i32*) #1

declare dso_local i32 @deb_fwdata(i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @err(i8*, i32, i32) #1

declare dso_local i32 @dib0700_jumpram(%struct.usb_device*, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
