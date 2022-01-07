; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_proc.c_drm_proc_create_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_proc.c_drm_proc_create_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.drm_info_list = type { i32, i32 }
%struct.proc_dir_entry = type { i32 }
%struct.drm_minor = type { i32, %struct.TYPE_5__, %struct.drm_device* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_info_node = type { i32, %struct.drm_info_list*, %struct.drm_minor* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@drm_proc_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Cannot create /proc/dri/%s/%s\0A\00", align 1
@drm_proc_list = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_info_list*, i32, %struct.proc_dir_entry*, %struct.drm_minor*)* @drm_proc_create_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_proc_create_files(%struct.drm_info_list* %0, i32 %1, %struct.proc_dir_entry* %2, %struct.drm_minor* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_info_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_dir_entry*, align 8
  %9 = alloca %struct.drm_minor*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.proc_dir_entry*, align 8
  %12 = alloca %struct.drm_info_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_info_list* %0, %struct.drm_info_list** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.proc_dir_entry* %2, %struct.proc_dir_entry** %8, align 8
  store %struct.drm_minor* %3, %struct.drm_minor** %9, align 8
  %16 = load %struct.drm_minor*, %struct.drm_minor** %9, align 8
  %17 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %16, i32 0, i32 2
  %18 = load %struct.drm_device*, %struct.drm_device** %17, align 8
  store %struct.drm_device* %18, %struct.drm_device** %10, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %94, %4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %19
  %24 = load %struct.drm_info_list*, %struct.drm_info_list** %6, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %24, i64 %26
  %28 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %94

43:                                               ; preds = %32, %23
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.drm_info_node* @kmalloc(i32 24, i32 %44)
  store %struct.drm_info_node* %45, %struct.drm_info_node** %12, align 8
  %46 = load %struct.drm_info_node*, %struct.drm_info_node** %12, align 8
  %47 = icmp eq %struct.drm_info_node* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 -1, i32* %14, align 4
  br label %98

49:                                               ; preds = %43
  %50 = load %struct.drm_minor*, %struct.drm_minor** %9, align 8
  %51 = load %struct.drm_info_node*, %struct.drm_info_node** %12, align 8
  %52 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %51, i32 0, i32 2
  store %struct.drm_minor* %50, %struct.drm_minor** %52, align 8
  %53 = load %struct.drm_info_list*, %struct.drm_info_list** %6, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %53, i64 %55
  %57 = load %struct.drm_info_node*, %struct.drm_info_node** %12, align 8
  %58 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %57, i32 0, i32 1
  store %struct.drm_info_list* %56, %struct.drm_info_list** %58, align 8
  %59 = load %struct.drm_info_node*, %struct.drm_info_node** %12, align 8
  %60 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %59, i32 0, i32 0
  %61 = load %struct.drm_minor*, %struct.drm_minor** %9, align 8
  %62 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @list_add(i32* %60, i32* %63)
  %65 = load %struct.drm_info_list*, %struct.drm_info_list** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %65, i64 %67
  %69 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @S_IRUGO, align 4
  %72 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %73 = load %struct.drm_info_node*, %struct.drm_info_node** %12, align 8
  %74 = call %struct.proc_dir_entry* @proc_create_data(i32 %70, i32 %71, %struct.proc_dir_entry* %72, i32* @drm_proc_fops, %struct.drm_info_node* %73)
  store %struct.proc_dir_entry* %74, %struct.proc_dir_entry** %11, align 8
  %75 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %11, align 8
  %76 = icmp ne %struct.proc_dir_entry* %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %49
  %78 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %79 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_info_list*, %struct.drm_info_list** %6, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %81, i64 %83
  %85 = getelementptr inbounds %struct.drm_info_list, %struct.drm_info_list* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %86)
  %88 = load %struct.drm_info_node*, %struct.drm_info_node** %12, align 8
  %89 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %88, i32 0, i32 0
  %90 = call i32 @list_del(i32* %89)
  %91 = load %struct.drm_info_node*, %struct.drm_info_node** %12, align 8
  %92 = call i32 @kfree(%struct.drm_info_node* %91)
  store i32 -1, i32* %14, align 4
  br label %98

93:                                               ; preds = %49
  br label %94

94:                                               ; preds = %93, %42
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %19

97:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %119

98:                                               ; preds = %77, %48
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %114, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @drm_proc_list, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.drm_minor*, %struct.drm_minor** %9, align 8
  %111 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @remove_proc_entry(i32 %109, i32 %112)
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %99

117:                                              ; preds = %99
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %97
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local %struct.drm_info_node* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.proc_dir_entry* @proc_create_data(i32, i32, %struct.proc_dir_entry*, i32*, %struct.drm_info_node*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.drm_info_node*) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
