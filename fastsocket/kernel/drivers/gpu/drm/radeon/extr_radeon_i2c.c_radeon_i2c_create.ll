; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_i2c_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_i2c_chan = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.drm_device*, %struct.radeon_i2c_bus_rec }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, i32*, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.radeon_i2c_chan*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.radeon_i2c_bus_rec = type { i64, i64 }
%struct.drm_device = type { %struct.TYPE_9__*, %struct.radeon_device* }
%struct.TYPE_9__ = type { i32 }
%struct.radeon_device = type { i64 }

@radeon_hw_i2c = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@I2C_CLASS_DDC = common dso_local global i32 0, align 4
@CHIP_RS480 = common dso_local global i64 0, align 8
@CHIP_RV515 = common dso_local global i64 0, align 8
@CHIP_R580 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Radeon i2c hw bus %s\00", align 1
@radeon_i2c_algo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to register hw i2c %s\0A\00", align 1
@radeon_atom_i2c_algo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Radeon i2c bit bus %s\00", align 1
@pre_xfer = common dso_local global i32 0, align 4
@post_xfer = common dso_local global i32 0, align 4
@set_data = common dso_local global i32 0, align 4
@set_clock = common dso_local global i32 0, align 4
@get_data = common dso_local global i32 0, align 4
@get_clock = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to register bit i2c %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_i2c_chan* @radeon_i2c_create(%struct.drm_device* %0, %struct.radeon_i2c_bus_rec* %1, i8* %2) #0 {
  %4 = alloca %struct.radeon_i2c_chan*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_i2c_bus_rec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_i2c_chan*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.radeon_i2c_bus_rec* %1, %struct.radeon_i2c_bus_rec** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %8, align 8
  %14 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %15 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i64, i64* @radeon_hw_i2c, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.radeon_i2c_chan* null, %struct.radeon_i2c_chan** %4, align 8
  br label %209

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.radeon_i2c_chan* @kzalloc(i32 112, i32 %23)
  store %struct.radeon_i2c_chan* %24, %struct.radeon_i2c_chan** %9, align 8
  %25 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %26 = icmp eq %struct.radeon_i2c_chan* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.radeon_i2c_chan* null, %struct.radeon_i2c_chan** %4, align 8
  br label %209

28:                                               ; preds = %22
  %29 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %30 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %29, i32 0, i32 3
  %31 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %32 = bitcast %struct.radeon_i2c_bus_rec* %30 to i8*
  %33 = bitcast %struct.radeon_i2c_bus_rec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load i32, i32* @THIS_MODULE, align 4
  %35 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %36 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @I2C_CLASS_DDC, align 4
  %39 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %40 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %47 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32* %45, i32** %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %51 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %52 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %51, i32 0, i32 2
  store %struct.drm_device* %50, %struct.drm_device** %52, align 8
  %53 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %54 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %53, i32 0, i32 0
  %55 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %56 = call i32 @i2c_set_adapdata(%struct.TYPE_12__* %54, %struct.radeon_i2c_chan* %55)
  %57 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %58 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %28
  %62 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %63 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %106

66:                                               ; preds = %61
  %67 = load i64, i64* @radeon_hw_i2c, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %106

69:                                               ; preds = %66
  %70 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CHIP_RS480, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %69
  %76 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CHIP_RV515, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CHIP_R580, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81, %69, %28
  %88 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %89 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @snprintf(i32 %91, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %92)
  %94 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %95 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  store i32* @radeon_i2c_algo, i32** %96, align 8
  %97 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %98 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %97, i32 0, i32 0
  %99 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  br label %206

105:                                              ; preds = %87
  br label %204

106:                                              ; preds = %81, %75, %66, %61
  %107 = load %struct.radeon_i2c_bus_rec*, %struct.radeon_i2c_bus_rec** %6, align 8
  %108 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %106
  %112 = load i64, i64* @radeon_hw_i2c, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %111
  %115 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %116 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %114
  %119 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %120 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @snprintf(i32 %122, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %123)
  %125 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %126 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  store i32* @radeon_atom_i2c_algo, i32** %127, align 8
  %128 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %129 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %128, i32 0, i32 0
  %130 = call i32 @i2c_add_adapter(%struct.TYPE_12__* %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %118
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  br label %206

136:                                              ; preds = %118
  br label %203

137:                                              ; preds = %114, %111, %106
  %138 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %139 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @snprintf(i32 %141, i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %142)
  %144 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %145 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %148 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store %struct.TYPE_10__* %146, %struct.TYPE_10__** %149, align 8
  %150 = load i32, i32* @pre_xfer, align 4
  %151 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %152 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 8
  store i32 %150, i32* %154, align 8
  %155 = load i32, i32* @post_xfer, align 4
  %156 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %157 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 7
  store i32 %155, i32* %159, align 4
  %160 = load i32, i32* @set_data, align 4
  %161 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %162 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 6
  store i32 %160, i32* %164, align 8
  %165 = load i32, i32* @set_clock, align 4
  %166 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %167 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 5
  store i32 %165, i32* %169, align 4
  %170 = load i32, i32* @get_data, align 4
  %171 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %172 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  store i32 %170, i32* %174, align 8
  %175 = load i32, i32* @get_clock, align 4
  %176 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %177 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  store i32 %175, i32* %179, align 4
  %180 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %181 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  store i32 10, i32* %183, align 8
  %184 = call i32 @usecs_to_jiffies(i32 2200)
  %185 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %186 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  store i32 %184, i32* %188, align 8
  %189 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %190 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %191 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  store %struct.radeon_i2c_chan* %189, %struct.radeon_i2c_chan** %193, align 8
  %194 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %195 = getelementptr inbounds %struct.radeon_i2c_chan, %struct.radeon_i2c_chan* %194, i32 0, i32 0
  %196 = call i32 @i2c_bit_add_bus(%struct.TYPE_12__* %195)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %137
  %200 = load i8*, i8** %7, align 8
  %201 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %200)
  br label %206

202:                                              ; preds = %137
  br label %203

203:                                              ; preds = %202, %136
  br label %204

204:                                              ; preds = %203, %105
  %205 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  store %struct.radeon_i2c_chan* %205, %struct.radeon_i2c_chan** %4, align 8
  br label %209

206:                                              ; preds = %199, %133, %102
  %207 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %9, align 8
  %208 = call i32 @kfree(%struct.radeon_i2c_chan* %207)
  store %struct.radeon_i2c_chan* null, %struct.radeon_i2c_chan** %4, align 8
  br label %209

209:                                              ; preds = %206, %204, %27, %21
  %210 = load %struct.radeon_i2c_chan*, %struct.radeon_i2c_chan** %4, align 8
  ret %struct.radeon_i2c_chan* %210
}

declare dso_local %struct.radeon_i2c_chan* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_set_adapdata(%struct.TYPE_12__*, %struct.radeon_i2c_chan*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_12__*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

declare dso_local i32 @i2c_bit_add_bus(%struct.TYPE_12__*) #1

declare dso_local i32 @kfree(%struct.radeon_i2c_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
