; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_av7110_init_analog_module.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_v4l.c_av7110_init_analog_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [73 x i8] c"dvb-ttpci: DVB-C analog module @ card %d detected, initializing MSP3400\0A\00", align 1
@DVB_ADAC_MSP34x0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"dvb-ttpci: DVB-C analog module @ card %d detected, initializing MSP3415\0A\00", align 1
@DVB_ADAC_MSP34x5 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MSP_RD_DSP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"dvb-ttpci: @ card %d MSP34xx version 0x%04x 0x%04x\0A\00", align 1
@MSP_WR_DSP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"saa7113 not accessible.\0A\00", align 1
@saa7113_init_regs = common dso_local global i32* null, align 8
@ANALOG_TUNER_VES1820 = common dso_local global i32 0, align 4
@ANALOG_TUNER_STV0297 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"setting band in demodulator failed.\0A\00", align 1
@SAA7146_GPIO_OUTLO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"saa7113 initialization failed @ card %d\00", align 1
@MSP_WR_DEM = common dso_local global i32 0, align 4
@standard = common dso_local global i32 0, align 4
@dvb_standard = common dso_local global i32 0, align 4
@DD1_STREAM_B = common dso_local global i32 0, align 4
@DD1_INIT = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_09 = common dso_local global i32 0, align 4
@MASK_25 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_init_analog_module(%struct.av7110* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  %7 = load %struct.av7110*, %struct.av7110** %3, align 8
  %8 = call i32 @i2c_writereg(%struct.av7110* %7, i32 128, i32 0, i32 128)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.av7110*, %struct.av7110** %3, align 8
  %12 = call i32 @i2c_writereg(%struct.av7110* %11, i32 128, i32 0, i32 0)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.av7110*, %struct.av7110** %3, align 8
  %16 = getelementptr inbounds %struct.av7110, %struct.av7110* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @DVB_ADAC_MSP34x0, align 4
  %21 = load %struct.av7110*, %struct.av7110** %3, align 8
  %22 = getelementptr inbounds %struct.av7110, %struct.av7110* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  br label %44

23:                                               ; preds = %10, %1
  %24 = load %struct.av7110*, %struct.av7110** %3, align 8
  %25 = call i32 @i2c_writereg(%struct.av7110* %24, i32 132, i32 0, i32 128)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.av7110*, %struct.av7110** %3, align 8
  %29 = call i32 @i2c_writereg(%struct.av7110* %28, i32 132, i32 0, i32 0)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.av7110*, %struct.av7110** %3, align 8
  %33 = getelementptr inbounds %struct.av7110, %struct.av7110* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @DVB_ADAC_MSP34x5, align 4
  %38 = load %struct.av7110*, %struct.av7110** %3, align 8
  %39 = getelementptr inbounds %struct.av7110, %struct.av7110* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  br label %43

40:                                               ; preds = %27, %23
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %315

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %14
  %45 = call i32 @msleep(i32 100)
  %46 = load %struct.av7110*, %struct.av7110** %3, align 8
  %47 = load i32, i32* @MSP_RD_DSP, align 4
  %48 = call i32 @msp_readreg(%struct.av7110* %46, i32 %47, i32 30, i32* %4)
  %49 = load %struct.av7110*, %struct.av7110** %3, align 8
  %50 = load i32, i32* @MSP_RD_DSP, align 4
  %51 = call i32 @msp_readreg(%struct.av7110* %49, i32 %50, i32 31, i32* %5)
  %52 = load %struct.av7110*, %struct.av7110** %3, align 8
  %53 = getelementptr inbounds %struct.av7110, %struct.av7110* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56, i32 %57)
  %59 = load %struct.av7110*, %struct.av7110** %3, align 8
  %60 = load i32, i32* @MSP_WR_DSP, align 4
  %61 = call i32 @msp_writereg(%struct.av7110* %59, i32 %60, i32 19, i32 3072)
  %62 = load %struct.av7110*, %struct.av7110** %3, align 8
  %63 = load i32, i32* @MSP_WR_DSP, align 4
  %64 = call i32 @msp_writereg(%struct.av7110* %62, i32 %63, i32 0, i32 32512)
  %65 = load %struct.av7110*, %struct.av7110** %3, align 8
  %66 = load i32, i32* @MSP_WR_DSP, align 4
  %67 = call i32 @msp_writereg(%struct.av7110* %65, i32 %66, i32 8, i32 544)
  %68 = load %struct.av7110*, %struct.av7110** %3, align 8
  %69 = load i32, i32* @MSP_WR_DSP, align 4
  %70 = call i32 @msp_writereg(%struct.av7110* %68, i32 %69, i32 9, i32 544)
  %71 = load %struct.av7110*, %struct.av7110** %3, align 8
  %72 = load i32, i32* @MSP_WR_DSP, align 4
  %73 = call i32 @msp_writereg(%struct.av7110* %71, i32 %72, i32 4, i32 32512)
  %74 = load %struct.av7110*, %struct.av7110** %3, align 8
  %75 = load i32, i32* @MSP_WR_DSP, align 4
  %76 = call i32 @msp_writereg(%struct.av7110* %74, i32 %75, i32 10, i32 544)
  %77 = load %struct.av7110*, %struct.av7110** %3, align 8
  %78 = load i32, i32* @MSP_WR_DSP, align 4
  %79 = call i32 @msp_writereg(%struct.av7110* %77, i32 %78, i32 7, i32 32512)
  %80 = load %struct.av7110*, %struct.av7110** %3, align 8
  %81 = load i32, i32* @MSP_WR_DSP, align 4
  %82 = call i32 @msp_writereg(%struct.av7110* %80, i32 %81, i32 13, i32 6400)
  %83 = load %struct.av7110*, %struct.av7110** %3, align 8
  %84 = call i32 @i2c_writereg(%struct.av7110* %83, i32 72, i32 1, i32 0)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %44
  %87 = call i32 @INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %289

