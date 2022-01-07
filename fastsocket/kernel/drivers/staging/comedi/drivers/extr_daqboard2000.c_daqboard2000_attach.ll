; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_daqboard2000.c_daqboard2000_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_daqboard2000.c_daqboard2000_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i8*, i8*, %struct.pci_dev* }
%struct.pci_dev = type { i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32, %struct.TYPE_8__*, i32 }
%struct.comedi_subdevice = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.comedi_devconfig = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"comedi%d: daqboard2000:\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c" no daqboard2000 found at bus/slot: %d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" no daqboard2000 found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_7__* null, align 8
@n_boardtypes = common dso_local global i32 0, align 4
@boardtypes = common dso_local global %struct.TYPE_8__* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c" unknown subsystem id %08x (pretend it is an ids2)\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"daqboard2000\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c" failed to enable PCI device and request regions\0A\00", align 1
@DAQBOARD2000_PLX_SIZE = common dso_local global i32 0, align 4
@DAQBOARD2000_DAQ_SIZE = common dso_local global i32 0, align 4
@COMEDI_DEVCONF_AUX_DATA_LENGTH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"no FPGA initialization code, aborting\0A\00", align 1
@this_board = common dso_local global %struct.TYPE_6__* null, align 8
@COMEDI_SUBD_AI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_GROUND = common dso_local global i32 0, align 4
@daqboard2000_ai_insn_read = common dso_local global i32 0, align 4
@range_daqboard2000_ai = common dso_local global i32 0, align 4
@COMEDI_SUBD_AO = common dso_local global i32 0, align 4
@SDF_WRITABLE = common dso_local global i32 0, align 4
@daqboard2000_ao_insn_read = common dso_local global i32 0, align 4
@daqboard2000_ao_insn_write = common dso_local global i32 0, align 4
@range_daqboard2000_ao = common dso_local global i32 0, align 4
@daqboard2000_8255_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @daqboard2000_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daqboard2000_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.pci_dev* null, %struct.pci_dev** %8, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = call i32 @alloc_private(%struct.comedi_device* %29, i32 4)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %292

36:                                               ; preds = %2
  %37 = call %struct.pci_dev* @pci_get_device(i32 5654, i32 1033, %struct.pci_dev* null)
  store %struct.pci_dev* %37, %struct.pci_dev** %8, align 8
  br label %38

