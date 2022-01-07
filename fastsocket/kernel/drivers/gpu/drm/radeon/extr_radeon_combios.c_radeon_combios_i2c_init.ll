; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_i2c_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_i2c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i8**, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.radeon_i2c_bus_rec = type { i32, i32, i32, i32 }

@DDC_DVI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DVI_DDC\00", align 1
@DDC_VGA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"VGA_DDC\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"MM_I2C\00", align 1
@CHIP_R300 = common dso_local global i64 0, align 8
@CHIP_R350 = common dso_local global i64 0, align 8
@CHIP_RS300 = common dso_local global i64 0, align 8
@CHIP_RS400 = common dso_local global i64 0, align 8
@CHIP_RS480 = common dso_local global i64 0, align 8
@DDC_CRT2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"MONID\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"GPIOPAD_MASK\00", align 1
@CHIP_R200 = common dso_local global i64 0, align 8
@DDC_MONID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"CRT2_DDC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_combios_i2c_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_i2c_bus_rec, align 4
  %5 = alloca %struct.radeon_i2c_bus_rec, align 4
  %6 = alloca %struct.radeon_i2c_bus_rec, align 4
  %7 = alloca %struct.radeon_i2c_bus_rec, align 4
  %8 = alloca %struct.radeon_i2c_bus_rec, align 4
  %9 = alloca %struct.radeon_i2c_bus_rec, align 4
  %10 = alloca %struct.radeon_i2c_bus_rec, align 4
  %11 = alloca %struct.radeon_i2c_bus_rec, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 2
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %3, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = load i32, i32* @DDC_DVI, align 4
  %17 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %15, i32 %16, i32 0, i32 0)
  %18 = bitcast %struct.radeon_i2c_bus_rec* %5 to { i64, i64 }*
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %20 = extractvalue { i64, i64 } %17, 0
  store i64 %20, i64* %19, align 4
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %22 = extractvalue { i64, i64 } %17, 1
  store i64 %22, i64* %21, align 4
  %23 = bitcast %struct.radeon_i2c_bus_rec* %4 to i8*
  %24 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 16, i1 false)
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = call i8* @radeon_i2c_create(%struct.drm_device* %25, %struct.radeon_i2c_bus_rec* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  store i8* %26, i8** %30, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = load i32, i32* @DDC_VGA, align 4
  %33 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %31, i32 %32, i32 0, i32 0)
  %34 = bitcast %struct.radeon_i2c_bus_rec* %6 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = extractvalue { i64, i64 } %33, 0
  store i64 %36, i64* %35, align 4
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = extractvalue { i64, i64 } %33, 1
  store i64 %38, i64* %37, align 4
  %39 = bitcast %struct.radeon_i2c_bus_rec* %4 to i8*
  %40 = bitcast %struct.radeon_i2c_bus_rec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 16, i1 false)
  %41 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %42 = call i8* @radeon_i2c_create(%struct.drm_device* %41, %struct.radeon_i2c_bus_rec* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  store i8* %42, i8** %46, align 8
  %47 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %4, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %4, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %4, i32 0, i32 2
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %4, i32 0, i32 3
  store i32 160, i32* %50, align 4
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = call i8* @radeon_i2c_create(%struct.drm_device* %51, %struct.radeon_i2c_bus_rec* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 1
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  store i8* %52, i8** %56, align 8
  %57 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CHIP_R300, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %1
  %63 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %64 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @CHIP_R350, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %1
  br label %188

69:                                               ; preds = %62
  %70 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CHIP_RS300, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %69
  %76 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %77 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CHIP_RS400, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CHIP_RS480, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %124

87:                                               ; preds = %81, %75, %69
  %88 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %89 = load i32, i32* @DDC_CRT2, align 4
  %90 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %88, i32 %89, i32 0, i32 0)
  %91 = bitcast %struct.radeon_i2c_bus_rec* %7 to { i64, i64 }*
  %92 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 0
  %93 = extractvalue { i64, i64 } %90, 0
  store i64 %93, i64* %92, align 4
  %94 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %91, i32 0, i32 1
  %95 = extractvalue { i64, i64 } %90, 1
  store i64 %95, i64* %94, align 4
  %96 = bitcast %struct.radeon_i2c_bus_rec* %4 to i8*
  %97 = bitcast %struct.radeon_i2c_bus_rec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 16, i1 false)
  %98 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %99 = call i8* @radeon_i2c_create(%struct.drm_device* %98, %struct.radeon_i2c_bus_rec* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 3
  store i8* %99, i8** %103, align 8
  %104 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %105 = call { i64, i64 } @radeon_combios_get_i2c_info_from_table(%struct.radeon_device* %104)
  %106 = bitcast %struct.radeon_i2c_bus_rec* %8 to { i64, i64 }*
  %107 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 0
  %108 = extractvalue { i64, i64 } %105, 0
  store i64 %108, i64* %107, align 4
  %109 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %106, i32 0, i32 1
  %110 = extractvalue { i64, i64 } %105, 1
  store i64 %110, i64* %109, align 4
  %111 = bitcast %struct.radeon_i2c_bus_rec* %4 to i8*
  %112 = bitcast %struct.radeon_i2c_bus_rec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 16, i1 false)
  %113 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %4, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %87
  %117 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %118 = call i8* @radeon_i2c_create(%struct.drm_device* %117, %struct.radeon_i2c_bus_rec* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %119 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %120 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %119, i32 0, i32 1
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 4
  store i8* %118, i8** %122, align 8
  br label %123

123:                                              ; preds = %116, %87
  br label %187

124:                                              ; preds = %81
  %125 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %126 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CHIP_R200, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CHIP_R300, align 8
  %135 = icmp sge i64 %133, %134
  br i1 %135, label %136, label %153

136:                                              ; preds = %130, %124
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = load i32, i32* @DDC_MONID, align 4
  %139 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %137, i32 %138, i32 0, i32 0)
  %140 = bitcast %struct.radeon_i2c_bus_rec* %9 to { i64, i64 }*
  %141 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %140, i32 0, i32 0
  %142 = extractvalue { i64, i64 } %139, 0
  store i64 %142, i64* %141, align 4
  %143 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %140, i32 0, i32 1
  %144 = extractvalue { i64, i64 } %139, 1
  store i64 %144, i64* %143, align 4
  %145 = bitcast %struct.radeon_i2c_bus_rec* %4 to i8*
  %146 = bitcast %struct.radeon_i2c_bus_rec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 16, i1 false)
  %147 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %148 = call i8* @radeon_i2c_create(%struct.drm_device* %147, %struct.radeon_i2c_bus_rec* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 1
  %151 = load i8**, i8*** %150, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 3
  store i8* %148, i8** %152, align 8
  br label %186

153:                                              ; preds = %130
  %154 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %155 = load i32, i32* @DDC_MONID, align 4
  %156 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %154, i32 %155, i32 0, i32 0)
  %157 = bitcast %struct.radeon_i2c_bus_rec* %10 to { i64, i64 }*
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %157, i32 0, i32 0
  %159 = extractvalue { i64, i64 } %156, 0
  store i64 %159, i64* %158, align 4
  %160 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %157, i32 0, i32 1
  %161 = extractvalue { i64, i64 } %156, 1
  store i64 %161, i64* %160, align 4
  %162 = bitcast %struct.radeon_i2c_bus_rec* %4 to i8*
  %163 = bitcast %struct.radeon_i2c_bus_rec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 16, i1 false)
  %164 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %165 = call i8* @radeon_i2c_create(%struct.drm_device* %164, %struct.radeon_i2c_bus_rec* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %166 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %167 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %166, i32 0, i32 1
  %168 = load i8**, i8*** %167, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 3
  store i8* %165, i8** %169, align 8
  %170 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %171 = load i32, i32* @DDC_CRT2, align 4
  %172 = call { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device* %170, i32 %171, i32 0, i32 0)
  %173 = bitcast %struct.radeon_i2c_bus_rec* %11 to { i64, i64 }*
  %174 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %173, i32 0, i32 0
  %175 = extractvalue { i64, i64 } %172, 0
  store i64 %175, i64* %174, align 4
  %176 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %173, i32 0, i32 1
  %177 = extractvalue { i64, i64 } %172, 1
  store i64 %177, i64* %176, align 4
  %178 = bitcast %struct.radeon_i2c_bus_rec* %4 to i8*
  %179 = bitcast %struct.radeon_i2c_bus_rec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 16, i1 false)
  %180 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %181 = call i8* @radeon_i2c_create(%struct.drm_device* %180, %struct.radeon_i2c_bus_rec* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %182 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %183 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %182, i32 0, i32 1
  %184 = load i8**, i8*** %183, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 4
  store i8* %181, i8** %185, align 8
  br label %186

186:                                              ; preds = %153, %136
  br label %187

187:                                              ; preds = %186, %123
  br label %188

188:                                              ; preds = %187, %68
  ret void
}

declare dso_local { i64, i64 } @combios_setup_i2c_bus(%struct.radeon_device*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @radeon_i2c_create(%struct.drm_device*, %struct.radeon_i2c_bus_rec*, i8*) #1

declare dso_local { i64, i64 } @radeon_combios_get_i2c_info_from_table(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
