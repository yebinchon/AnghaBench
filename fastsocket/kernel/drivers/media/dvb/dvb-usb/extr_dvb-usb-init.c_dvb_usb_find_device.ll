; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_find_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dvb-usb-init.c_dvb_usb_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device_description = type { %struct.TYPE_5__**, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dvb_usb_device_properties = type { i32, i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description.0**, i32*)*, %struct.dvb_usb_device_description* }
%struct.dvb_usb_device_description.0 = type opaque

@DVB_USB_ID_MAX_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"check for cold %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"check for warm %x %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dvb_usb_device_description* (%struct.usb_device*, %struct.dvb_usb_device_properties*, i32*)* @dvb_usb_find_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dvb_usb_device_description* @dvb_usb_find_device(%struct.usb_device* %0, %struct.dvb_usb_device_properties* %1, i32* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.dvb_usb_device_properties*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device_description*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.dvb_usb_device_properties* %1, %struct.dvb_usb_device_properties** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.dvb_usb_device_description* null, %struct.dvb_usb_device_description** %9, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %230, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %14 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %233

17:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %118, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @DVB_USB_ID_MAX_NUM, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %23, i32 0, i32 2
  %25 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %25, i64 %27
  %29 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br label %36

36:                                               ; preds = %22, %18
  %37 = phi i1 [ false, %18 ], [ %35, %22 ]
  br i1 %37, label %38, label %121

38:                                               ; preds = %36
  %39 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %40 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %39, i32 0, i32 2
  %41 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %41, i64 %43
  %45 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %54 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %53, i32 0, i32 2
  %55 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %55, i64 %57
  %59 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %66)
  %68 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %69 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %68, i32 0, i32 2
  %70 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %70, i64 %72
  %74 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %75, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %83 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @le16_to_cpu(i32 %85)
  %87 = icmp eq i64 %81, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %38
  %89 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %90 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %89, i32 0, i32 2
  %91 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %91, i64 %93
  %95 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %96, i64 %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %104 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @le16_to_cpu(i32 %106)
  %108 = icmp eq i64 %102, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %88
  %110 = load i32*, i32** %6, align 8
  store i32 1, i32* %110, align 4
  %111 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %112 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %111, i32 0, i32 2
  %113 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %113, i64 %115
  store %struct.dvb_usb_device_description* %116, %struct.dvb_usb_device_description** %9, align 8
  br label %121

117:                                              ; preds = %88, %38
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %18

121:                                              ; preds = %109, %36
  %122 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %9, align 8
  %123 = icmp ne %struct.dvb_usb_device_description* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %233

125:                                              ; preds = %121
  store i32 0, i32* %8, align 4
  br label %126

126:                                              ; preds = %226, %125
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @DVB_USB_ID_MAX_NUM, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %126
  %131 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %132 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %131, i32 0, i32 2
  %133 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %133, i64 %135
  %137 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %138, i64 %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = icmp ne %struct.TYPE_5__* %142, null
  br label %144

144:                                              ; preds = %130, %126
  %145 = phi i1 [ false, %126 ], [ %143, %130 ]
  br i1 %145, label %146, label %229

146:                                              ; preds = %144
  %147 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %148 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %147, i32 0, i32 2
  %149 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %149, i64 %151
  %153 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %152, i32 0, i32 0
  %154 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %154, i64 %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %162 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %161, i32 0, i32 2
  %163 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %163, i64 %165
  %167 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %168, i64 %170
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @deb_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %160, i64 %174)
  %176 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %177 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %176, i32 0, i32 2
  %178 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %177, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %178, i64 %180
  %182 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %181, i32 0, i32 0
  %183 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %183, i64 %185
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %191 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @le16_to_cpu(i32 %193)
  %195 = icmp eq i64 %189, %194
  br i1 %195, label %196, label %225

196:                                              ; preds = %146
  %197 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %198 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %197, i32 0, i32 2
  %199 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %199, i64 %201
  %203 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %202, i32 0, i32 0
  %204 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %204, i64 %206
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %212 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @le16_to_cpu(i32 %214)
  %216 = icmp eq i64 %210, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %196
  %218 = load i32*, i32** %6, align 8
  store i32 0, i32* %218, align 4
  %219 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %220 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %219, i32 0, i32 2
  %221 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.dvb_usb_device_description, %struct.dvb_usb_device_description* %221, i64 %223
  store %struct.dvb_usb_device_description* %224, %struct.dvb_usb_device_description** %9, align 8
  br label %229

225:                                              ; preds = %196, %146
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %8, align 4
  br label %126

229:                                              ; preds = %217, %144
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %11

233:                                              ; preds = %124, %11
  %234 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %9, align 8
  %235 = icmp ne %struct.dvb_usb_device_description* %234, null
  br i1 %235, label %236, label %250

236:                                              ; preds = %233
  %237 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %238 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %237, i32 0, i32 1
  %239 = load i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description.0**, i32*)*, i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description.0**, i32*)** %238, align 8
  %240 = icmp ne i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description.0**, i32*)* %239, null
  br i1 %240, label %241, label %250

241:                                              ; preds = %236
  %242 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %243 = getelementptr inbounds %struct.dvb_usb_device_properties, %struct.dvb_usb_device_properties* %242, i32 0, i32 1
  %244 = load i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description.0**, i32*)*, i32 (%struct.usb_device*, %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_description.0**, i32*)** %243, align 8
  %245 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %246 = load %struct.dvb_usb_device_properties*, %struct.dvb_usb_device_properties** %5, align 8
  %247 = bitcast %struct.dvb_usb_device_description** %9 to %struct.dvb_usb_device_description.0**
  %248 = load i32*, i32** %6, align 8
  %249 = call i32 %244(%struct.usb_device* %245, %struct.dvb_usb_device_properties* %246, %struct.dvb_usb_device_description.0** %247, i32* %248)
  br label %250

250:                                              ; preds = %241, %236, %233
  %251 = load %struct.dvb_usb_device_description*, %struct.dvb_usb_device_description** %9, align 8
  ret %struct.dvb_usb_device_description* %251
}

declare dso_local i32 @deb_info(i8*, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
