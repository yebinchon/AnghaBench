; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_base.c_nouveau_bios_shadow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/bios/extr_base.c_nouveau_bios_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bios = type { i8*, i32 }
%struct.methods = type { i8*, i32, i8*, i32, i32, i8*, i32, i32 (%struct.nouveau_bios*)*, i32*, i32, i32, i32 }
%struct.firmware = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"PRAMIN\00", align 1
@nouveau_bios_shadow_pramin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"PROM\00", align 1
@nouveau_bios_shadow_prom = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"ACPI\00", align 1
@nouveau_bios_shadow_acpi = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"PCIROM\00", align 1
@nouveau_bios_shadow_pci = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"NvBios\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"source: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"image: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"source '%s' invalid\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"checking %s for image...\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"using image from %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"unable to locate usable image\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nouveau_bios_shadow_of = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_bios*)* @nouveau_bios_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_bios_shadow(%struct.nouveau_bios* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nouveau_bios*, align 8
  %4 = alloca [5 x %struct.methods], align 16
  %5 = alloca %struct.methods*, align 8
  %6 = alloca %struct.methods*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.nouveau_bios* %0, %struct.nouveau_bios** %3, align 8
  %12 = bitcast [5 x %struct.methods]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 400, i1 false)
  %13 = getelementptr inbounds [5 x %struct.methods], [5 x %struct.methods]* %4, i64 0, i64 0
  %14 = getelementptr inbounds %struct.methods, %struct.methods* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.methods, %struct.methods* %13, i32 0, i32 1
  %16 = load i32, i32* @nouveau_bios_shadow_pramin, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.methods, %struct.methods* %13, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %17, align 16
  %18 = getelementptr inbounds %struct.methods, %struct.methods* %13, i64 1
  %19 = getelementptr inbounds %struct.methods, %struct.methods* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.methods, %struct.methods* %18, i32 0, i32 1
  %21 = load i32, i32* @nouveau_bios_shadow_prom, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.methods, %struct.methods* %18, i64 1
  %23 = getelementptr inbounds %struct.methods, %struct.methods* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds %struct.methods, %struct.methods* %22, i32 0, i32 1
  %25 = load i32, i32* @nouveau_bios_shadow_acpi, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.methods, %struct.methods* %22, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %26, align 16
  %27 = getelementptr inbounds %struct.methods, %struct.methods* %22, i64 1
  %28 = getelementptr inbounds %struct.methods, %struct.methods* %27, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %28, align 16
  %29 = getelementptr inbounds %struct.methods, %struct.methods* %27, i32 0, i32 1
  %30 = load i32, i32* @nouveau_bios_shadow_pci, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.methods, %struct.methods* %27, i32 0, i32 2
  store i8* inttoptr (i64 1 to i8*), i8** %31, align 16
  %32 = getelementptr inbounds %struct.methods, %struct.methods* %27, i64 1
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %34 = call %struct.TYPE_4__* @nv_device(%struct.nouveau_bios* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @nouveau_stropt(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %9)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kstrndup(i8* %41, i32 %42, i32 %43)
  br label %46

45:                                               ; preds = %1
  br label %46

46:                                               ; preds = %45, %40
  %47 = phi i8* [ %44, %40 ], [ null, %45 ]
  store i8* %47, i8** %11, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %142

50:                                               ; preds = %46
  %51 = getelementptr inbounds [5 x %struct.methods], [5 x %struct.methods]* %4, i64 0, i64 0
  store %struct.methods* %51, %struct.methods** %5, align 8
  br label %52

52:                                               ; preds = %86, %50
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.methods*, %struct.methods** %5, align 8
  %55 = getelementptr inbounds %struct.methods, %struct.methods* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcasecmp(i8* %53, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %86

60:                                               ; preds = %52
  %61 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %62 = load %struct.methods*, %struct.methods** %5, align 8
  %63 = getelementptr inbounds %struct.methods, %struct.methods* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @nv_info(%struct.nouveau_bios* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  %66 = load %struct.methods*, %struct.methods** %5, align 8
  %67 = getelementptr inbounds %struct.methods, %struct.methods* %66, i32 0, i32 7
  %68 = load i32 (%struct.nouveau_bios*)*, i32 (%struct.nouveau_bios*)** %67, align 8
  %69 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %70 = call i32 %68(%struct.nouveau_bios* %69)
  %71 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %72 = load %struct.methods*, %struct.methods** %5, align 8
  %73 = getelementptr inbounds %struct.methods, %struct.methods* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nouveau_bios_score(%struct.nouveau_bios* %71, i32 %74)
  %76 = load %struct.methods*, %struct.methods** %5, align 8
  %77 = getelementptr inbounds %struct.methods, %struct.methods* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 8
  %78 = load %struct.methods*, %struct.methods** %5, align 8
  %79 = getelementptr inbounds %struct.methods, %struct.methods* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %60
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @kfree(i8* %83)
  store i32 0, i32* %2, align 4
  br label %237

85:                                               ; preds = %60
  br label %86

86:                                               ; preds = %85, %59
  %87 = load %struct.methods*, %struct.methods** %5, align 8
  %88 = getelementptr inbounds %struct.methods, %struct.methods* %87, i32 1
  store %struct.methods* %88, %struct.methods** %5, align 8
  %89 = getelementptr inbounds %struct.methods, %struct.methods* %88, i32 0, i32 7
  %90 = load i32 (%struct.nouveau_bios*)*, i32 (%struct.nouveau_bios*)** %89, align 8
  %91 = icmp ne i32 (%struct.nouveau_bios*)* %90, null
  br i1 %91, label %52, label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %11, align 8
  %94 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %95 = call %struct.TYPE_4__* @nv_device(%struct.nouveau_bios* %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = call i32 @request_firmware(%struct.firmware** %7, i8* %93, i32* %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %92
  %103 = load %struct.firmware*, %struct.firmware** %7, align 8
  %104 = getelementptr inbounds %struct.firmware, %struct.firmware* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %107 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.firmware*, %struct.firmware** %7, align 8
  %109 = getelementptr inbounds %struct.firmware, %struct.firmware* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.firmware*, %struct.firmware** %7, align 8
  %112 = getelementptr inbounds %struct.firmware, %struct.firmware* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @GFP_KERNEL, align 4
  %115 = call i8* @kmemdup(i32 %110, i32 %113, i32 %114)
  %116 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %117 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.firmware*, %struct.firmware** %7, align 8
  %119 = call i32 @release_firmware(%struct.firmware* %118)
  %120 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @nv_info(%struct.nouveau_bios* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  %123 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %124 = call i32 @nouveau_bios_score(%struct.nouveau_bios* %123, i32 1)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %102
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @kfree(i8* %127)
  store i32 0, i32* %2, align 4
  br label %237

129:                                              ; preds = %102
  %130 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %131 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @kfree(i8* %132)
  %134 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %135 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %134, i32 0, i32 0
  store i8* null, i8** %135, align 8
  br label %136

136:                                              ; preds = %129, %92
  %137 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 (%struct.nouveau_bios*, i8*, ...) @nv_error(%struct.nouveau_bios* %137, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %138)
  %140 = load i8*, i8** %11, align 8
  %141 = call i32 @kfree(i8* %140)
  br label %142

142:                                              ; preds = %136, %46
  %143 = getelementptr inbounds [5 x %struct.methods], [5 x %struct.methods]* %4, i64 0, i64 0
  store %struct.methods* %143, %struct.methods** %5, align 8
  br label %144

144:                                              ; preds = %185, %142
  %145 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %146 = load %struct.methods*, %struct.methods** %5, align 8
  %147 = getelementptr inbounds %struct.methods, %struct.methods* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @nv_info(%struct.nouveau_bios* %145, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %148)
  %150 = load %struct.methods*, %struct.methods** %5, align 8
  %151 = getelementptr inbounds %struct.methods, %struct.methods* %150, i32 0, i32 7
  %152 = load i32 (%struct.nouveau_bios*)*, i32 (%struct.nouveau_bios*)** %151, align 8
  %153 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %154 = call i32 %152(%struct.nouveau_bios* %153)
  %155 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %156 = load %struct.methods*, %struct.methods** %5, align 8
  %157 = getelementptr inbounds %struct.methods, %struct.methods* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @nouveau_bios_score(%struct.nouveau_bios* %155, i32 %158)
  %160 = load %struct.methods*, %struct.methods** %5, align 8
  %161 = getelementptr inbounds %struct.methods, %struct.methods* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %163 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.methods*, %struct.methods** %5, align 8
  %166 = getelementptr inbounds %struct.methods, %struct.methods* %165, i32 0, i32 6
  store i32 %164, i32* %166, align 8
  %167 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %168 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct.methods*, %struct.methods** %5, align 8
  %171 = getelementptr inbounds %struct.methods, %struct.methods* %170, i32 0, i32 5
  store i8* %169, i8** %171, align 8
  %172 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %173 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %172, i32 0, i32 0
  store i8* null, i8** %173, align 8
  br label %174

174:                                              ; preds = %144
  %175 = load %struct.methods*, %struct.methods** %5, align 8
  %176 = getelementptr inbounds %struct.methods, %struct.methods* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 3
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load %struct.methods*, %struct.methods** %5, align 8
  %181 = getelementptr inbounds %struct.methods, %struct.methods* %180, i32 1
  store %struct.methods* %181, %struct.methods** %5, align 8
  %182 = getelementptr inbounds %struct.methods, %struct.methods* %181, i32 0, i32 7
  %183 = load i32 (%struct.nouveau_bios*)*, i32 (%struct.nouveau_bios*)** %182, align 8
  %184 = icmp ne i32 (%struct.nouveau_bios*)* %183, null
  br label %185

185:                                              ; preds = %179, %174
  %186 = phi i1 [ false, %174 ], [ %184, %179 ]
  br i1 %186, label %144, label %187

187:                                              ; preds = %185
  %188 = getelementptr inbounds [5 x %struct.methods], [5 x %struct.methods]* %4, i64 0, i64 0
  store %struct.methods* %188, %struct.methods** %5, align 8
  %189 = load %struct.methods*, %struct.methods** %5, align 8
  store %struct.methods* %189, %struct.methods** %6, align 8
  br label %190

190:                                              ; preds = %205, %187
  %191 = load %struct.methods*, %struct.methods** %5, align 8
  %192 = getelementptr inbounds %struct.methods, %struct.methods* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.methods*, %struct.methods** %6, align 8
  %195 = getelementptr inbounds %struct.methods, %struct.methods* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %193, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %190
  %199 = load %struct.methods*, %struct.methods** %6, align 8
  %200 = getelementptr inbounds %struct.methods, %struct.methods* %199, i32 0, i32 5
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @kfree(i8* %201)
  %203 = load %struct.methods*, %struct.methods** %5, align 8
  store %struct.methods* %203, %struct.methods** %6, align 8
  br label %204

204:                                              ; preds = %198, %190
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.methods*, %struct.methods** %5, align 8
  %207 = getelementptr inbounds %struct.methods, %struct.methods* %206, i32 1
  store %struct.methods* %207, %struct.methods** %5, align 8
  %208 = getelementptr inbounds %struct.methods, %struct.methods* %207, i32 0, i32 7
  %209 = load i32 (%struct.nouveau_bios*)*, i32 (%struct.nouveau_bios*)** %208, align 8
  %210 = icmp ne i32 (%struct.nouveau_bios*)* %209, null
  br i1 %210, label %190, label %211

211:                                              ; preds = %205
  %212 = load %struct.methods*, %struct.methods** %6, align 8
  %213 = getelementptr inbounds %struct.methods, %struct.methods* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %211
  %217 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %218 = load %struct.methods*, %struct.methods** %6, align 8
  %219 = getelementptr inbounds %struct.methods, %struct.methods* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @nv_info(%struct.nouveau_bios* %217, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %220)
  %222 = load %struct.methods*, %struct.methods** %6, align 8
  %223 = getelementptr inbounds %struct.methods, %struct.methods* %222, i32 0, i32 6
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %226 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  %227 = load %struct.methods*, %struct.methods** %6, align 8
  %228 = getelementptr inbounds %struct.methods, %struct.methods* %227, i32 0, i32 5
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %231 = getelementptr inbounds %struct.nouveau_bios, %struct.nouveau_bios* %230, i32 0, i32 0
  store i8* %229, i8** %231, align 8
  store i32 0, i32* %2, align 4
  br label %237

232:                                              ; preds = %211
  %233 = load %struct.nouveau_bios*, %struct.nouveau_bios** %3, align 8
  %234 = call i32 (%struct.nouveau_bios*, i8*, ...) @nv_error(%struct.nouveau_bios* %233, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %235 = load i32, i32* @EINVAL, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %2, align 4
  br label %237

237:                                              ; preds = %232, %216, %126, %82
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @nouveau_stropt(i32, i8*, i32*) #2

declare dso_local %struct.TYPE_4__* @nv_device(%struct.nouveau_bios*) #2

declare dso_local i8* @kstrndup(i8*, i32, i32) #2

declare dso_local i64 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @nv_info(%struct.nouveau_bios*, i8*, i8*) #2

declare dso_local i32 @nouveau_bios_score(%struct.nouveau_bios*, i32) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #2

declare dso_local i8* @kmemdup(i32, i32, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

declare dso_local i32 @nv_error(%struct.nouveau_bios*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
