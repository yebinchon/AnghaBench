; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_base.c_nouveau_mxm_create_.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/mxm/extr_base.c_nouveau_mxm_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }
%struct.nouveau_oclass = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.nouveau_mxm = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"MXM\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"mxm\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"no VBIOS data, nothing to do\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"BIOS version %d.%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to locate valid SIS\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"MXMS Version %d.%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NvMXMDCB\00", align 1
@MXM_SANITISE_DCB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nouveau_mxm_create_(%struct.nouveau_object* %0, %struct.nouveau_object* %1, %struct.nouveau_oclass* %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nouveau_object*, align 8
  %8 = alloca %struct.nouveau_object*, align 8
  %9 = alloca %struct.nouveau_oclass*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.nouveau_device*, align 8
  %13 = alloca %struct.nouveau_bios*, align 8
  %14 = alloca %struct.nouveau_mxm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %7, align 8
  store %struct.nouveau_object* %1, %struct.nouveau_object** %8, align 8
  store %struct.nouveau_oclass* %2, %struct.nouveau_oclass** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %20 = call %struct.nouveau_device* @nv_device(%struct.nouveau_object* %19)
  store %struct.nouveau_device* %20, %struct.nouveau_device** %12, align 8
  %21 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %22 = call %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device* %21)
  store %struct.nouveau_bios* %22, %struct.nouveau_bios** %13, align 8
  %23 = load %struct.nouveau_object*, %struct.nouveau_object** %7, align 8
  %24 = load %struct.nouveau_object*, %struct.nouveau_object** %8, align 8
  %25 = load %struct.nouveau_oclass*, %struct.nouveau_oclass** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i8**, i8*** %11, align 8
  %28 = call i32 @nouveau_subdev_create_(%struct.nouveau_object* %23, %struct.nouveau_object* %24, %struct.nouveau_oclass* %25, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %26, i8** %27)
  store i32 %28, i32* %18, align 4
  %29 = load i8**, i8*** %11, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.nouveau_mxm*
  store %struct.nouveau_mxm* %31, %struct.nouveau_mxm** %14, align 8
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %6, align 4
  br label %86

36:                                               ; preds = %5
  %37 = load %struct.nouveau_bios*, %struct.nouveau_bios** %13, align 8
  %38 = call i32 @mxm_table(%struct.nouveau_bios* %37, i32* %15, i32* %16)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.nouveau_bios*, %struct.nouveau_bios** %13, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @nv_ro08(%struct.nouveau_bios* %42, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %48 = call i32 @nv_debug(%struct.nouveau_mxm* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %86

49:                                               ; preds = %41
  %50 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %51 = load i32, i32* %15, align 4
  %52 = ashr i32 %51, 4
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %53, 15
  %55 = call i32 (%struct.nouveau_mxm*, i8*, ...) @nv_info(%struct.nouveau_mxm* %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %52, i32 %54)
  %56 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i64 @mxm_shadow(%struct.nouveau_mxm* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %62 = call i32 (%struct.nouveau_mxm*, i8*, ...) @nv_info(%struct.nouveau_mxm* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %86

63:                                               ; preds = %49
  %64 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %65 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %66 = call i32 @mxms_version(%struct.nouveau_mxm* %65)
  %67 = ashr i32 %66, 8
  %68 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %69 = call i32 @mxms_version(%struct.nouveau_mxm* %68)
  %70 = and i32 %69, 255
  %71 = call i32 (%struct.nouveau_mxm*, i8*, ...) @nv_info(%struct.nouveau_mxm* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %73 = call i32 @mxms_foreach(%struct.nouveau_mxm* %72, i32 0, i32* null, i32* null)
  %74 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %75 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @nouveau_boolopt(i32 %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %63
  %80 = load i32, i32* @MXM_SANITISE_DCB, align 4
  %81 = load %struct.nouveau_mxm*, %struct.nouveau_mxm** %14, align 8
  %82 = getelementptr inbounds %struct.nouveau_mxm, %struct.nouveau_mxm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %63
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %60, %46, %34
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.nouveau_device* @nv_device(%struct.nouveau_object*) #1

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nouveau_device*) #1

declare dso_local i32 @nouveau_subdev_create_(%struct.nouveau_object*, %struct.nouveau_object*, %struct.nouveau_oclass*, i32, i8*, i8*, i32, i8**) #1

declare dso_local i32 @mxm_table(%struct.nouveau_bios*, i32*, i32*) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i32) #1

declare dso_local i32 @nv_debug(%struct.nouveau_mxm*, i8*) #1

declare dso_local i32 @nv_info(%struct.nouveau_mxm*, i8*, ...) #1

declare dso_local i64 @mxm_shadow(%struct.nouveau_mxm*, i32) #1

declare dso_local i32 @mxms_version(%struct.nouveau_mxm*) #1

declare dso_local i32 @mxms_foreach(%struct.nouveau_mxm*, i32, i32*, i32*) #1

declare dso_local i64 @nouveau_boolopt(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
