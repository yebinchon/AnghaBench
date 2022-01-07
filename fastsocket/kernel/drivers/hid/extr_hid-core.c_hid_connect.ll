; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.hid_collection*, i64, i32 (%struct.hid_device*)*, {}* }
%struct.hid_collection = type { i64, i32 }
%struct.hidraw = type { i32 }

@hid_connect.types = internal global [9 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"Device\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Pointer\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Joystick\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Gamepad\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Keypad\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Multi-Axis Controller\00", align 1
@HID_CONNECT_HIDDEV = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@HID_CONNECT_HIDINPUT = common dso_local global i32 0, align 4
@HID_CONNECT_HIDINPUT_FORCE = common dso_local global i32 0, align 4
@HID_CLAIMED_INPUT = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDDEV = common dso_local global i32 0, align 4
@HID_CONNECT_HIDRAW = common dso_local global i32 0, align 4
@HID_CLAIMED_HIDRAW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"claimed by neither input, hiddev nor hidraw\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HID_CONNECT_FF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%shiddev%d\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%shidraw%d\00", align 1
@HID_COLLECTION_APPLICATION = common dso_local global i64 0, align 8
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_GENDESK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"BLUETOOTH\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"<UNKNOWN>\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"%s: %s HID v%x.%02x %s [%s] on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_connect(%struct.hid_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hid_collection*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 128
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @HID_CONNECT_HIDDEV, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %2
  %22 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %23 = call i64 @hid_hiddev(%struct.hid_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @HID_CONNECT_HIDINPUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @HID_CONNECT_HIDINPUT_FORCE, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @hidinput_connect(%struct.hid_device* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %34, %29
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @HID_CONNECT_HIDDEV, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %54 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %53, i32 0, i32 11
  %55 = bitcast {}** %54 to i32 (%struct.hid_device*, i32)**
  %56 = load i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*, i32)** %55, align 8
  %57 = icmp ne i32 (%struct.hid_device*, i32)* %56, null
  br i1 %57, label %58, label %75

58:                                               ; preds = %52
  %59 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %60 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %59, i32 0, i32 11
  %61 = bitcast {}** %60 to i32 (%struct.hid_device*, i32)**
  %62 = load i32 (%struct.hid_device*, i32)*, i32 (%struct.hid_device*, i32)** %61, align 8
  %63 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %66 = and i32 %64, %65
  %67 = call i32 %62(%struct.hid_device* %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %71 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %72 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %58, %52, %47
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @HID_CONNECT_HIDRAW, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %82 = call i32 @hidraw_connect(%struct.hid_device* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @HID_CLAIMED_HIDRAW, align 4
  %86 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %87 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %80, %75
  %91 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %92 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %97 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %96, i32 0, i32 7
  %98 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %266

101:                                              ; preds = %90
  %102 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %103 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %101
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @HID_CONNECT_FF, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %115 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %114, i32 0, i32 10
  %116 = load i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)** %115, align 8
  %117 = icmp ne i32 (%struct.hid_device*)* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %113
  %119 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %120 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %119, i32 0, i32 10
  %121 = load i32 (%struct.hid_device*)*, i32 (%struct.hid_device*)** %120, align 8
  %122 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %123 = call i32 %121(%struct.hid_device* %122)
  br label %124

124:                                              ; preds = %118, %113, %108, %101
  store i32 0, i32* %10, align 4
  %125 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %126 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HID_CLAIMED_INPUT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = call i64 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %131, %124
  %142 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %143 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @HID_CLAIMED_HIDDEV, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %141
  %149 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %157 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %158 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i64 (i8*, i8*, ...) @sprintf(i8* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %156, i32 %159)
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = add nsw i64 %162, %160
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %10, align 4
  br label %165

165:                                              ; preds = %148, %141
  %166 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %167 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @HID_CLAIMED_HIDRAW, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %192

172:                                              ; preds = %165
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %181 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %182 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %181, i32 0, i32 9
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.hidraw*
  %185 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 (i8*, i8*, ...) @sprintf(i8* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %180, i32 %186)
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %187
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %10, align 4
  br label %192

192:                                              ; preds = %172, %165
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i32 0, i32* %9, align 4
  br label %193

193:                                              ; preds = %235, %192
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %196 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %238

199:                                              ; preds = %193
  %200 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %201 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %200, i32 0, i32 8
  %202 = load %struct.hid_collection*, %struct.hid_collection** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %202, i64 %204
  store %struct.hid_collection* %205, %struct.hid_collection** %11, align 8
  %206 = load %struct.hid_collection*, %struct.hid_collection** %11, align 8
  %207 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @HID_COLLECTION_APPLICATION, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %234

211:                                              ; preds = %199
  %212 = load %struct.hid_collection*, %struct.hid_collection** %11, align 8
  %213 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @HID_USAGE_PAGE, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @HID_UP_GENDESK, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %234

219:                                              ; preds = %211
  %220 = load %struct.hid_collection*, %struct.hid_collection** %11, align 8
  %221 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = and i32 %222, 65535
  %224 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @hid_connect.types, i64 0, i64 0))
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %219
  %227 = load %struct.hid_collection*, %struct.hid_collection** %11, align 8
  %228 = getelementptr inbounds %struct.hid_collection, %struct.hid_collection* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %229, 65535
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [9 x i8*], [9 x i8*]* @hid_connect.types, i64 0, i64 %231
  %233 = load i8*, i8** %232, align 8
  store i8* %233, i8** %6, align 8
  br label %238

234:                                              ; preds = %219, %211, %199
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %9, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %9, align 4
  br label %193

238:                                              ; preds = %226, %193
  %239 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %240 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  switch i32 %241, label %244 [
    i32 128, label %242
    i32 129, label %243
  ]

242:                                              ; preds = %238
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8** %7, align 8
  br label %245

243:                                              ; preds = %238
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8** %7, align 8
  br label %245

244:                                              ; preds = %238
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  br label %245

245:                                              ; preds = %244, %243, %242
  %246 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %247 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %246, i32 0, i32 7
  %248 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %249 = load i8*, i8** %7, align 8
  %250 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %251 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = ashr i32 %252, 8
  %254 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %255 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = and i32 %256, 255
  %258 = load i8*, i8** %6, align 8
  %259 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %260 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %263 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @dev_info(i32* %247, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8* %248, i8* %249, i32 %253, i32 %257, i8* %258, i32 %261, i32 %264)
  store i32 0, i32* %3, align 4
  br label %266

266:                                              ; preds = %245, %95
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i64 @hid_hiddev(%struct.hid_device*) #1

declare dso_local i32 @hidinput_connect(%struct.hid_device*, i32) #1

declare dso_local i32 @hidraw_connect(%struct.hid_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
