; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i32, i64, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }
%struct.comedi_devconfig = type { i64* }

@a2150_attach.timeout = internal constant i32 2000, align 4
@.str = private unnamed_addr constant [23 x i8] c"comedi%d: %s: io 0x%lx\00", align 1
@driver_a2150 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c", irq %u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c", no irq\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c", dma %u\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c", no dma\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c" io base address required\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@A2150_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c" I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c" invalid irq line %u\0A\00", align 1
@a2150_interrupt = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"unable to allocate irq %u\0A\00", align 1
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c" invalid dma channel %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c" failed to allocate dma channel %u\0A\00", align 1
@A2150_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@DMA_MODE_READ = common dso_local global i32 0, align 4
@a2150_boards = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_4__* null, align 8
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@SDF_OTHER = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@range_a2150 = common dso_local global i32 0, align 4
@a2150_ai_cmd = common dso_local global i32 0, align 4
@a2150_ai_cmdtest = common dso_local global i32 0, align 4
@a2150_ai_rinsn = common dso_local global i32 0, align 4
@a2150_cancel = common dso_local global i32 0, align 4
@HW_COUNT_DISABLE = common dso_local global i32 0, align 4
@I8253_MODE_REG = common dso_local global i64 0, align 8
@IRQ_DMA_CNTRL_REG = common dso_local global i64 0, align 8
@DPD_BIT = common dso_local global i32 0, align 4
@APD_BIT = common dso_local global i32 0, align 4
@CONFIG_REG = common dso_local global i64 0, align 8
@DCAL_BIT = common dso_local global i32 0, align 4
@STATUS_REG = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [55 x i8] c" timed out waiting for offset calibration to complete\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@ENABLE0_BIT = common dso_local global i32 0, align 4
@ENABLE1_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @a2150_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %11 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @driver_a2150, i32 0, i32 0), align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i64 %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %41

39:                                               ; preds = %2
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %49

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = call i64 @alloc_private(%struct.comedi_device* %51, i32 4)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %317

57:                                               ; preds = %49
  %58 = load i64, i64* %7, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %317

