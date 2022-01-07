; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_i915_gem_execbuffer_relocate_object_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_execbuffer.c_i915_gem_execbuffer_relocate_object_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.drm_i915_gem_exec_object2* }
%struct.drm_i915_gem_exec_object2 = type { i32 }
%struct.eb_objects = type { i32 }
%struct.drm_i915_gem_relocation_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_object*, %struct.eb_objects*, %struct.drm_i915_gem_relocation_entry*)* @i915_gem_execbuffer_relocate_object_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_execbuffer_relocate_object_slow(%struct.drm_i915_gem_object* %0, %struct.eb_objects* %1, %struct.drm_i915_gem_relocation_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca %struct.eb_objects*, align 8
  %7 = alloca %struct.drm_i915_gem_relocation_entry*, align 8
  %8 = alloca %struct.drm_i915_gem_exec_object2*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store %struct.eb_objects* %1, %struct.eb_objects** %6, align 8
  store %struct.drm_i915_gem_relocation_entry* %2, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %11 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %12 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %11, i32 0, i32 0
  %13 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %12, align 8
  store %struct.drm_i915_gem_exec_object2* %13, %struct.drm_i915_gem_exec_object2** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %33, %3
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.drm_i915_gem_exec_object2*, %struct.drm_i915_gem_exec_object2** %8, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_exec_object2, %struct.drm_i915_gem_exec_object2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %22 = load %struct.eb_objects*, %struct.eb_objects** %6, align 8
  %23 = load %struct.drm_i915_gem_relocation_entry*, %struct.drm_i915_gem_relocation_entry** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.drm_i915_gem_relocation_entry, %struct.drm_i915_gem_relocation_entry* %23, i64 %25
  %27 = call i32 @i915_gem_execbuffer_relocate_entry(%struct.drm_i915_gem_object* %21, %struct.eb_objects* %22, %struct.drm_i915_gem_relocation_entry* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %37

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %14

36:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @i915_gem_execbuffer_relocate_entry(%struct.drm_i915_gem_object*, %struct.eb_objects*, %struct.drm_i915_gem_relocation_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
