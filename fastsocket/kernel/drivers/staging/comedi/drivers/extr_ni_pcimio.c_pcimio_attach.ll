; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcimio.c_pcimio_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcimio.c_pcimio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.comedi_device = type { i64, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32* }
%struct.comedi_devconfig = type { i32* }

@.str = private unnamed_addr constant [21 x i8] c"comedi%d: ni_pcimio:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@boardtype = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ni_reg_m_series_mask = common dso_local global i32 0, align 4
@m_series_stc_writew = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_11__* null, align 8
@m_series_stc_readw = common dso_local global i32 0, align 4
@m_series_stc_writel = common dso_local global i32 0, align 4
@m_series_stc_readl = common dso_local global i32 0, align 4
@e_series_win_out = common dso_local global i32 0, align 4
@e_series_win_in = common dso_local global i32 0, align 4
@win_out2 = common dso_local global i32 0, align 4
@win_in2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c" error setting up mite\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ni_reg_6143 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c" unknown irq (bad)\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c" ( irq = %u )\00", align 1
@ni_E_interrupt = common dso_local global i32 0, align 4
@NI_E_IRQ_FLAGS = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c" irq not available\0A\00", align 1
@pcimio_ai_change = common dso_local global i32 0, align 4
@NI_AI_SUBDEV = common dso_local global i64 0, align 8
@pcimio_ao_change = common dso_local global i32 0, align 4
@NI_AO_SUBDEV = common dso_local global i64 0, align 8
@pcimio_gpct0_change = common dso_local global i32 0, align 4
@pcimio_gpct1_change = common dso_local global i32 0, align 4
@pcimio_dio_change = common dso_local global i32 0, align 4
@NI_DIO_SUBDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcimio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcimio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call i32 @ni_alloc_private(%struct.comedi_device* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %251

17:                                               ; preds = %2
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pcimio_find_device(%struct.comedi_device* %18, i32 %23, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %251

34:                                               ; preds = %17
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @boardtype, i32 0, i32 1), align 4
  %36 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @boardtype, i32 0, i32 1), align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @boardtype, i32 0, i32 0), align 4
  %41 = load i32, i32* @ni_reg_m_series_mask, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 8
  store i32* @m_series_stc_writew, i32** %46, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 7
  store i32* @m_series_stc_readw, i32** %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 6
  store i32* @m_series_stc_writel, i32** %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 5
  store i32* @m_series_stc_readl, i32** %52, align 8
  br label %62

53:                                               ; preds = %34
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 8
  store i32* @e_series_win_out, i32** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 7
  store i32* @e_series_win_in, i32** %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 6
  store i32* @win_out2, i32** %59, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 5
  store i32* @win_in2, i32** %61, align 8
  br label %62

62:                                               ; preds = %53, %44
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = call i32 @mite_setup(%struct.TYPE_10__* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %251

72:                                               ; preds = %62
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @comedi_set_hw_dev(%struct.comedi_device* %73, i32* %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = call i8* @mite_alloc_ring(%struct.TYPE_10__* %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 4
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %72
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %251

95:                                               ; preds = %72
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = call i8* @mite_alloc_ring(%struct.TYPE_10__* %98)
  %100 = bitcast i8* %99 to i32*
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 3
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %95
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %251

110:                                              ; preds = %95
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = call i8* @mite_alloc_ring(%struct.TYPE_10__* %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %251

125:                                              ; preds = %110
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = call i8* @mite_alloc_ring(%struct.TYPE_10__* %128)
  %130 = bitcast i8* %129 to i32*
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = load i32**, i32*** %132, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 0
  store i32* %130, i32** %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  %140 = icmp eq i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %125
  %142 = load i32, i32* @ENOMEM, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %251

144:                                              ; preds = %125
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = call i8* @mite_alloc_ring(%struct.TYPE_10__* %147)
  %149 = bitcast i8* %148 to i32*
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32**, i32*** %151, align 8
  %153 = getelementptr inbounds i32*, i32** %152, i64 1
  store i32* %149, i32** %153, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = load i32, i32* @ENOMEM, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %3, align 4
  br label %251

163:                                              ; preds = %144
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @boardtype, i32 0, i32 0), align 4
  %165 = load i32, i32* @ni_reg_m_series_mask, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %170 = call i32 @m_series_init_eeprom_buffer(%struct.comedi_device* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @boardtype, i32 0, i32 0), align 4
  %173 = load i32, i32* @ni_reg_6143, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %177 = call i32 @init_6143(%struct.comedi_device* %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** @devpriv, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = call i64 @mite_irq(%struct.TYPE_10__* %181)
  %183 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %184 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %183, i32 0, i32 0
  store i64 %182, i64* %184, align 8
  %185 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %186 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %178
  %190 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %211

191:                                              ; preds = %178
  %192 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %193 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %194)
  %196 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %197 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* @ni_E_interrupt, align 4
  %200 = load i32, i32* @NI_E_IRQ_FLAGS, align 4
  %201 = load i32, i32* @DRV_NAME, align 4
  %202 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %203 = call i32 @request_irq(i64 %198, i32 %199, i32 %200, i32 %201, %struct.comedi_device* %202)
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %6, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %191
  %207 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %208 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %209 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %208, i32 0, i32 0
  store i64 0, i64* %209, align 8
  br label %210

210:                                              ; preds = %206, %191
  br label %211

211:                                              ; preds = %210, %189
  %212 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %213 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %214 = call i32 @ni_E_init(%struct.comedi_device* %212, %struct.comedi_devconfig* %213)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = load i32, i32* %6, align 4
  store i32 %218, i32* %3, align 4
  br label %251

219:                                              ; preds = %211
  %220 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %221 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %220, i32 0, i32 1
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = load i64, i64* @NI_AI_SUBDEV, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  store i32* @pcimio_ai_change, i32** %225, align 8
  %226 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %227 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %226, i32 0, i32 1
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i64, i64* @NI_AO_SUBDEV, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  store i32* @pcimio_ao_change, i32** %231, align 8
  %232 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %233 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %232, i32 0, i32 1
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = call i64 @NI_GPCT_SUBDEV(i32 0)
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 0
  store i32* @pcimio_gpct0_change, i32** %237, align 8
  %238 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %239 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %238, i32 0, i32 1
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = call i64 @NI_GPCT_SUBDEV(i32 1)
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  store i32* @pcimio_gpct1_change, i32** %243, align 8
  %244 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %245 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %244, i32 0, i32 1
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %245, align 8
  %247 = load i64, i64* @NI_DIO_SUBDEV, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  store i32* @pcimio_dio_change, i32** %249, align 8
  %250 = load i32, i32* %6, align 4
  store i32 %250, i32* %3, align 4
  br label %251

251:                                              ; preds = %219, %217, %160, %141, %122, %107, %92, %69, %32, %15
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ni_alloc_private(%struct.comedi_device*) #1

declare dso_local i32 @pcimio_find_device(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @mite_setup(%struct.TYPE_10__*) #1

declare dso_local i32 @comedi_set_hw_dev(%struct.comedi_device*, i32*) #1

declare dso_local i8* @mite_alloc_ring(%struct.TYPE_10__*) #1

declare dso_local i32 @m_series_init_eeprom_buffer(%struct.comedi_device*) #1

declare dso_local i32 @init_6143(%struct.comedi_device*) #1

declare dso_local i64 @mite_irq(%struct.TYPE_10__*) #1

declare dso_local i32 @request_irq(i64, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @ni_E_init(%struct.comedi_device*, %struct.comedi_devconfig*) #1

declare dso_local i64 @NI_GPCT_SUBDEV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
