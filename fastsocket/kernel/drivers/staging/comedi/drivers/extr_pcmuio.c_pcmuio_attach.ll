; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i64 }
%struct.comedi_device = type { i64, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i64, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64 }
%struct.comedi_devconfig = type { i64* }

@MAX_ASICS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"comedi%d: %s: io: %lx \00", align 1
@driver = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@thisboard = common dso_local global %struct.TYPE_9__* null, align 8
@ASIC_IOSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"I/O port conflict\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot allocate private data structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_12__* null, align 8
@CHANS_PER_ASIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"cannot allocate subdevice private data structures\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"cannot allocate subdevice data structures\0A\00", align 1
@range_digital = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@pcmuio_dio_insn_bits = common dso_local global i32 0, align 4
@pcmuio_dio_insn_config = common dso_local global i32 0, align 4
@MAX_CHANS_PER_SUBDEV = common dso_local global i32 0, align 4
@subpriv = common dso_local global %struct.TYPE_10__* null, align 8
@PORTS_PER_SUBDEV = common dso_local global i32 0, align 4
@PORTS_PER_ASIC = common dso_local global i32 0, align 4
@CHANS_PER_PORT = common dso_local global i32 0, align 4
@INTR_PORTS_PER_ASIC = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@pcmuio_cancel = common dso_local global i32 0, align 4
@pcmuio_cmd = common dso_local global i32 0, align 4
@pcmuio_cmdtest = common dso_local global i32 0, align 4
@interrupt_pcmuio = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"irq: %u \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"second ASIC irq: %u \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"(IRQ mode disabled) \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"attached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pcmuio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* @MAX_ASICS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %24 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %33, i32* %34, align 16
  %35 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %43 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @driver, i32 0, i32 0), align 4
  %46 = load i64, i64* %13, align 8
  %47 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i64 %46)
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %2
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @thisboard, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ASIC_IOSIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @driver, i32 0, i32 0), align 4
  %61 = call i32 @request_region(i64 %54, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %53, %2
  %64 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %446

67:                                               ; preds = %53
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** @thisboard, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %72 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %74 = call i64 @alloc_private(%struct.comedi_device* %73, i32 4)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %446

80:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %125, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @MAX_ASICS, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %128

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 %86, i32* %93, align 4
  %94 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @ASIC_IOSIZE, align 4
  %99 = mul nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = add i64 %96, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 %102, i32* %109, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  store i32 0, i32* %116, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = call i32 @spin_lock_init(i32* %123)
  br label %125

125:                                              ; preds = %85
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %81

128:                                              ; preds = %81
  %129 = load i32, i32* @CHANS_PER_ASIC, align 4
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** @thisboard, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @CALC_N_SUBDEVS(i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @GFP_KERNEL, align 4
  %138 = call i64 @kcalloc(i32 %136, i32 4, i32 %137)
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %128
  %146 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %446

149:                                              ; preds = %128
  %150 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %151 = load i32, i32* %9, align 4
  %152 = call i64 @alloc_subdevices(%struct.comedi_device* %150, i32 %151)
  %153 = icmp slt i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %446

158:                                              ; preds = %149
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %337, %158
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %162 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = icmp slt i32 %160, %164
  br i1 %165, label %166, label %340

166:                                              ; preds = %159
  %167 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %168 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %167, i32 0, i32 3
  %169 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %169, i64 %171
  store %struct.comedi_subdevice* %172, %struct.comedi_subdevice** %6, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %175, %177
  %179 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %180 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %179, i32 0, i32 11
  store i64 %178, i64* %180, align 8
  %181 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %182 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  %183 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %184 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %183, i32 0, i32 10
  store i32* @range_digital, i32** %184, align 8
  %185 = load i32, i32* @SDF_READABLE, align 4
  %186 = load i32, i32* @SDF_WRITABLE, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %189 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %191 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %192 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %191, i32 0, i32 9
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* @pcmuio_dio_insn_bits, align 4
  %194 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %195 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %194, i32 0, i32 8
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* @pcmuio_dio_insn_config, align 4
  %197 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %198 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @MAX_CHANS_PER_SUBDEV, align 4
  %201 = call i32 @min(i32 %199, i32 %200)
  %202 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %203 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  store i32 -1, i32* %206, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  store i32 -1, i32* %209, align 4
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 2
  store i32 -1, i32* %212, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 3
  store i32 -1, i32* %215, align 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 6
  store i64 0, i64* %218, align 8
  %219 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %220 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %219, i32 0, i32 3
  store i32 1, i32* %220, align 4
  store i32 0, i32* %17, align 4
  br label %221

221:                                              ; preds = %318, %166
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* @PORTS_PER_SUBDEV, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %323

225:                                              ; preds = %221
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @PORTS_PER_ASIC, align 4
  %228 = icmp sge i32 %226, %227
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  store i32 0, i32* %10, align 4
  %230 = load i32, i32* %11, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %232

232:                                              ; preds = %229, %225
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %10, align 4
  %242 = add nsw i32 %240, %241
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %242, i32* %248, align 4
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* @CHANS_PER_PORT, align 4
  %251 = load i32, i32* @INTR_PORTS_PER_ASIC, align 4
  %252 = mul nsw i32 %250, %251
  %253 = icmp slt i32 %249, %252
  br i1 %253, label %254, label %314

254:                                              ; preds = %232
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %314

260:                                              ; preds = %254
  %261 = load i32, i32* %11, align 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 0
  store i32 %261, i32* %264, align 8
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 6
  store i64 0, i64* %267, align 8
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 5
  store i64 0, i64* %270, align 8
  %271 = load i32, i32* %17, align 4
  %272 = mul nsw i32 %271, 8
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 2
  store i32 %276, i32* %279, align 8
  %280 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %281 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %282, %286
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 3
  store i32 %287, i32* %290, align 4
  %291 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %292 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %293 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %292, i32 0, i32 2
  store %struct.comedi_subdevice* %291, %struct.comedi_subdevice** %293, align 8
  %294 = load i32, i32* @SDF_CMD_READ, align 4
  %295 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %296 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 4
  %299 = load i32, i32* @pcmuio_cancel, align 4
  %300 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %301 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %300, i32 0, i32 6
  store i32 %299, i32* %301, align 8
  %302 = load i32, i32* @pcmuio_cmd, align 4
  %303 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %304 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %303, i32 0, i32 5
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* @pcmuio_cmdtest, align 4
  %306 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %307 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %306, i32 0, i32 4
  store i32 %305, i32* %307, align 8
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %313 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %312, i32 0, i32 3
  store i32 %311, i32* %313, align 4
  br label %314

314:                                              ; preds = %260, %254, %232
  %315 = load i32, i32* @CHANS_PER_PORT, align 4
  %316 = load i32, i32* %12, align 4
  %317 = add nsw i32 %316, %315
  store i32 %317, i32* %12, align 4
  br label %318

318:                                              ; preds = %314
  %319 = load i32, i32* %17, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %10, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %10, align 4
  br label %221

323:                                              ; preds = %221
  %324 = load %struct.TYPE_10__*, %struct.TYPE_10__** @subpriv, align 8
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 4
  %327 = call i32 @spin_lock_init(i32* %326)
  %328 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %329 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* %8, align 4
  %332 = sub nsw i32 %331, %330
  store i32 %332, i32* %8, align 4
  %333 = load i32, i32* %8, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %323
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %336

336:                                              ; preds = %335, %323
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %7, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %7, align 4
  br label %159

340:                                              ; preds = %159
  %341 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %342 = call i32 @init_asics(%struct.comedi_device* %341)
  store i32 0, i32* %11, align 4
  br label %343

343:                                              ; preds = %414, %340
  %344 = getelementptr inbounds i32, i32* %22, i64 0
  %345 = load i32, i32* %344, align 16
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %343
  %348 = load i32, i32* %11, align 4
  %349 = load i32, i32* @MAX_ASICS, align 4
  %350 = icmp slt i32 %348, %349
  br label %351

351:                                              ; preds = %347, %343
  %352 = phi i1 [ false, %343 ], [ %350, %347 ]
  br i1 %352, label %353, label %417

353:                                              ; preds = %351
  %354 = load i32, i32* %11, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %22, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %402

359:                                              ; preds = %353
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %22, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @interrupt_pcmuio, align 4
  %365 = load i32, i32* @IRQF_SHARED, align 4
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** @thisboard, align 8
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %370 = call i64 @request_irq(i32 %363, i32 %364, i32 %365, i32 %368, %struct.comedi_device* %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %402

372:                                              ; preds = %359
  %373 = load i32, i32* %11, align 4
  %374 = sub nsw i32 %373, 1
  store i32 %374, i32* %18, align 4
  br label %375

375:                                              ; preds = %395, %372
  %376 = load i32, i32* %18, align 4
  %377 = icmp sge i32 %376, 0
  br i1 %377, label %378, label %398

378:                                              ; preds = %375
  %379 = load i32, i32* %18, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %22, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %384 = call i32 @free_irq(i32 %382, %struct.comedi_device* %383)
  %385 = load i32, i32* %18, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %22, i64 %386
  store i32 0, i32* %387, align 4
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %389, align 8
  %391 = load i32, i32* %18, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 2
  store i32 0, i32* %394, align 4
  br label %395

395:                                              ; preds = %378
  %396 = load i32, i32* %18, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %18, align 4
  br label %375

398:                                              ; preds = %375
  %399 = load i32, i32* %11, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %22, i64 %400
  store i32 0, i32* %401, align 4
  br label %402

402:                                              ; preds = %398, %359, %353
  %403 = load i32, i32* %11, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %22, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** @devpriv, align 8
  %408 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i32 0, i32 0
  %409 = load %struct.TYPE_8__*, %struct.TYPE_8__** %408, align 8
  %410 = load i32, i32* %11, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 2
  store i32 %406, i32* %413, align 4
  br label %414

414:                                              ; preds = %402
  %415 = load i32, i32* %11, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %11, align 4
  br label %343

417:                                              ; preds = %351
  %418 = getelementptr inbounds i32, i32* %22, i64 0
  %419 = load i32, i32* %418, align 16
  %420 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %421 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %420, i32 0, i32 1
  store i32 %419, i32* %421, align 8
  %422 = getelementptr inbounds i32, i32* %22, i64 0
  %423 = load i32, i32* %422, align 16
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %442

425:                                              ; preds = %417
  %426 = getelementptr inbounds i32, i32* %22, i64 0
  %427 = load i32, i32* %426, align 16
  %428 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %427)
  %429 = getelementptr inbounds i32, i32* %22, i64 1
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %441

432:                                              ; preds = %425
  %433 = load %struct.TYPE_9__*, %struct.TYPE_9__** @thisboard, align 8
  %434 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = icmp eq i32 %435, 2
  br i1 %436, label %437, label %441

437:                                              ; preds = %432
  %438 = getelementptr inbounds i32, i32* %22, i64 1
  %439 = load i32, i32* %438, align 4
  %440 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %439)
  br label %441

441:                                              ; preds = %437, %432, %425
  br label %444

442:                                              ; preds = %417
  %443 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %444

444:                                              ; preds = %442, %441
  %445 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %446

446:                                              ; preds = %444, %154, %145, %76, %63
  %447 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %447)
  %448 = load i32, i32* %3, align 4
  ret i32 %448
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @request_region(i64, i32, i32) #2

declare dso_local i64 @alloc_private(%struct.comedi_device*, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @CALC_N_SUBDEVS(i32) #2

declare dso_local i64 @kcalloc(i32, i32, i32) #2

declare dso_local i64 @alloc_subdevices(%struct.comedi_device*, i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @init_asics(%struct.comedi_device*) #2

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #2

declare dso_local i32 @free_irq(i32, %struct.comedi_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
