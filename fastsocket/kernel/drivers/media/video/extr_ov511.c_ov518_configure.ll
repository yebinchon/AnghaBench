; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov518_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov511_regvals = type { i32, i32, i32 }
%struct.usb_ov511 = type { i64, i32, i64, i32, i32, i32, i32, i32, i8*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_host_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ov518_configure.aRegvalsInit518 = internal global [9 x %struct.ov511_regvals] [%struct.ov511_regvals { i32 131, i32 129, i32 64 }, %struct.ov511_regvals { i32 131, i32 130, i32 225 }, %struct.ov511_regvals { i32 131, i32 129, i32 62 }, %struct.ov511_regvals { i32 131, i32 130, i32 225 }, %struct.ov511_regvals { i32 131, i32 129, i32 0 }, %struct.ov511_regvals { i32 131, i32 130, i32 225 }, %struct.ov511_regvals { i32 131, i32 70, i32 0 }, %struct.ov511_regvals { i32 131, i32 93, i32 3 }, %struct.ov511_regvals { i32 132, i32 0, i32 0 }], align 16
@ov518_configure.aRegvalsNorm518 = internal global [10 x %struct.ov511_regvals] [%struct.ov511_regvals { i32 131, i32 128, i32 2 }, %struct.ov511_regvals { i32 131, i32 128, i32 1 }, %struct.ov511_regvals { i32 131, i32 49, i32 15 }, %struct.ov511_regvals { i32 131, i32 93, i32 3 }, %struct.ov511_regvals { i32 131, i32 36, i32 159 }, %struct.ov511_regvals { i32 131, i32 37, i32 144 }, %struct.ov511_regvals { i32 131, i32 32, i32 0 }, %struct.ov511_regvals { i32 131, i32 81, i32 4 }, %struct.ov511_regvals { i32 131, i32 113, i32 25 }, %struct.ov511_regvals { i32 132, i32 0, i32 0 }], align 16
@ov518_configure.aRegvalsNorm518Plus = internal global [16 x %struct.ov511_regvals] [%struct.ov511_regvals { i32 131, i32 128, i32 2 }, %struct.ov511_regvals { i32 131, i32 128, i32 1 }, %struct.ov511_regvals { i32 131, i32 49, i32 15 }, %struct.ov511_regvals { i32 131, i32 93, i32 3 }, %struct.ov511_regvals { i32 131, i32 36, i32 159 }, %struct.ov511_regvals { i32 131, i32 37, i32 144 }, %struct.ov511_regvals { i32 131, i32 32, i32 96 }, %struct.ov511_regvals { i32 131, i32 81, i32 2 }, %struct.ov511_regvals { i32 131, i32 113, i32 25 }, %struct.ov511_regvals { i32 131, i32 64, i32 255 }, %struct.ov511_regvals { i32 131, i32 65, i32 66 }, %struct.ov511_regvals { i32 131, i32 70, i32 0 }, %struct.ov511_regvals { i32 131, i32 51, i32 4 }, %struct.ov511_regvals { i32 131, i32 33, i32 25 }, %struct.ov511_regvals { i32 131, i32 63, i32 16 }, %struct.ov511_regvals { i32 132, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Device revision %d\0A\00", align 1
@R511_SYS_CUST_ID = common dso_local global i32 0, align 4
@camlist = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i64 0, align 8
@LED_AUTO = common dso_local global i64 0, align 8
@dumppix = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Compression required with OV518...enabling\0A\00", align 1
@BRG_OV518 = common dso_local global i64 0, align 8
@BRG_OV518PLUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Invalid bridge\00", align 1
@snapshot = common dso_local global i32 0, align 4
@OV7xx0_SID = common dso_local global i8* null, align 8
@OV6xx0_SID = common dso_local global i8* null, align 8
@OV8xx0_SID = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Can't determine sensor slave IDs\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Detected unsupported OV8xx0 sensor\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to configure OV6xx0\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to configure OV7xx0\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"OV518 Config failed\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*)* @ov518_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov518_configure(%struct.usb_ov511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_host_interface*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  %7 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %9 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %8, i32 0, i32 10
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %13 = load i32, i32* @R511_SYS_CUST_ID, align 4
  %14 = call i32 @reg_r(%struct.usb_ov511* %12, i32 %13)
  %15 = and i32 31, %14
  %16 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @camlist, align 4
  %18 = call i32 @symbolic(i32 %17, i32 0)
  %19 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %20 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %19, i32 0, i32 11
  store i32 %18, i32* %20, align 8
  %21 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %22 = call i64 @write_regvals(%struct.usb_ov511* %21, %struct.ov511_regvals* getelementptr inbounds ([9 x %struct.ov511_regvals], [9 x %struct.ov511_regvals]* @ov518_configure.aRegvalsInit518, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %214

25:                                               ; preds = %1
  %26 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %27 = call i64 @reg_w_mask(%struct.usb_ov511* %26, i32 87, i32 0, i32 2)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %214

30:                                               ; preds = %25
  %31 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %32 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LED_OFF, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %38 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LED_AUTO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30
  %43 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %44 = call i32 @ov51x_led_control(%struct.usb_ov511* %43, i32 0)
  br label %48

45:                                               ; preds = %36
  %46 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %47 = call i32 @ov51x_led_control(%struct.usb_ov511* %46, i32 1)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @dumppix, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %53 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %58 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  %59 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %60 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %59, i32 0, i32 10
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %64

64:                                               ; preds = %56, %51, %48
  %65 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %66 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BRG_OV518, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %72 = call i64 @write_regvals(%struct.usb_ov511* %71, %struct.ov511_regvals* getelementptr inbounds ([10 x %struct.ov511_regvals], [10 x %struct.ov511_regvals]* @ov518_configure.aRegvalsNorm518, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %214

75:                                               ; preds = %70
  br label %91

76:                                               ; preds = %64
  %77 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %78 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BRG_OV518PLUS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %84 = call i64 @write_regvals(%struct.usb_ov511* %83, %struct.ov511_regvals* getelementptr inbounds ([16 x %struct.ov511_regvals], [16 x %struct.ov511_regvals]* @ov518_configure.aRegvalsNorm518Plus, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %214

87:                                               ; preds = %82
  br label %90

88:                                               ; preds = %76
  %89 = call i32 @err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %87
  br label %91

91:                                               ; preds = %90, %75
  %92 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %93 = call i64 @reg_w(%struct.usb_ov511* %92, i32 47, i32 128)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %214

96:                                               ; preds = %91
  %97 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %98 = call i64 @ov518_init_compression(%struct.usb_ov511* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %214

101:                                              ; preds = %96
  %102 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %103 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @BRG_OV518, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %139

107:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  %108 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %109 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %108, i32 0, i32 10
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_6__* %110, i32 0)
  store %struct.usb_interface* %111, %struct.usb_interface** %4, align 8
  %112 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %113 = icmp ne %struct.usb_interface* %112, null
  br i1 %113, label %114, label %129

114:                                              ; preds = %107
  %115 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %116 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %115, i32 7)
  store %struct.usb_host_interface* %116, %struct.usb_host_interface** %5, align 8
  %117 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %118 = icmp ne %struct.usb_host_interface* %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.usb_host_interface*, %struct.usb_host_interface** %5, align 8
  %121 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %120, i32 0, i32 0
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le16_to_cpu(i32 %126)
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %119, %114
  br label %129

129:                                              ; preds = %128, %107
  %130 = load i32, i32* %6, align 4
  %131 = icmp eq i32 %130, 897
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %134 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %133, i32 0, i32 3
  store i32 1, i32* %134, align 8
  br label %138

135:                                              ; preds = %129
  %136 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %137 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %136, i32 0, i32 3
  store i32 0, i32* %137, align 8
  br label %138

138:                                              ; preds = %135, %132
  br label %142

139:                                              ; preds = %101
  %140 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %141 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %140, i32 0, i32 3
  store i32 1, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %138
  %143 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %144 = call i32 @ov518_set_packet_size(%struct.usb_ov511* %143, i32 0)
  %145 = load i32, i32* @snapshot, align 4
  %146 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %147 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %146, i32 0, i32 9
  store i32 %145, i32* %147, align 8
  %148 = load i8*, i8** @OV7xx0_SID, align 8
  %149 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %150 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %149, i32 0, i32 8
  store i8* %148, i8** %150, align 8
  %151 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %152 = load i8*, i8** @OV7xx0_SID, align 8
  %153 = call i64 @ov51x_set_slave_ids(%struct.usb_ov511* %151, i8* %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %214

156:                                              ; preds = %142
  %157 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %158 = call i64 @init_ov_sensor(%struct.usb_ov511* %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %198

160:                                              ; preds = %156
  %161 = load i8*, i8** @OV6xx0_SID, align 8
  %162 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %163 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %162, i32 0, i32 8
  store i8* %161, i8** %163, align 8
  %164 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %165 = load i8*, i8** @OV6xx0_SID, align 8
  %166 = call i64 @ov51x_set_slave_ids(%struct.usb_ov511* %164, i8* %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %214

169:                                              ; preds = %160
  %170 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %171 = call i64 @init_ov_sensor(%struct.usb_ov511* %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %190

173:                                              ; preds = %169
  %174 = load i8*, i8** @OV8xx0_SID, align 8
  %175 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %176 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %175, i32 0, i32 8
  store i8* %174, i8** %176, align 8
  %177 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %178 = load i8*, i8** @OV8xx0_SID, align 8
  %179 = call i64 @ov51x_set_slave_ids(%struct.usb_ov511* %177, i8* %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  br label %214

182:                                              ; preds = %173
  %183 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %184 = call i64 @init_ov_sensor(%struct.usb_ov511* %183)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %214

188:                                              ; preds = %182
  %189 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %214

190:                                              ; preds = %169
  %191 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %192 = call i64 @ov6xx0_configure(%struct.usb_ov511* %191)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %214

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196
  br label %205

198:                                              ; preds = %156
  %199 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %200 = call i64 @ov7xx0_configure(%struct.usb_ov511* %199)
  %201 = icmp slt i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = call i32 @err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %214

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %204, %197
  %206 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %207 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %206, i32 0, i32 4
  store i32 352, i32* %207, align 4
  %208 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %209 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %208, i32 0, i32 5
  store i32 288, i32* %209, align 8
  %210 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %211 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %210, i32 0, i32 6
  store i32 160, i32* %211, align 4
  %212 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %213 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %212, i32 0, i32 7
  store i32 120, i32* %213, align 8
  store i32 0, i32* %2, align 4
  br label %218

214:                                              ; preds = %202, %194, %188, %186, %181, %168, %155, %100, %95, %86, %74, %29, %24
  %215 = call i32 @err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %216 = load i32, i32* @EBUSY, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %214, %205
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @reg_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @symbolic(i32, i32) #1

declare dso_local i64 @write_regvals(%struct.usb_ov511*, %struct.ov511_regvals*) #1

declare dso_local i64 @reg_w_mask(%struct.usb_ov511*, i32, i32, i32) #1

declare dso_local i32 @ov51x_led_control(%struct.usb_ov511*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i64 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i64 @ov518_init_compression(%struct.usb_ov511*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_6__*, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ov518_set_packet_size(%struct.usb_ov511*, i32) #1

declare dso_local i64 @ov51x_set_slave_ids(%struct.usb_ov511*, i8*) #1

declare dso_local i64 @init_ov_sensor(%struct.usb_ov511*) #1

declare dso_local i64 @ov6xx0_configure(%struct.usb_ov511*) #1

declare dso_local i64 @ov7xx0_configure(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
