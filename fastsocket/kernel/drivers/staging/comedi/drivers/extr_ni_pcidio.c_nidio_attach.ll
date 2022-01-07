; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_pcidio.c_nidio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32 }
%struct.comedi_device = type { i32, %struct.comedi_subdevice*, %struct.comedi_subdevice*, i32, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.comedi_devconfig = type { i32* }

@.str = private unnamed_addr constant [17 x i8] c"comedi%d: nidio:\00", align 1
@devpriv = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"error setting up mite\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@this_board = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@nidio96_8255_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" rev=%d\00", align 1
@Chip_Version = common dso_local global i64 0, align 8
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@SDF_LSAMPL = common dso_local global i32 0, align 4
@SDF_PACKED = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@ni_pcidio_insn_config = common dso_local global i32 0, align 4
@ni_pcidio_insn_bits = common dso_local global i32 0, align 4
@ni_pcidio_cmd = common dso_local global i32 0, align 4
@ni_pcidio_cmdtest = common dso_local global i32 0, align 4
@ni_pcidio_cancel = common dso_local global i32 0, align 4
@ni_pcidio_change = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@Master_DMA_And_Interrupt_Control = common dso_local global i64 0, align 8
@nidio_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"ni_pcidio\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c" irq not available\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @nidio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nidio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = call i32 @alloc_private(%struct.comedi_device* %15, i32 4)
  store i32 %16, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %3, align 4
  br label %253

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %25 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %26 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %31 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nidio_find_device(%struct.comedi_device* %24, i32 %29, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %253

40:                                               ; preds = %20
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = call i32 @mite_setup(%struct.TYPE_9__* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %253

50:                                               ; preds = %40
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @comedi_set_hw_dev(%struct.comedi_device* %51, i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = call i32* @mite_alloc_ring(%struct.TYPE_9__* %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %253

72:                                               ; preds = %50
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this_board, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %77 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = call i32 @mite_irq(%struct.TYPE_9__* %80)
  store i32 %81, i32* %10, align 4
  %82 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %83 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this_board, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %72
  %91 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %92 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %93 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @pci_6534_upload_firmware(%struct.comedi_device* %91, i32* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %253

100:                                              ; preds = %90
  br label %101

101:                                              ; preds = %100, %72
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this_board, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this_board, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %9, align 4
  br label %111

110:                                              ; preds = %101
  store i32 1, i32* %9, align 4
  br label %111

111:                                              ; preds = %110, %106
  %112 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @alloc_subdevices(%struct.comedi_device* %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %253

118:                                              ; preds = %111
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this_board, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %152, label %123

123:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %148, %123
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** @this_board, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %124
  %131 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %132 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 2
  %134 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %134, i64 %136
  %138 = load i32, i32* @nidio96_8255_cb, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i64 @NIDIO_8255_BASE(i32 %144)
  %146 = add nsw i64 %143, %145
  %147 = call i32 @subdev_8255_init(%struct.comedi_device* %131, %struct.comedi_subdevice* %137, i32 %138, i64 %146)
  br label %148

148:                                              ; preds = %130
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %124

151:                                              ; preds = %124
  br label %251

152:                                              ; preds = %118
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @Chip_Version, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @readb(i64 %159)
  %161 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %163 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %162, i32 0, i32 2
  %164 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %163, align 8
  %165 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %164, i64 0
  store %struct.comedi_subdevice* %165, %struct.comedi_subdevice** %6, align 8
  %166 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %167 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %168 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %167, i32 0, i32 1
  store %struct.comedi_subdevice* %166, %struct.comedi_subdevice** %168, align 8
  %169 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %170 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %171 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %170, i32 0, i32 12
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @SDF_READABLE, align 4
  %173 = load i32, i32* @SDF_WRITABLE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @SDF_LSAMPL, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @SDF_PACKED, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @SDF_CMD_READ, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %182 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  %183 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %184 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %183, i32 0, i32 1
  store i32 32, i32* %184, align 4
  %185 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %186 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %185, i32 0, i32 11
  store i32* @range_digital, i32** %186, align 8
  %187 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %188 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %187, i32 0, i32 2
  store i32 1, i32* %188, align 8
  %189 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %190 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %189, i32 0, i32 10
  store i32* @ni_pcidio_insn_config, i32** %190, align 8
  %191 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %192 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %191, i32 0, i32 9
  store i32* @ni_pcidio_insn_bits, i32** %192, align 8
  %193 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %194 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %193, i32 0, i32 8
  store i32* @ni_pcidio_cmd, i32** %194, align 8
  %195 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %196 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %195, i32 0, i32 7
  store i32* @ni_pcidio_cmdtest, i32** %196, align 8
  %197 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %198 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %197, i32 0, i32 6
  store i32* @ni_pcidio_cancel, i32** %198, align 8
  %199 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %200 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %199, i32 0, i32 3
  store i32 32, i32* %200, align 4
  %201 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %202 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %201, i32 0, i32 5
  store i32* @ni_pcidio_change, i32** %202, align 8
  %203 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %204 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %205 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @Port_IO(i32 0)
  %212 = add nsw i64 %210, %211
  %213 = call i32 @writel(i32 0, i64 %212)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @Port_Pin_Directions(i32 0)
  %220 = add nsw i64 %218, %219
  %221 = call i32 @writel(i32 0, i64 %220)
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i64 @Port_Pin_Mask(i32 0)
  %228 = add nsw i64 %226, %227
  %229 = call i32 @writel(i32 0, i64 %228)
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** @devpriv, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @Master_DMA_And_Interrupt_Control, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @writeb(i32 0, i64 %236)
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* @nidio_interrupt, align 4
  %240 = load i32, i32* @IRQF_SHARED, align 4
  %241 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %242 = call i32 @request_irq(i32 %238, i32 %239, i32 %240, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.comedi_device* %241)
  store i32 %242, i32* %8, align 4
  %243 = load i32, i32* %8, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %152
  %246 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %247

247:                                              ; preds = %245, %152
  %248 = load i32, i32* %10, align 4
  %249 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %250 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %247, %151
  %252 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %251, %116, %98, %69, %47, %38, %18
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nidio_find_device(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @mite_setup(%struct.TYPE_9__*) #1

declare dso_local i32 @comedi_set_hw_dev(%struct.comedi_device*, i32*) #1

declare dso_local i32* @mite_alloc_ring(%struct.TYPE_9__*) #1

declare dso_local i32 @mite_irq(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_6534_upload_firmware(%struct.comedi_device*, i32*) #1

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i64) #1

declare dso_local i64 @NIDIO_8255_BASE(i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @Port_IO(i32) #1

declare dso_local i64 @Port_Pin_Directions(i32) #1

declare dso_local i64 @Port_Pin_Mask(i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
