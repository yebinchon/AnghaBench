; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_init_av7110_av.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_init_av7110_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, %struct.TYPE_6__, %struct.saa7146_dev*, i32, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.saa7146_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@DVB_ADAC_TI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"dvb-ttpci:cannot set internal volume to maximum:%d\0A\00", align 1
@COMTYPE_ENCODER = common dso_local global i32 0, align 4
@SetMonitorType = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"dvb-ttpci: unable to set aspect ratio\0A\00", align 1
@SetPanScanType = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"dvb-ttpci: unable to set pan scan\0A\00", align 1
@SetWSSConfig = common dso_local global i32 0, align 4
@wss_cfg_4_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"dvb-ttpci: unable to configure 4:3 wss\0A\00", align 1
@wss_cfg_16_9 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"dvb-ttpci: unable to configure 16:9 wss\0A\00", align 1
@vidmode = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"dvb-ttpci:cannot set video mode:%d\0A\00", align 1
@COMTYPE_AUDIODAC = common dso_local global i32 0, align 4
@ADSwitch = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"dvb-ttpci: Crystal audio DAC @ card %d detected\0A\00", align 1
@DVB_ADAC_CRYSTAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"dvb-ttpci: DVB-C w/o analog module @ card %d detected\0A\00", align 1
@DVB_ADAC_NONE = common dso_local global i32 0, align 4
@adac = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"dvb-ttpci: adac type set to %d @ card %d\0A\00", align 1
@DVB_ADAC_MSP34x0 = common dso_local global i32 0, align 4
@MainSwitch = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [43 x i8] c"dvb-ttpci:cannot switch on SCART(Main):%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"dvb-ttpci:cannot switch on SCART(AD):%d\0A\00", align 1
@rgb_on = common dso_local global i64 0, align 8
@SAA7146_GPIO_OUTHI = common dso_local global i32 0, align 4
@SpdifSwitch = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"dvb-ttpci:cannot set volume :%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.av7110*)* @init_av7110_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_av7110_av(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %5 = load %struct.av7110*, %struct.av7110** %2, align 8
  %6 = getelementptr inbounds %struct.av7110, %struct.av7110* %5, i32 0, i32 2
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  store %struct.saa7146_dev* %7, %struct.saa7146_dev** %4, align 8
  %8 = load i32, i32* @DVB_ADAC_TI, align 4
  %9 = load %struct.av7110*, %struct.av7110** %2, align 8
  %10 = getelementptr inbounds %struct.av7110, %struct.av7110* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.av7110*, %struct.av7110** %2, align 8
  %12 = load %struct.av7110*, %struct.av7110** %2, align 8
  %13 = getelementptr inbounds %struct.av7110, %struct.av7110* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.av7110*, %struct.av7110** %2, align 8
  %17 = getelementptr inbounds %struct.av7110, %struct.av7110* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @av7110_set_volume(%struct.av7110* %11, i32 %15, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.av7110*, %struct.av7110** %2, align 8
  %28 = load i32, i32* @COMTYPE_ENCODER, align 4
  %29 = load i32, i32* @SetMonitorType, align 4
  %30 = load %struct.av7110*, %struct.av7110** %2, align 8
  %31 = getelementptr inbounds %struct.av7110, %struct.av7110* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 (%struct.av7110*, i32, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %27, i32 %28, i32 %29, i32 1, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %26
  %40 = load %struct.av7110*, %struct.av7110** %2, align 8
  %41 = load i32, i32* @COMTYPE_ENCODER, align 4
  %42 = load i32, i32* @SetPanScanType, align 4
  %43 = load %struct.av7110*, %struct.av7110** %2, align 8
  %44 = getelementptr inbounds %struct.av7110, %struct.av7110* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (%struct.av7110*, i32, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %40, i32 %41, i32 %42, i32 1, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %39
  %52 = load %struct.av7110*, %struct.av7110** %2, align 8
  %53 = load i32, i32* @COMTYPE_ENCODER, align 4
  %54 = load i32, i32* @SetWSSConfig, align 4
  %55 = load i32, i32* @wss_cfg_4_3, align 4
  %56 = call i32 (%struct.av7110*, i32, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %52, i32 %53, i32 %54, i32 2, i32 2, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %51
  %62 = load %struct.av7110*, %struct.av7110** %2, align 8
  %63 = load i32, i32* @COMTYPE_ENCODER, align 4
  %64 = load i32, i32* @SetWSSConfig, align 4
  %65 = load i32, i32* @wss_cfg_16_9, align 4
  %66 = call i32 (%struct.av7110*, i32, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %62, i32 %63, i32 %64, i32 2, i32 3, i32 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %61
  %72 = load %struct.av7110*, %struct.av7110** %2, align 8
  %73 = load i32, i32* @vidmode, align 4
  %74 = call i32 @av7710_set_video_mode(%struct.av7110* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %3, align 4
  %79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.av7110*, %struct.av7110** %2, align 8
  %82 = getelementptr inbounds %struct.av7110, %struct.av7110* %81, i32 0, i32 6
  store i64 0, i64* %82, align 8
  %83 = load %struct.av7110*, %struct.av7110** %2, align 8
  %84 = getelementptr inbounds %struct.av7110, %struct.av7110* %83, i32 0, i32 5
  store i64 0, i64* %84, align 8
  %85 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %86 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 5058
  br i1 %90, label %91, label %103

91:                                               ; preds = %80
  %92 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %93 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = load %struct.av7110*, %struct.av7110** %2, align 8
  %100 = load i32, i32* @COMTYPE_AUDIODAC, align 4
  %101 = load i32, i32* @ADSwitch, align 4
  %102 = call i32 (%struct.av7110*, i32, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %99, i32 %100, i32 %101, i32 1, i32 0)
  br label %103

103:                                              ; preds = %98, %91, %80
  %104 = load %struct.av7110*, %struct.av7110** %2, align 8
  %105 = call i32 @i2c_writereg(%struct.av7110* %104, i32 32, i32 0, i32 0)
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load %struct.av7110*, %struct.av7110** %2, align 8
  %109 = getelementptr inbounds %struct.av7110, %struct.av7110* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @DVB_ADAC_CRYSTAL, align 4
  %114 = load %struct.av7110*, %struct.av7110** %2, align 8
  %115 = getelementptr inbounds %struct.av7110, %struct.av7110* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.av7110*, %struct.av7110** %2, align 8
  %117 = call i32 @i2c_writereg(%struct.av7110* %116, i32 32, i32 1, i32 210)
  %118 = load %struct.av7110*, %struct.av7110** %2, align 8
  %119 = call i32 @i2c_writereg(%struct.av7110* %118, i32 32, i32 2, i32 73)
  %120 = load %struct.av7110*, %struct.av7110** %2, align 8
  %121 = call i32 @i2c_writereg(%struct.av7110* %120, i32 32, i32 3, i32 0)
  %122 = load %struct.av7110*, %struct.av7110** %2, align 8
  %123 = call i32 @i2c_writereg(%struct.av7110* %122, i32 32, i32 4, i32 0)
  br label %159

124:                                              ; preds = %103
  %125 = load %struct.av7110*, %struct.av7110** %2, align 8
  %126 = call i64 @av7110_init_analog_module(%struct.av7110* %125)
  %127 = icmp eq i64 0, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %158

129:                                              ; preds = %124
  %130 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %131 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 4362
  br i1 %135, label %136, label %145

136:                                              ; preds = %129
  %137 = load %struct.av7110*, %struct.av7110** %2, align 8
  %138 = getelementptr inbounds %struct.av7110, %struct.av7110* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* @DVB_ADAC_NONE, align 4
  %143 = load %struct.av7110*, %struct.av7110** %2, align 8
  %144 = getelementptr inbounds %struct.av7110, %struct.av7110* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  br label %157

145:                                              ; preds = %129
  %146 = load i32, i32* @adac, align 4
  %147 = load %struct.av7110*, %struct.av7110** %2, align 8
  %148 = getelementptr inbounds %struct.av7110, %struct.av7110* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 8
  %149 = load %struct.av7110*, %struct.av7110** %2, align 8
  %150 = getelementptr inbounds %struct.av7110, %struct.av7110* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.av7110*, %struct.av7110** %2, align 8
  %153 = getelementptr inbounds %struct.av7110, %struct.av7110* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %151, i32 %155)
  br label %157

157:                                              ; preds = %145, %136
  br label %158

158:                                              ; preds = %157, %128
  br label %159

159:                                              ; preds = %158, %107
  %160 = load %struct.av7110*, %struct.av7110** %2, align 8
  %161 = getelementptr inbounds %struct.av7110, %struct.av7110* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @DVB_ADAC_NONE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load %struct.av7110*, %struct.av7110** %2, align 8
  %167 = getelementptr inbounds %struct.av7110, %struct.av7110* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @DVB_ADAC_MSP34x0, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %226

171:                                              ; preds = %165, %159
  %172 = load %struct.av7110*, %struct.av7110** %2, align 8
  %173 = load i32, i32* @COMTYPE_AUDIODAC, align 4
  %174 = load i32, i32* @MainSwitch, align 4
  %175 = call i32 (%struct.av7110*, i32, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %172, i32 %173, i32 %174, i32 1, i32 0)
  store i32 %175, i32* %3, align 4
  %176 = load i32, i32* %3, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i32, i32* %3, align 4
  %180 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %178, %171
  %182 = load %struct.av7110*, %struct.av7110** %2, align 8
  %183 = load i32, i32* @COMTYPE_AUDIODAC, align 4
  %184 = load i32, i32* @ADSwitch, align 4
  %185 = call i32 (%struct.av7110*, i32, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %182, i32 %183, i32 %184, i32 1, i32 1)
  store i32 %185, i32* %3, align 4
  %186 = load i32, i32* %3, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %181
  %189 = load i32, i32* %3, align 4
  %190 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %188, %181
  %192 = load i64, i64* @rgb_on, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %225

194:                                              ; preds = %191
  %195 = load %struct.av7110*, %struct.av7110** %2, align 8
  %196 = getelementptr inbounds %struct.av7110, %struct.av7110* %195, i32 0, i32 2
  %197 = load %struct.saa7146_dev*, %struct.saa7146_dev** %196, align 8
  %198 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 4362
  br i1 %202, label %212, label %203

203:                                              ; preds = %194
  %204 = load %struct.av7110*, %struct.av7110** %2, align 8
  %205 = getelementptr inbounds %struct.av7110, %struct.av7110* %204, i32 0, i32 2
  %206 = load %struct.saa7146_dev*, %struct.saa7146_dev** %205, align 8
  %207 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %206, i32 0, i32 0
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp eq i32 %210, 5058
  br i1 %211, label %212, label %225

212:                                              ; preds = %203, %194
  %213 = load %struct.av7110*, %struct.av7110** %2, align 8
  %214 = getelementptr inbounds %struct.av7110, %struct.av7110* %213, i32 0, i32 2
  %215 = load %struct.saa7146_dev*, %struct.saa7146_dev** %214, align 8
  %216 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %215, i32 0, i32 0
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %212
  %222 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %223 = load i32, i32* @SAA7146_GPIO_OUTHI, align 4
  %224 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %222, i32 1, i32 %223)
  br label %225

225:                                              ; preds = %221, %212, %203, %191
  br label %226

226:                                              ; preds = %225, %165
  %227 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %228 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %227, i32 0, i32 0
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %231, 5058
  br i1 %232, label %233, label %245

233:                                              ; preds = %226
  %234 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %235 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %234, i32 0, i32 0
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 14
  br i1 %239, label %240, label %245

240:                                              ; preds = %233
  %241 = load %struct.av7110*, %struct.av7110** %2, align 8
  %242 = load i32, i32* @COMTYPE_AUDIODAC, align 4
  %243 = load i32, i32* @SpdifSwitch, align 4
  %244 = call i32 (%struct.av7110*, i32, i32, i32, i32, ...) @av7110_fw_cmd(%struct.av7110* %241, i32 %242, i32 %243, i32 1, i32 0)
  br label %245

245:                                              ; preds = %240, %233, %226
  %246 = load %struct.av7110*, %struct.av7110** %2, align 8
  %247 = load %struct.av7110*, %struct.av7110** %2, align 8
  %248 = getelementptr inbounds %struct.av7110, %struct.av7110* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.av7110*, %struct.av7110** %2, align 8
  %252 = getelementptr inbounds %struct.av7110, %struct.av7110* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @av7110_set_volume(%struct.av7110* %246, i32 %250, i32 %254)
  store i32 %255, i32* %3, align 4
  %256 = load i32, i32* %3, align 4
  %257 = icmp slt i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %245
  %259 = load i32, i32* %3, align 4
  %260 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %258, %245
  ret void
}

declare dso_local i32 @av7110_set_volume(%struct.av7110*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @av7710_set_video_mode(%struct.av7110*, i32) #1

declare dso_local i32 @i2c_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i64 @av7110_init_analog_module(%struct.av7110*) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