88:                                               ; preds = %44
  %89 = load i32*, i32** @saa7113_init_regs, align 8
  store i32* %89, i32** %6, align 8
  %90 = load %struct.av7110*, %struct.av7110** %3, align 8
  %91 = getelementptr inbounds %struct.av7110, %struct.av7110* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 4362
  br i1 %97, label %98, label %113

98:                                               ; preds = %88
  %99 = load %struct.av7110*, %struct.av7110** %3, align 8
  %100 = getelementptr inbounds %struct.av7110, %struct.av7110* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load i32, i32* @ANALOG_TUNER_VES1820, align 4
  %109 = load %struct.av7110*, %struct.av7110** %3, align 8
  %110 = getelementptr inbounds %struct.av7110, %struct.av7110* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %163

113:                                              ; preds = %98, %88
  %114 = load %struct.av7110*, %struct.av7110** %3, align 8
  %115 = getelementptr inbounds %struct.av7110, %struct.av7110* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 5058
  br i1 %121, label %122, label %137

122:                                              ; preds = %113
  %123 = load %struct.av7110*, %struct.av7110** %3, align 8
  %124 = getelementptr inbounds %struct.av7110, %struct.av7110* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %137

131:                                              ; preds = %122
  %132 = load i32, i32* @ANALOG_TUNER_VES1820, align 4
  %133 = load %struct.av7110*, %struct.av7110** %3, align 8
  %134 = getelementptr inbounds %struct.av7110, %struct.av7110* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %162

137:                                              ; preds = %122, %113
  %138 = load %struct.av7110*, %struct.av7110** %3, align 8
  %139 = getelementptr inbounds %struct.av7110, %struct.av7110* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 5058
  br i1 %145, label %146, label %161

146:                                              ; preds = %137
  %147 = load %struct.av7110*, %struct.av7110** %3, align 8
  %148 = getelementptr inbounds %struct.av7110, %struct.av7110* %147, i32 0, i32 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 10
  br i1 %154, label %155, label %161

155:                                              ; preds = %146
  %156 = load i32, i32* @ANALOG_TUNER_STV0297, align 4
  %157 = load %struct.av7110*, %struct.av7110** %3, align 8
  %158 = getelementptr inbounds %struct.av7110, %struct.av7110* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %146, %137
  br label %162

162:                                              ; preds = %161, %131
  br label %163

163:                                              ; preds = %162, %107
  %164 = load %struct.av7110*, %struct.av7110** %3, align 8
  %165 = getelementptr inbounds %struct.av7110, %struct.av7110* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ANALOG_TUNER_VES1820, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %163
  %171 = load %struct.av7110*, %struct.av7110** %3, align 8
  %172 = getelementptr inbounds %struct.av7110, %struct.av7110* %171, i32 0, i32 1
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = call i64 @ves1820_writereg(%struct.TYPE_8__* %173, i32 9, i32 15, i32 32)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %170
  br label %198

