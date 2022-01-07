; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_info.c_drm_name_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_info.c_drm_name_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.drm_minor* }
%struct.drm_minor = type { %struct.drm_master*, %struct.drm_device* }
%struct.drm_master = type { i64 }
%struct.drm_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* (%struct.drm_device*)* }

@.str = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_name_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_info_node*, align 8
  %7 = alloca %struct.drm_minor*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_master*, align 8
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.drm_info_node*
  store %struct.drm_info_node* %14, %struct.drm_info_node** %6, align 8
  %15 = load %struct.drm_info_node*, %struct.drm_info_node** %6, align 8
  %16 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %15, i32 0, i32 0
  %17 = load %struct.drm_minor*, %struct.drm_minor** %16, align 8
  store %struct.drm_minor* %17, %struct.drm_minor** %7, align 8
  %18 = load %struct.drm_minor*, %struct.drm_minor** %7, align 8
  %19 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %18, i32 0, i32 1
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %8, align 8
  %21 = load %struct.drm_minor*, %struct.drm_minor** %7, align 8
  %22 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %21, i32 0, i32 0
  %23 = load %struct.drm_master*, %struct.drm_master** %22, align 8
  store %struct.drm_master* %23, %struct.drm_master** %9, align 8
  %24 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %25 = icmp ne %struct.drm_master* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

27:                                               ; preds = %2
  %28 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8* (%struct.drm_device*)*, i8* (%struct.drm_device*)** %33, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %36 = call i8* %34(%struct.drm_device* %35)
  store i8* %36, i8** %10, align 8
  %37 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %38 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %27
  %42 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_name(i32 %46)
  %48 = load %struct.drm_master*, %struct.drm_master** %9, align 8
  %49 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %47, i64 %50)
  br label %60

52:                                               ; preds = %27
  %53 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_name(i32 %57)
  %59 = call i32 (%struct.seq_file*, i8*, i8*, i32, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %58)
  br label %60

60:                                               ; preds = %52, %41
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32, ...) #1

declare dso_local i32 @dev_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
