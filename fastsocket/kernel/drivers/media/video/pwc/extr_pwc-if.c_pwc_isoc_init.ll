; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_isoc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_isoc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, i32, %struct.TYPE_10__*, i32, %struct.usb_device*, i64 }
%struct.TYPE_10__ = type { %struct.urb*, i32 }
%struct.urb = type { i32, i32, %struct.TYPE_9__*, i64, %struct.pwc_device*, i32, i32, i32, i32, i32, %struct.usb_device* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@ISO_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Failed to find packet size for video endpoint in current alternate setting.\0A\00", align 1
@ENFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Setting alternate interface %d\0A\00", align 1
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@ISO_FRAMES_PER_DESC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to allocate urb %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocated URB at 0x%p\0A\00", align 1
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@ISO_BUFFER_SIZE = common dso_local global i32 0, align 4
@pwc_isoc_handler = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"isoc_init() submit_urb %d failed with error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"URB 0x%p submitted.\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"<< pwc_isoc_init()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_isoc_init(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.usb_host_interface*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  store %struct.usb_host_interface* null, %struct.usb_host_interface** %10, align 8
  %11 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %12 = icmp eq %struct.pwc_device* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %311

16:                                               ; preds = %1
  %17 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %18 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %311

22:                                               ; preds = %16
  %23 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %24 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %26 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %25, i32 0, i32 5
  %27 = load %struct.usb_device*, %struct.usb_device** %26, align 8
  store %struct.usb_device* %27, %struct.usb_device** %4, align 8
  %28 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %311

35:                                               ; preds = %22
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %36, i32 0)
  store %struct.usb_interface* %37, %struct.usb_interface** %9, align 8
  %38 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %39 = icmp ne %struct.usb_interface* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %42 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %43 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %41, i32 %44)
  store %struct.usb_host_interface* %45, %struct.usb_host_interface** %10, align 8
  br label %46

46:                                               ; preds = %40, %35
  %47 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %48 = icmp ne %struct.usb_host_interface* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %311

52:                                               ; preds = %46
  %53 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %54 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %53, i32 0, i32 1
  store i32 -1, i32* %54, align 4
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %91, %52
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %58 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %56, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %55
  %63 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %64 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 15
  %73 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %74 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %72, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %62
  %78 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %79 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  %88 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %89 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %62
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %55

94:                                               ; preds = %77, %55
  %95 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %96 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %101 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99, %94
  %106 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @ENFILE, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %311

109:                                              ; preds = %99
  store i32 0, i32* %8, align 4
  %110 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %111 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  %114 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %115 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %114, i32 0, i32 5
  %116 = load %struct.usb_device*, %struct.usb_device** %115, align 8
  %117 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %118 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @usb_set_interface(%struct.usb_device* %116, i32 0, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %109
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %311

125:                                              ; preds = %109
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %152, %125
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @MAX_ISO_BUFS, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %155

130:                                              ; preds = %126
  %131 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.urb* @usb_alloc_urb(i32 %131, i32 %132)
  store %struct.urb* %133, %struct.urb** %5, align 8
  %134 = load %struct.urb*, %struct.urb** %5, align 8
  %135 = icmp eq %struct.urb* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* %6, align 4
  %138 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %155

141:                                              ; preds = %130
  %142 = load %struct.urb*, %struct.urb** %5, align 8
  %143 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %144 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %143, i32 0, i32 3
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store %struct.urb* %142, %struct.urb** %149, align 8
  %150 = load %struct.urb*, %struct.urb** %5, align 8
  %151 = call i32 @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.urb* %150)
  br label %152

152:                                              ; preds = %141
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %126

155:                                              ; preds = %136, %126
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %182

158:                                              ; preds = %155
  br label %159

159:                                              ; preds = %163, %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %6, align 4
  %162 = icmp ne i32 %160, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %159
  %164 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %165 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %164, i32 0, i32 3
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load %struct.urb*, %struct.urb** %170, align 8
  %172 = call i32 @usb_free_urb(%struct.urb* %171)
  %173 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %174 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %173, i32 0, i32 3
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %6, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  store %struct.urb* null, %struct.urb** %179, align 8
  br label %159

180:                                              ; preds = %159
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %2, align 4
  br label %311

182:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %264, %182
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* @MAX_ISO_BUFS, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %267

