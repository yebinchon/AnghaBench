; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_bond.c_doDevConfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_bond.c_doDevConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64*, %struct.BondedDevice**, %struct.BondedDevice** }
%struct.BondedDevice = type { i32, i32, i32, i32, i32, i8* }
%struct.comedi_device = type { i32 }
%struct.comedi_devconfig = type { i32* }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@COMEDI_NDEVCONFOPTS = common dso_local global i32 0, align 4
@__const.doDevConfig.file = private unnamed_addr constant [18 x i8] c"/dev/comediXXXXXX\00", align 16
@.str = private unnamed_addr constant [22 x i8] c"Minor %d is invalid!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Cannot bond this driver to itself!\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Minor %d specified more than once!\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/dev/comedi%u\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Minor %u could not be opened\0A\00", align 1
@COMEDI_SUBD_DIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"comedi_get_n_channels() returned %d on minor %u subdev %d!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Could not allocate memory. Out of memory?\00", align 1
@MAX_BOARD_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"%d:%d \00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"No channels found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_devconfig*)* @doDevConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doDevConfig(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_devconfig*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [18 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.BondedDevice*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [20 x i8], align 16
  %18 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %5, align 8
  %19 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %7, align 8
  %22 = alloca i8*, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %23 = mul nuw i64 8, %20
  %24 = trunc i64 %23 to i32
  %25 = call i32 @memset(i8** %22, i32 0, i32 %24)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %223, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @COMEDI_NDEVCONFOPTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %37, %34
  %47 = phi i1 [ true, %34 ], [ %45, %37 ]
  br label %48

48:                                               ; preds = %46, %30
  %49 = phi i1 [ false, %30 ], [ %47, %46 ]
  br i1 %49, label %50, label %226

50:                                               ; preds = %48
  %51 = bitcast [18 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %51, i8* align 16 getelementptr inbounds ([18 x i8], [18 x i8]* @__const.doDevConfig.file, i32 0, i32 0), i64 18, i1 false)
  %52 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %5, align 8
  %53 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  store i32 -1, i32* %12, align 4
  store %struct.BondedDevice* null, %struct.BondedDevice** %15, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61, %50
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %66)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %71 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %22, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

85:                                               ; preds = %76
  %86 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %86, i32 18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 17
  store i8 0, i8* %89, align 1
  %90 = getelementptr inbounds [18 x i8], [18 x i8]* %9, i64 0, i64 0
  %91 = call i8* @comedi_open(i8* %90)
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %22, i64 %93
  store i8* %91, i8** %94, align 8
  store i8* %91, i8** %11, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %85
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

100:                                              ; preds = %85
  br label %101

101:                                              ; preds = %189, %100
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @comedi_find_subdevice_by_type(i8* %102, i32 %103, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %108, label %222

108:                                              ; preds = %101
  %109 = load i8*, i8** %11, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @comedi_get_n_channels(i8* %109, i32 %110)
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp sle i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %115, i32 %116, i32 %117)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

119:                                              ; preds = %108
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.BondedDevice* @kmalloc(i32 32, i32 %120)
  store %struct.BondedDevice* %121, %struct.BondedDevice** %15, align 8
  %122 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %123 = icmp ne %struct.BondedDevice* %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

126:                                              ; preds = %119
  %127 = load i8*, i8** %11, align 8
  %128 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %129 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %132 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %135 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @COMEDI_SUBD_DIO, align 4
  %137 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %138 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %141 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %146 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %151, %126
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %13, align 4
  %150 = icmp ne i32 %148, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %147
  %152 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 4
  %155 = load %struct.BondedDevice**, %struct.BondedDevice*** %154, align 8
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds %struct.BondedDevice*, %struct.BondedDevice** %155, i64 %160
  store %struct.BondedDevice* %152, %struct.BondedDevice** %161, align 8
  br label %147

162:                                              ; preds = %147
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = mul i64 %166, 8
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %14, align 4
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 3
  %171 = load %struct.BondedDevice**, %struct.BondedDevice*** %170, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 8
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 8
  %178 = trunc i64 %177 to i32
  %179 = load i32, i32* %14, align 4
  %180 = call %struct.BondedDevice** @Realloc(%struct.BondedDevice** %171, i32 %178, i32 %179)
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 3
  store %struct.BondedDevice** %180, %struct.BondedDevice*** %182, align 8
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  %185 = load %struct.BondedDevice**, %struct.BondedDevice*** %184, align 8
  %186 = icmp ne %struct.BondedDevice** %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %162
  %188 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

189:                                              ; preds = %162
  %190 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load %struct.BondedDevice**, %struct.BondedDevice*** %192, align 8
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.BondedDevice*, %struct.BondedDevice** %193, i64 %198
  store %struct.BondedDevice* %190, %struct.BondedDevice** %199, align 8
  %200 = load i32, i32* @MAX_BOARD_NAME, align 4
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = load i64*, i64** %202, align 8
  %204 = call i32 @strlen(i64* %203)
  %205 = sub nsw i32 %200, %204
  %206 = sub nsw i32 %205, 1
  store i32 %206, i32* %18, align 4
  %207 = getelementptr inbounds [20 x i8], [20 x i8]* %17, i64 0, i64 0
  %208 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %209 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.BondedDevice*, %struct.BondedDevice** %15, align 8
  %212 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %207, i32 20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %210, i32 %213)
  %215 = getelementptr inbounds [20 x i8], [20 x i8]* %17, i64 0, i64 19
  store i8 0, i8* %215, align 1
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 2
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds [20 x i8], [20 x i8]* %17, i64 0, i64 0
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @strncat(i64* %218, i8* %219, i32 %220)
  br label %101

222:                                              ; preds = %101
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %30

226:                                              ; preds = %48
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %226
  %232 = call i32 (i8*, ...) @ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

233:                                              ; preds = %226
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %234

234:                                              ; preds = %233, %231, %187, %124, %114, %97, %82, %74, %65
  %235 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8**, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ERROR(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i8* @comedi_open(i8*) #2

declare dso_local i32 @comedi_find_subdevice_by_type(i8*, i32, i32) #2

declare dso_local i32 @comedi_get_n_channels(i8*, i32) #2

declare dso_local %struct.BondedDevice* @kmalloc(i32, i32) #2

declare dso_local %struct.BondedDevice** @Realloc(%struct.BondedDevice**, i32, i32) #2

declare dso_local i32 @strlen(i64*) #2

declare dso_local i32 @strncat(i64*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