64:                                               ; preds = %57
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @A2150_SIZE, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @driver_a2150, i32 0, i32 0), align 4
  %68 = call i32 @request_region(i64 %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %317

74:                                               ; preds = %64
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 8
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 13
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %8, align 4
  %91 = icmp ugt i32 %90, 15
  br i1 %91, label %92, label %97

92:                                               ; preds = %89, %86, %83, %80
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %317

97:                                               ; preds = %89
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @a2150_interrupt, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @driver_a2150, i32 0, i32 0), align 4
  %101 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %102 = call i64 @request_irq(i32 %98, i32 %99, i32 0, i32 %100, %struct.comedi_device* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %97
  %105 = load i32, i32* %8, align 4
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %317

109:                                              ; preds = %97
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @IRQ_LVL_BITS(i32 %110)
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %118 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %109, %74
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %173

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %123, 4
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp ugt i32 %126, 7
  br i1 %127, label %128, label %133

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %9, align 4
  %130 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %3, align 4
  br label %317

133:                                              ; preds = %125
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @driver_a2150, i32 0, i32 0), align 4
  %136 = call i64 @request_dma(i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %317

143:                                              ; preds = %133
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @A2150_DMA_BUFFER_SIZE, align 4
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = load i32, i32* @GFP_DMA, align 4
  %150 = or i32 %148, %149
  %151 = call i32* @kmalloc(i32 %147, i32 %150)
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 3
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %143
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %317

161:                                              ; preds = %143
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @disable_dma(i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @DMA_MODE_READ, align 4
  %166 = call i32 @set_dma_mode(i32 %164, i32 %165)
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @DMA_CHAN_BITS(i32 %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %161, %119
  %174 = load i64, i64* @a2150_boards, align 8
  %175 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %176 = call i64 @a2150_probe(%struct.comedi_device* %175)
  %177 = add nsw i64 %174, %176
  %178 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %179 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %178, i32 0, i32 5
  store i64 %177, i64* %179, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** @thisboard, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %184 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  %185 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %186 = call i64 @alloc_subdevices(%struct.comedi_device* %185, i32 1)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %173
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %317

191:                                              ; preds = %173
  %192 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %193 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %192, i32 0, i32 3
  %194 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %193, align 8
  %195 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %194, i64 0
  store %struct.comedi_subdevice* %195, %struct.comedi_subdevice** %6, align 8
  %196 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %197 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %198 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %197, i32 0, i32 2
  store %struct.comedi_subdevice* %196, %struct.comedi_subdevice** %198, align 8
  %199 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %200 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %201 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %200, i32 0, i32 9
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* @SDF_READABLE, align 4
  %203 = load i32, i32* @SDF_GROUND, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @SDF_OTHER, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @SDF_CMD_READ, align 4
  %208 = or i32 %206, %207
  %209 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %210 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %212 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %211, i32 0, i32 1
  store i32 4, i32* %212, align 4
  %213 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %214 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %213, i32 0, i32 2
  store i32 4, i32* %214, align 8
  %215 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %216 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %215, i32 0, i32 3
  store i32 65535, i32* %216, align 4
  %217 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %218 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %217, i32 0, i32 8
  store i32* @range_a2150, i32** %218, align 8
  %219 = load i32, i32* @a2150_ai_cmd, align 4
  %220 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %221 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %220, i32 0, i32 7
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* @a2150_ai_cmdtest, align 4
  %223 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %224 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* @a2150_ai_rinsn, align 4
  %226 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %227 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @a2150_cancel, align 4
  %229 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %230 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %229, i32 0, i32 4
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* @HW_COUNT_DISABLE, align 4
  %232 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %233 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @I8253_MODE_REG, align 8
  %236 = add i64 %234, %235
  %237 = call i32 @outw(i32 %231, i64 %236)
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %242 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @IRQ_DMA_CNTRL_REG, align 8
  %245 = add i64 %243, %244
  %246 = call i32 @outw(i32 %240, i64 %245)
  %247 = load i32, i32* @DPD_BIT, align 4
  %248 = load i32, i32* @APD_BIT, align 4
  %249 = or i32 %247, %248
  %250 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %251 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @CONFIG_REG, align 8
  %254 = add i64 %252, %253
  %255 = call i32 @outw_p(i32 %249, i64 %254)
  %256 = load i32, i32* @DPD_BIT, align 4
  %257 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %258 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @CONFIG_REG, align 8
  %261 = add i64 %259, %260
  %262 = call i32 @outw_p(i32 %256, i64 %261)
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  store i32 0, i32* %264, align 8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %269 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @CONFIG_REG, align 8
  %272 = add i64 %270, %271
  %273 = call i32 @outw(i32 %267, i64 %272)
  store i32 0, i32* %10, align 4
  br label %274

274:                                              ; preds = %290, %191
  %275 = load i32, i32* %10, align 4
  %276 = icmp slt i32 %275, 2000
  br i1 %276, label %277, label %293

277:                                              ; preds = %274
  %278 = load i32, i32* @DCAL_BIT, align 4
  %279 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %280 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @STATUS_REG, align 8
  %283 = add i64 %281, %282
  %284 = call i32 @inw(i64 %283)
  %285 = and i32 %278, %284
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %277
  br label %293

288:                                              ; preds = %277
  %289 = call i32 @udelay(i32 1000)
  br label %290

290:                                              ; preds = %288
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %10, align 4
  br label %274

293:                                              ; preds = %287, %274
  %294 = load i32, i32* %10, align 4
  %295 = icmp eq i32 %294, 2000
  br i1 %295, label %296, label %300

296:                                              ; preds = %293
  %297 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  %298 = load i32, i32* @ETIME, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %3, align 4
  br label %317

300:                                              ; preds = %293
  %301 = load i32, i32* @ENABLE0_BIT, align 4
  %302 = load i32, i32* @ENABLE1_BIT, align 4
  %303 = or i32 %301, %302
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 8
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %312 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @CONFIG_REG, align 8
  %315 = add i64 %313, %314
  %316 = call i32 @outw(i32 %310, i64 %315)
  store i32 0, i32* %3, align 4
  br label %317

317:                                              ; preds = %300, %296, %188, %158, %138, %128, %104, %92, %70, %60, %54
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @request_region(i64, i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @IRQ_LVL_BITS(i32) #1

declare dso_local i64 @request_dma(i32, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @DMA_CHAN_BITS(i32) #1

declare dso_local i64 @a2150_probe(%struct.comedi_device*) #1

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outw_p(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