187:                                              ; preds = %183
  %188 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %189 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %188, i32 0, i32 3
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load %struct.urb*, %struct.urb** %194, align 8
  store %struct.urb* %195, %struct.urb** %5, align 8
  %196 = load %struct.urb*, %struct.urb** %5, align 8
  %197 = getelementptr inbounds %struct.urb, %struct.urb* %196, i32 0, i32 0
  store i32 1, i32* %197, align 8
  %198 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %199 = load %struct.urb*, %struct.urb** %5, align 8
  %200 = getelementptr inbounds %struct.urb, %struct.urb* %199, i32 0, i32 10
  store %struct.usb_device* %198, %struct.usb_device** %200, align 8
  %201 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %202 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %203 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @usb_rcvisocpipe(%struct.usb_device* %201, i32 %204)
  %206 = load %struct.urb*, %struct.urb** %5, align 8
  %207 = getelementptr inbounds %struct.urb, %struct.urb* %206, i32 0, i32 9
  store i32 %205, i32* %207, align 8
  %208 = load i32, i32* @URB_ISO_ASAP, align 4
  %209 = load %struct.urb*, %struct.urb** %5, align 8
  %210 = getelementptr inbounds %struct.urb, %struct.urb* %209, i32 0, i32 8
  store i32 %208, i32* %210, align 4
  %211 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %212 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %211, i32 0, i32 3
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %212, align 8
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.urb*, %struct.urb** %5, align 8
  %220 = getelementptr inbounds %struct.urb, %struct.urb* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @ISO_BUFFER_SIZE, align 4
  %222 = load %struct.urb*, %struct.urb** %5, align 8
  %223 = getelementptr inbounds %struct.urb, %struct.urb* %222, i32 0, i32 6
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @pwc_isoc_handler, align 4
  %225 = load %struct.urb*, %struct.urb** %5, align 8
  %226 = getelementptr inbounds %struct.urb, %struct.urb* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 8
  %227 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %228 = load %struct.urb*, %struct.urb** %5, align 8
  %229 = getelementptr inbounds %struct.urb, %struct.urb* %228, i32 0, i32 4
  store %struct.pwc_device* %227, %struct.pwc_device** %229, align 8
  %230 = load %struct.urb*, %struct.urb** %5, align 8
  %231 = getelementptr inbounds %struct.urb, %struct.urb* %230, i32 0, i32 3
  store i64 0, i64* %231, align 8
  %232 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %233 = load %struct.urb*, %struct.urb** %5, align 8
  %234 = getelementptr inbounds %struct.urb, %struct.urb* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  store i32 0, i32* %7, align 4
  br label %235

235:                                              ; preds = %260, %187
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @ISO_FRAMES_PER_DESC, align 4
  %238 = icmp slt i32 %236, %237
  br i1 %238, label %239, label %263

239:                                              ; preds = %235
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @ISO_MAX_FRAME_SIZE, align 4
  %242 = mul nsw i32 %240, %241
  %243 = load %struct.urb*, %struct.urb** %5, align 8
  %244 = getelementptr inbounds %struct.urb, %struct.urb* %243, i32 0, i32 2
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %244, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  store i32 %242, i32* %249, align 4
  %250 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %251 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.urb*, %struct.urb** %5, align 8
  %254 = getelementptr inbounds %struct.urb, %struct.urb* %253, i32 0, i32 2
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %254, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 1
  store i32 %252, i32* %259, align 4
  br label %260

260:                                              ; preds = %239
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %7, align 4
  br label %235

263:                                              ; preds = %235
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %6, align 4
  br label %183

267:                                              ; preds = %183
  store i32 0, i32* %6, align 4
  br label %268

268:                                              ; preds = %304, %267
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* @MAX_ISO_BUFS, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %307

272:                                              ; preds = %268
  %273 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %274 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %273, i32 0, i32 3
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  %280 = load %struct.urb*, %struct.urb** %279, align 8
  %281 = load i32, i32* @GFP_KERNEL, align 4
  %282 = call i32 @usb_submit_urb(%struct.urb* %280, i32 %281)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %294

285:                                              ; preds = %272
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* %8, align 4
  %288 = call i32 (i8*, ...) @PWC_ERROR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %286, i32 %287)
  %289 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %290 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %289, i32 0, i32 0
  store i32 1, i32* %290, align 8
  %291 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %292 = call i32 @pwc_isoc_cleanup(%struct.pwc_device* %291)
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %2, align 4
  br label %311

294:                                              ; preds = %272
  %295 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %296 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %295, i32 0, i32 3
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %296, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = load %struct.urb*, %struct.urb** %301, align 8
  %303 = call i32 @PWC_DEBUG_MEMORY(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.urb* %302)
  br label %304

304:                                              ; preds = %294
  %305 = load i32, i32* %6, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %6, align 4
  br label %268

307:                                              ; preds = %268
  %308 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %309 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %308, i32 0, i32 0
  store i32 1, i32* %309, align 8
  %310 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %311

311:                                              ; preds = %307, %285, %180, %123, %105, %49, %32, %21, %13
  %312 = load i32, i32* %2, align 4
  ret i32 %312
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @PWC_ERROR(i8*, ...) #1

declare dso_local i32 @PWC_DEBUG_OPEN(i8*, ...) #1

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @PWC_DEBUG_MEMORY(i8*, %struct.urb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @pwc_isoc_cleanup(%struct.pwc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