179:                                              ; preds = %163
  %180 = load %struct.av7110*, %struct.av7110** %3, align 8
  %181 = getelementptr inbounds %struct.av7110, %struct.av7110* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @ANALOG_TUNER_STV0297, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load %struct.av7110*, %struct.av7110** %3, align 8
  %188 = getelementptr inbounds %struct.av7110, %struct.av7110* %187, i32 0, i32 1
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %191 = call i32 @saa7146_setgpio(%struct.TYPE_8__* %189, i32 1, i32 %190)
  %192 = load %struct.av7110*, %struct.av7110** %3, align 8
  %193 = getelementptr inbounds %struct.av7110, %struct.av7110* %192, i32 0, i32 1
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* @SAA7146_GPIO_OUTLO, align 4
  %196 = call i32 @saa7146_setgpio(%struct.TYPE_8__* %194, i32 3, i32 %195)
  br label %197

197:                                              ; preds = %186, %179
  br label %198

198:                                              ; preds = %197, %178
  br label %199

199:                                              ; preds = %219, %198
  %200 = load i32*, i32** %6, align 8
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 255
  br i1 %202, label %203, label %222

203:                                              ; preds = %199
  %204 = load %struct.av7110*, %struct.av7110** %3, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %6, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @i2c_writereg(%struct.av7110* %204, i32 72, i32 %207, i32 %210)
  %212 = icmp ne i32 %211, 1
  br i1 %212, label %213, label %219

213:                                              ; preds = %203
  %214 = load %struct.av7110*, %struct.av7110** %3, align 8
  %215 = getelementptr inbounds %struct.av7110, %struct.av7110* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, ...) @dprintk(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %217)
  br label %222

219:                                              ; preds = %203
  %220 = load i32*, i32** %6, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  store i32* %221, i32** %6, align 8
  br label %199

222:                                              ; preds = %213, %199
  %223 = load %struct.av7110*, %struct.av7110** %3, align 8
  %224 = load i32, i32* @MSP_WR_DEM, align 4
  %225 = call i32 @msp_writereg(%struct.av7110* %223, i32 %224, i32 187, i32 720)
  %226 = load %struct.av7110*, %struct.av7110** %3, align 8
  %227 = load i32, i32* @MSP_WR_DEM, align 4
  %228 = call i32 @msp_writereg(%struct.av7110* %226, i32 %227, i32 1, i32 3)
  %229 = load %struct.av7110*, %struct.av7110** %3, align 8
  %230 = load i32, i32* @MSP_WR_DEM, align 4
  %231 = call i32 @msp_writereg(%struct.av7110* %229, i32 %230, i32 1, i32 18)
  %232 = load %struct.av7110*, %struct.av7110** %3, align 8
  %233 = load i32, i32* @MSP_WR_DEM, align 4
  %234 = call i32 @msp_writereg(%struct.av7110* %232, i32 %233, i32 1, i32 27)
  %235 = load %struct.av7110*, %struct.av7110** %3, align 8
  %236 = load i32, i32* @MSP_WR_DEM, align 4
  %237 = call i32 @msp_writereg(%struct.av7110* %235, i32 %236, i32 1, i32 48)
  %238 = load %struct.av7110*, %struct.av7110** %3, align 8
  %239 = load i32, i32* @MSP_WR_DEM, align 4
  %240 = call i32 @msp_writereg(%struct.av7110* %238, i32 %239, i32 1, i32 66)
  %241 = load %struct.av7110*, %struct.av7110** %3, align 8
  %242 = load i32, i32* @MSP_WR_DEM, align 4
  %243 = call i32 @msp_writereg(%struct.av7110* %241, i32 %242, i32 1, i32 72)
  %244 = load %struct.av7110*, %struct.av7110** %3, align 8
  %245 = load i32, i32* @MSP_WR_DEM, align 4
  %246 = call i32 @msp_writereg(%struct.av7110* %244, i32 %245, i32 5, i32 4)
  %247 = load %struct.av7110*, %struct.av7110** %3, align 8
  %248 = load i32, i32* @MSP_WR_DEM, align 4
  %249 = call i32 @msp_writereg(%struct.av7110* %247, i32 %248, i32 5, i32 64)
  %250 = load %struct.av7110*, %struct.av7110** %3, align 8
  %251 = load i32, i32* @MSP_WR_DEM, align 4
  %252 = call i32 @msp_writereg(%struct.av7110* %250, i32 %251, i32 5, i32 0)
  %253 = load %struct.av7110*, %struct.av7110** %3, align 8
  %254 = load i32, i32* @MSP_WR_DEM, align 4
  %255 = call i32 @msp_writereg(%struct.av7110* %253, i32 %254, i32 5, i32 3)
  %256 = load %struct.av7110*, %struct.av7110** %3, align 8
  %257 = load i32, i32* @MSP_WR_DEM, align 4
  %258 = call i32 @msp_writereg(%struct.av7110* %256, i32 %257, i32 5, i32 18)
  %259 = load %struct.av7110*, %struct.av7110** %3, align 8
  %260 = load i32, i32* @MSP_WR_DEM, align 4
  %261 = call i32 @msp_writereg(%struct.av7110* %259, i32 %260, i32 5, i32 27)
  %262 = load %struct.av7110*, %struct.av7110** %3, align 8
  %263 = load i32, i32* @MSP_WR_DEM, align 4
  %264 = call i32 @msp_writereg(%struct.av7110* %262, i32 %263, i32 5, i32 48)
  %265 = load %struct.av7110*, %struct.av7110** %3, align 8
  %266 = load i32, i32* @MSP_WR_DEM, align 4
  %267 = call i32 @msp_writereg(%struct.av7110* %265, i32 %266, i32 5, i32 66)
  %268 = load %struct.av7110*, %struct.av7110** %3, align 8
  %269 = load i32, i32* @MSP_WR_DEM, align 4
  %270 = call i32 @msp_writereg(%struct.av7110* %268, i32 %269, i32 5, i32 72)
  %271 = load %struct.av7110*, %struct.av7110** %3, align 8
  %272 = load i32, i32* @MSP_WR_DEM, align 4
  %273 = call i32 @msp_writereg(%struct.av7110* %271, i32 %272, i32 131, i32 40960)
  %274 = load %struct.av7110*, %struct.av7110** %3, align 8
  %275 = load i32, i32* @MSP_WR_DEM, align 4
  %276 = call i32 @msp_writereg(%struct.av7110* %274, i32 %275, i32 147, i32 170)
  %277 = load %struct.av7110*, %struct.av7110** %3, align 8
  %278 = load i32, i32* @MSP_WR_DEM, align 4
  %279 = call i32 @msp_writereg(%struct.av7110* %277, i32 %278, i32 155, i32 1276)
  %280 = load %struct.av7110*, %struct.av7110** %3, align 8
  %281 = load i32, i32* @MSP_WR_DEM, align 4
  %282 = call i32 @msp_writereg(%struct.av7110* %280, i32 %281, i32 163, i32 910)
  %283 = load %struct.av7110*, %struct.av7110** %3, align 8
  %284 = load i32, i32* @MSP_WR_DEM, align 4
  %285 = call i32 @msp_writereg(%struct.av7110* %283, i32 %284, i32 171, i32 1222)
  %286 = load %struct.av7110*, %struct.av7110** %3, align 8
  %287 = load i32, i32* @MSP_WR_DEM, align 4
  %288 = call i32 @msp_writereg(%struct.av7110* %286, i32 %287, i32 86, i32 0)
  br label %289

