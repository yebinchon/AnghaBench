; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, i32, i32, i32 }
%struct.drm_file = type { i32 }
%struct.radeon_cs_parser = type { i32, i32, %struct.radeon_device*, %struct.drm_file* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to initialize parser !\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse relocation %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_cs_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.radeon_cs_parser, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.radeon_device*, %struct.radeon_device** %12, align 8
  store %struct.radeon_device* %13, %struct.radeon_device** %8, align 8
  %14 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 0
  %24 = call i32 @up_read(i32* %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %101

27:                                               ; preds = %3
  %28 = call i32 @memset(%struct.radeon_cs_parser* %9, i32 0, i32 24)
  %29 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %30 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 3
  store %struct.drm_file* %29, %struct.drm_file** %30, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %32 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 2
  store %struct.radeon_device* %31, %struct.radeon_device** %32, align 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %9, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @radeon_cs_parser_init(%struct.radeon_cs_parser* %9, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %27
  %46 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @radeon_cs_parser_fini(%struct.radeon_cs_parser* %9, i32 %47)
  %49 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %50 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %49, i32 0, i32 0
  %51 = call i32 @up_read(i32* %50)
  %52 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @radeon_cs_handle_lockup(%struct.radeon_device* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %101

56:                                               ; preds = %27
  %57 = call i32 @radeon_cs_parser_relocs(%struct.radeon_cs_parser* %9)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ERESTARTSYS, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @radeon_cs_parser_fini(%struct.radeon_cs_parser* %9, i32 %69)
  %71 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %72 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %71, i32 0, i32 0
  %73 = call i32 @up_read(i32* %72)
  %74 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @radeon_cs_handle_lockup(%struct.radeon_device* %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %101

78:                                               ; preds = %56
  %79 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %80 = call i32 @radeon_cs_ib_chunk(%struct.radeon_device* %79, %struct.radeon_cs_parser* %9)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %91

84:                                               ; preds = %78
  %85 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %86 = call i32 @radeon_cs_ib_vm_chunk(%struct.radeon_device* %85, %struct.radeon_cs_parser* %9)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %91

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %89, %83
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @radeon_cs_parser_fini(%struct.radeon_cs_parser* %9, i32 %92)
  %94 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 0
  %96 = call i32 @up_read(i32* %95)
  %97 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @radeon_cs_handle_lockup(%struct.radeon_device* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %91, %68, %45, %21
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @memset(%struct.radeon_cs_parser*, i32, i32) #1

declare dso_local i32 @radeon_cs_parser_init(%struct.radeon_cs_parser*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @radeon_cs_parser_fini(%struct.radeon_cs_parser*, i32) #1

declare dso_local i32 @radeon_cs_handle_lockup(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_cs_parser_relocs(%struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_cs_ib_chunk(%struct.radeon_device*, %struct.radeon_cs_parser*) #1

declare dso_local i32 @radeon_cs_ib_vm_chunk(%struct.radeon_device*, %struct.radeon_cs_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
