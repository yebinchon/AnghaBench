; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_proc.c_drm_proc_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_proc.c_drm_proc_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_minor = type { i32, i32 }
%struct.proc_dir_entry = type { i32 }

@drm_proc_list = common dso_local global i32 0, align 4
@DRM_PROC_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_proc_cleanup(%struct.drm_minor* %0, %struct.proc_dir_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_minor*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca [64 x i8], align 16
  store %struct.drm_minor* %0, %struct.drm_minor** %4, align 8
  store %struct.proc_dir_entry* %1, %struct.proc_dir_entry** %5, align 8
  %7 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %8 = icmp ne %struct.proc_dir_entry* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %11 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %28

15:                                               ; preds = %9
  %16 = load i32, i32* @drm_proc_list, align 4
  %17 = load i32, i32* @DRM_PROC_ENTRIES, align 4
  %18 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %19 = call i32 @drm_proc_remove_files(i32 %16, i32 %17, %struct.drm_minor* %18)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %21 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %22 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %26 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %27 = call i32 @remove_proc_entry(i8* %25, %struct.proc_dir_entry* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %15, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @drm_proc_remove_files(i32, i32, %struct.drm_minor*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @remove_proc_entry(i8*, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