38:                                               ; preds = %65, %36
  %39 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %40 = icmp ne %struct.pci_dev* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %44, %41
  %48 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %47
  %56 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @PCI_SLOT(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %47
  br label %65

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %44
  br label %68

65:                                               ; preds = %62
  %66 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %67 = call %struct.pci_dev* @pci_get_device(i32 5654, i32 1033, %struct.pci_dev* %66)
  store %struct.pci_dev* %67, %struct.pci_dev** %8, align 8
  br label %38

68:                                               ; preds = %64, %38
  %69 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %70 = icmp ne %struct.pci_dev* %69, null
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  br label %83

81:                                               ; preds = %74
  %82 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %292

86:                                               ; preds = %68
  %87 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  store %struct.pci_dev* %87, %struct.pci_dev** %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 %93, 16
  %95 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %96 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %94, %97
  store i32 %98, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %99

99:                                               ; preds = %127, %86
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @n_boardtypes, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boardtypes, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %103
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boardtypes, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boardtypes, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %122
  %124 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %125 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %124, i32 0, i32 3
  store %struct.TYPE_8__* %123, %struct.TYPE_8__** %125, align 8
  br label %126

126:                                              ; preds = %112, %103
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %99

130:                                              ; preds = %99
  %131 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %132 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %131, i32 0, i32 3
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = icmp ne %struct.TYPE_8__* %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %13, align 4
  %137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** @boardtypes, align 8
  %139 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %140 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %139, i32 0, i32 3
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %140, align 8
  br label %141

141:                                              ; preds = %135, %130
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %144 = call i32 @comedi_pci_enable(%struct.pci_dev* %143, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %142
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i32, i32* @EIO, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %292

151:                                              ; preds = %142
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  %154 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %155 = call i32 @pci_resource_start(%struct.pci_dev* %154, i32 0)
  %156 = load i32, i32* @DAQBOARD2000_PLX_SIZE, align 4
  %157 = call i8* @ioremap(i32 %155, i32 %156)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %161 = call i32 @pci_resource_start(%struct.pci_dev* %160, i32 2)
  %162 = load i32, i32* @DAQBOARD2000_DAQ_SIZE, align 4
  %163 = call i8* @ioremap(i32 %161, i32 %162)
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %175

170:                                              ; preds = %151
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %170, %151
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %292

178:                                              ; preds = %170
  %179 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %180 = call i32 @alloc_subdevices(%struct.comedi_device* %179, i32 3)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %290

184:                                              ; preds = %178
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr i8, i8* %187, i64 108
  %189 = call i32 @readl(i8* %188)
  %190 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %191 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = call i8* @comedi_aux_data(i32* %192, i32 0)
  store i8* %193, i8** %9, align 8
  %194 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %195 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i64, i64* @COMEDI_DEVCONF_AUX_DATA_LENGTH, align 8
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %10, align 4
  %200 = load i8*, i8** %9, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %184
  %203 = load i32, i32* %10, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = load i32, i32* %10, align 4
  %209 = call i32 @initialize_daqboard2000(%struct.comedi_device* %206, i8* %207, i32 %208)
  store i32 %209, i32* %6, align 4
  br label %214

210:                                              ; preds = %202, %184
  %211 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %212 = load i32, i32* @EIO, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %210, %205
  %215 = load i32, i32* %6, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  br label %290

218:                                              ; preds = %214
  %219 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %220 = call i32 @daqboard2000_initializeAdc(%struct.comedi_device* %219)
  %221 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %222 = call i32 @daqboard2000_initializeDac(%struct.comedi_device* %221)
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** @devpriv, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = ptrtoint i8* %225 to i64
  %227 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %228 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %227, i32 0, i32 0
  store i64 %226, i64* %228, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** @this_board, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %233 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  %234 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %235 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %234, i32 0, i32 1
  %236 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %235, align 8
  %237 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %236, i64 0
  store %struct.comedi_subdevice* %237, %struct.comedi_subdevice** %7, align 8
  %238 = load i32, i32* @COMEDI_SUBD_AI, align 4
  %239 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %240 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %239, i32 0, i32 6
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @SDF_READABLE, align 4
  %242 = load i32, i32* @SDF_GROUND, align 4
  %243 = or i32 %241, %242
  %244 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %245 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %247 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %246, i32 0, i32 1
  store i32 24, i32* %247, align 4
  %248 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %249 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %248, i32 0, i32 2
  store i32 65535, i32* %249, align 8
  %250 = load i32, i32* @daqboard2000_ai_insn_read, align 4
  %251 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %252 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 4
  %253 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %254 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %253, i32 0, i32 3
  store i32* @range_daqboard2000_ai, i32** %254, align 8
  %255 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %256 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %255, i32 0, i32 1
  %257 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %256, align 8
  %258 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %257, i64 1
  store %struct.comedi_subdevice* %258, %struct.comedi_subdevice** %7, align 8
  %259 = load i32, i32* @COMEDI_SUBD_AO, align 4
  %260 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %261 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %260, i32 0, i32 6
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* @SDF_WRITABLE, align 4
  %263 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %264 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  %265 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %266 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %265, i32 0, i32 1
  store i32 2, i32* %266, align 4
  %267 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %268 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %267, i32 0, i32 2
  store i32 65535, i32* %268, align 8
  %269 = load i32, i32* @daqboard2000_ao_insn_read, align 4
  %270 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %271 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %270, i32 0, i32 5
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* @daqboard2000_ao_insn_write, align 4
  %273 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %274 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  %275 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %276 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %275, i32 0, i32 3
  store i32* @range_daqboard2000_ao, i32** %276, align 8
  %277 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %278 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %277, i32 0, i32 1
  %279 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %278, align 8
  %280 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %279, i64 2
  store %struct.comedi_subdevice* %280, %struct.comedi_subdevice** %7, align 8
  %281 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %282 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %283 = load i32, i32* @daqboard2000_8255_cb, align 4
  %284 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %285 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = add i64 %286, 64
  %288 = call i32 @subdev_8255_init(%struct.comedi_device* %281, %struct.comedi_subdevice* %282, i32 %283, i64 %287)
  store i32 %288, i32* %6, align 4
  %289 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %290

290:                                              ; preds = %218, %217, %183
  %291 = load i32, i32* %6, align 4
  store i32 %291, i32* %3, align 4
  br label %292

292:                                              ; preds = %290, %175, %147, %83, %33
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i32 @PCI_SLOT(i32) #1

declare dso_local i32 @comedi_pci_enable(%struct.pci_dev*, i8*) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @readl(i8*) #1

declare dso_local i8* @comedi_aux_data(i32*, i32) #1

declare dso_local i32 @initialize_daqboard2000(%struct.comedi_device*, i8*, i32) #1

declare dso_local i32 @daqboard2000_initializeAdc(%struct.comedi_device*) #1

declare dso_local i32 @daqboard2000_initializeDac(%struct.comedi_device*) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
