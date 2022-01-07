; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_proc.c_drm_proc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_proc.c_drm_proc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_minor = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.proc_dir_entry = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot create /proc/dri/%s\0A\00", align 1
@drm_proc_list = common dso_local global i32 0, align 4
@DRM_PROC_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to create core drm proc files\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_proc_init(%struct.drm_minor* %0, i32 %1, %struct.proc_dir_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_minor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc_dir_entry*, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.drm_minor* %0, %struct.drm_minor** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %7, align 8
  %10 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %11 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %19 = call i32* @proc_mkdir(i8* %17, %struct.proc_dir_entry* %18)
  %20 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %21 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %23 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %28 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 -1, i32* %4, align 4
  br label %48

29:                                               ; preds = %3
  %30 = load i32, i32* @drm_proc_list, align 4
  %31 = load i32, i32* @DRM_PROC_ENTRIES, align 4
  %32 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %33 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %36 = call i32 @drm_proc_create_files(i32 %30, i32 %31, i32* %34, %struct.drm_minor* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %41 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %7, align 8
  %42 = call i32 @remove_proc_entry(i8* %40, %struct.proc_dir_entry* %41)
  %43 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %44 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  %45 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %39, %26
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @proc_mkdir(i8*, %struct.proc_dir_entry*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_proc_create_files(i32, i32, i32*, %struct.drm_minor*) #1

declare dso_local i32 @remove_proc_entry(i8*, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
