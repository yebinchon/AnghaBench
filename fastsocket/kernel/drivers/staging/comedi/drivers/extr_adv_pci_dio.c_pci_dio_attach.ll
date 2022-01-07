; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci_dio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_13__, %struct.TYPE_10__*, %struct.TYPE_12__*, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.comedi_device = type { i64, %struct.comedi_subdevice*, i32, %struct.TYPE_16__*, i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_devconfig = type { i64* }
%struct.pci_dev = type { i64, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"comedi%d: adv_pci_dio: \00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c", Error: Cann't allocate private memory!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_ANY_ID = common dso_local global i32 0, align 4
@n_boardtypes = common dso_local global i32 0, align 4
@boardtypes = common dso_local global %struct.TYPE_16__* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c", Error: Requested type of the card was not found!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@driver_pci_dio = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c", Error: Can't enable PCI device and request regions!\0A\00", align 1
@this_board = common dso_local global %struct.TYPE_11__* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c", b:s:f=%d:%d:%d, io=0x%4lx\00", align 1
@TYPE_PCI1760 = common dso_local global i64 0, align 8
@MAX_DI_SUBDEVS = common dso_local global i32 0, align 4
@MAX_DO_SUBDEVS = common dso_local global i32 0, align 4
@MAX_DIO_SUBDEVG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c", Error: Cann't allocate subdevice memory!\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@SIZE_8255 = common dso_local global i32 0, align 4
@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @pci_dio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_dio_attach(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.pci_dev*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = call i32 @alloc_private(%struct.comedi_device* %18, i32 4)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %435

26:                                               ; preds = %2
  %27 = load i32, i32* @PCI_ANY_ID, align 4
  %28 = load i32, i32* @PCI_ANY_ID, align 4
  %29 = call %struct.pci_dev* @pci_get_device(i32 %27, i32 %28, %struct.pci_dev* null)
  store %struct.pci_dev* %29, %struct.pci_dev** %13, align 8
  br label %30

30:                                               ; preds = %126, %26
  %31 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %32 = icmp ne %struct.pci_dev* %31, null
  br i1 %32, label %33, label %131

33:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %116, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @n_boardtypes, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %119

38:                                               ; preds = %34
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** @boardtypes, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  br label %116

50:                                               ; preds = %38
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** @boardtypes, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %116

62:                                               ; preds = %50
  %63 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %64 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %62
  %70 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %71 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %69, %62
  %77 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 3
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %83 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %81, %86
  br i1 %87, label %99, label %88

88:                                               ; preds = %76
  %89 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @PCI_SLOT(i32 %91)
  %93 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %94 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %92, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %88, %76
  br label %116

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %69
  %102 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %103 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %104 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %105 = call i32 @CheckAndAllocCard(%struct.comedi_device* %102, %struct.comedi_devconfig* %103, %struct.pci_dev* %104)
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 1
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %116

109:                                              ; preds = %101
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** @boardtypes, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 %112
  %114 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %115 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %114, i32 0, i32 3
  store %struct.TYPE_16__* %113, %struct.TYPE_16__** %115, align 8
  br label %119

116:                                              ; preds = %108, %99, %61, %49
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %34

119:                                              ; preds = %109, %34
  %120 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 3
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %121, align 8
  %123 = icmp ne %struct.TYPE_16__* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %131

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* @PCI_ANY_ID, align 4
  %128 = load i32, i32* @PCI_ANY_ID, align 4
  %129 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %130 = call %struct.pci_dev* @pci_get_device(i32 %127, i32 %128, %struct.pci_dev* %129)
  store %struct.pci_dev* %130, %struct.pci_dev** %13, align 8
  br label %30

131:                                              ; preds = %124, %30
  %132 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 3
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = icmp ne %struct.TYPE_16__* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %435

140:                                              ; preds = %131
  %141 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @driver_pci_dio, i32 0, i32 0), align 4
  %143 = call i64 @comedi_pci_enable(%struct.pci_dev* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %3, align 4
  br label %435

149:                                              ; preds = %140
  %150 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @pci_resource_start(%struct.pci_dev* %150, i32 %153)
  store i64 %154, i64* %12, align 8
  %155 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %156 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %155, i32 0, i32 3
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = call i64 @PCI_SLOT(i32 %162)
  %164 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %165 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @PCI_FUNC(i32 %166)
  %168 = load i64, i64* %12, align 8
  %169 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %159, i64 %163, i32 %167, i64 %168)
  %170 = load i64, i64* %12, align 8
  %171 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %172 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %177 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @TYPE_PCI1760, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %149
  store i32 4, i32* %9, align 4
  br label %257

184:                                              ; preds = %149
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %185

185:                                              ; preds = %203, %184
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @MAX_DI_SUBDEVS, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %185
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %199, %189
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %10, align 4
  br label %185

206:                                              ; preds = %185
  store i32 0, i32* %10, align 4
  br label %207

207:                                              ; preds = %225, %206
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @MAX_DO_SUBDEVS, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %228

211:                                              ; preds = %207
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %211
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %224

224:                                              ; preds = %221, %211
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %207

228:                                              ; preds = %207
  store i32 0, i32* %10, align 4
  br label %229

229:                                              ; preds = %244, %228
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* @MAX_DIO_SUBDEVG, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %247

233:                                              ; preds = %229
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %9, align 4
  br label %244

244:                                              ; preds = %233
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  br label %229

247:                                              ; preds = %229
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %247
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %9, align 4
  br label %256

256:                                              ; preds = %253, %247
  br label %257

257:                                              ; preds = %256, %183
  %258 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %259 = load i32, i32* %9, align 4
  %260 = call i32 @alloc_subdevices(%struct.comedi_device* %258, i32 %259)
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %257
  %264 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %265 = load i32, i32* %7, align 4
  store i32 %265, i32* %3, align 4
  br label %435

266:                                              ; preds = %257
  %267 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %268

268:                                              ; preds = %302, %266
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* @MAX_DI_SUBDEVS, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %305

272:                                              ; preds = %268
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 4
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %274, align 8
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %301

282:                                              ; preds = %272
  %283 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %284 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %283, i32 0, i32 1
  %285 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %284, align 8
  %286 = load i32, i32* %8, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %285, i64 %287
  store %struct.comedi_subdevice* %288, %struct.comedi_subdevice** %6, align 8
  %289 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %290 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %292, align 8
  %294 = load i32, i32* %10, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i64 %295
  %297 = load i32, i32* %8, align 4
  %298 = call i32 @pci_dio_add_di(%struct.comedi_device* %289, %struct.comedi_subdevice* %290, %struct.TYPE_13__* %296, i32 %297)
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %301

301:                                              ; preds = %282, %272
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %10, align 4
  br label %268

305:                                              ; preds = %268
  store i32 0, i32* %10, align 4
  br label %306

306:                                              ; preds = %340, %305
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* @MAX_DO_SUBDEVS, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %343

310:                                              ; preds = %306
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 3
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %312, align 8
  %314 = load i32, i32* %10, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %339

320:                                              ; preds = %310
  %321 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %322 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %321, i32 0, i32 1
  %323 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %323, i64 %325
  store %struct.comedi_subdevice* %326, %struct.comedi_subdevice** %6, align 8
  %327 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %328 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 3
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i64 %333
  %335 = load i32, i32* %8, align 4
  %336 = call i32 @pci_dio_add_do(%struct.comedi_device* %327, %struct.comedi_subdevice* %328, %struct.TYPE_12__* %334, i32 %335)
  %337 = load i32, i32* %8, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %8, align 4
  br label %339

339:                                              ; preds = %320, %310
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %10, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %10, align 4
  br label %306

343:                                              ; preds = %306
  store i32 0, i32* %10, align 4
  br label %344

344:                                              ; preds = %393, %343
  %345 = load i32, i32* %10, align 4
  %346 = load i32, i32* @MAX_DIO_SUBDEVG, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %396

348:                                              ; preds = %344
  store i32 0, i32* %11, align 4
  br label %349

349:                                              ; preds = %389, %348
  %350 = load i32, i32* %11, align 4
  %351 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %352 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = icmp slt i32 %350, %358
  br i1 %359, label %360, label %392

360:                                              ; preds = %349
  %361 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %362 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %361, i32 0, i32 1
  %363 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %362, align 8
  %364 = load i32, i32* %8, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %363, i64 %365
  store %struct.comedi_subdevice* %366, %struct.comedi_subdevice** %6, align 8
  %367 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %368 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %369 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %370 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 2
  %374 = load %struct.TYPE_10__*, %struct.TYPE_10__** %373, align 8
  %375 = load i32, i32* %10, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 1
  %379 = load i64, i64* %378, align 8
  %380 = add i64 %371, %379
  %381 = load i32, i32* @SIZE_8255, align 4
  %382 = load i32, i32* %11, align 4
  %383 = mul nsw i32 %381, %382
  %384 = sext i32 %383 to i64
  %385 = add i64 %380, %384
  %386 = call i32 @subdev_8255_init(%struct.comedi_device* %367, %struct.comedi_subdevice* %368, i32* null, i64 %385)
  %387 = load i32, i32* %8, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %8, align 4
  br label %389

389:                                              ; preds = %360
  %390 = load i32, i32* %11, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %11, align 4
  br label %349

392:                                              ; preds = %349
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %10, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %10, align 4
  br label %344

396:                                              ; preds = %344
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %420

402:                                              ; preds = %396
  %403 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %404 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %403, i32 0, i32 1
  %405 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %404, align 8
  %406 = load i32, i32* %8, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %405, i64 %407
  store %struct.comedi_subdevice* %408, %struct.comedi_subdevice** %6, align 8
  %409 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %410 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %411 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %410, i32 0, i32 0
  store i32 %409, i32* %411, align 4
  %412 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %413 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 1
  %416 = load i32, i32* %8, align 4
  %417 = call i32 @pci_dio_add_di(%struct.comedi_device* %412, %struct.comedi_subdevice* %413, %struct.TYPE_13__* %415, i32 %416)
  %418 = load i32, i32* %8, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %8, align 4
  br label %420

420:                                              ; preds = %402, %396
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** @this_board, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = load i64, i64* @TYPE_PCI1760, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %430

426:                                              ; preds = %420
  %427 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %428 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %429 = call i32 @pci1760_attach(%struct.comedi_device* %427, %struct.comedi_devconfig* %428)
  br label %430

430:                                              ; preds = %426, %420
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** @devpriv, align 8
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i32 0, i32 0
  store i32 1, i32* %432, align 4
  %433 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %434 = call i32 @pci_dio_reset(%struct.comedi_device* %433)
  store i32 0, i32* %3, align 4
  br label %435

435:                                              ; preds = %430, %263, %145, %136, %22
  %436 = load i32, i32* %3, align 4
  ret i32 %436
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @alloc_private(%struct.comedi_device*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #1

declare dso_local i64 @PCI_SLOT(i32) #1

declare dso_local i32 @CheckAndAllocCard(%struct.comedi_device*, %struct.comedi_devconfig*, %struct.pci_dev*) #1

declare dso_local i64 @comedi_pci_enable(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @PCI_FUNC(i32) #1

declare dso_local i32 @alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @pci_dio_add_di(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @pci_dio_add_do(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i64) #1

declare dso_local i32 @pci1760_attach(%struct.comedi_device*, %struct.comedi_devconfig*) #1

declare dso_local i32 @pci_dio_reset(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