289:                                              ; preds = %222, %86
  %290 = load i32, i32* @standard, align 4
  %291 = load i32, i32* @dvb_standard, align 4
  %292 = call i32 @memcpy(i32 %290, i32 %291, i32 8)
  %293 = load %struct.av7110*, %struct.av7110** %3, align 8
  %294 = getelementptr inbounds %struct.av7110, %struct.av7110* %293, i32 0, i32 1
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %294, align 8
  %296 = load i32, i32* @DD1_STREAM_B, align 4
  %297 = call i32 @saa7146_write(%struct.TYPE_8__* %295, i32 %296, i32 0)
  %298 = load %struct.av7110*, %struct.av7110** %3, align 8
  %299 = getelementptr inbounds %struct.av7110, %struct.av7110* %298, i32 0, i32 1
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = load i32, i32* @DD1_INIT, align 4
  %302 = call i32 @saa7146_write(%struct.TYPE_8__* %300, i32 %301, i32 50333440)
  %303 = load %struct.av7110*, %struct.av7110** %3, align 8
  %304 = getelementptr inbounds %struct.av7110, %struct.av7110* %303, i32 0, i32 1
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %304, align 8
  %306 = load i32, i32* @MC2, align 4
  %307 = load i32, i32* @MASK_09, align 4
  %308 = load i32, i32* @MASK_25, align 4
  %309 = or i32 %307, %308
  %310 = load i32, i32* @MASK_10, align 4
  %311 = or i32 %309, %310
  %312 = load i32, i32* @MASK_26, align 4
  %313 = or i32 %311, %312
  %314 = call i32 @saa7146_write(%struct.TYPE_8__* %305, i32 %306, i32 %313)
  store i32 0, i32* %2, align 4
  br label %315

315:                                              ; preds = %289, %40
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i32 @i2c_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @msp_readreg(%struct.av7110*, i32, i32, i32*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @msp_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @INFO(i8*) #1

declare dso_local i64 @ves1820_writereg(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @saa7146_setgpio(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @saa7146_write(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
