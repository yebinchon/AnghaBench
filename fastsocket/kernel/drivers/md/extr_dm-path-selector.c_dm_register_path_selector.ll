; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c_dm_register_path_selector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c_dm_register_path_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector_type = type { i32 }
%struct.ps_internal = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@_ps_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@_path_selectors = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_register_path_selector(%struct.path_selector_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path_selector_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps_internal*, align 8
  store %struct.path_selector_type* %0, %struct.path_selector_type** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.path_selector_type*, %struct.path_selector_type** %3, align 8
  %7 = call %struct.ps_internal* @_alloc_path_selector(%struct.path_selector_type* %6)
  store %struct.ps_internal* %7, %struct.ps_internal** %5, align 8
  %8 = load %struct.ps_internal*, %struct.ps_internal** %5, align 8
  %9 = icmp ne %struct.ps_internal* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = call i32 @down_write(i32* @_ps_lock)
  %15 = load %struct.path_selector_type*, %struct.path_selector_type** %3, align 8
  %16 = getelementptr inbounds %struct.path_selector_type, %struct.path_selector_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @__find_path_selector_type(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.ps_internal*, %struct.ps_internal** %5, align 8
  %22 = call i32 @kfree(%struct.ps_internal* %21)
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %13
  %26 = load %struct.ps_internal*, %struct.ps_internal** %5, align 8
  %27 = getelementptr inbounds %struct.ps_internal, %struct.ps_internal* %26, i32 0, i32 0
  %28 = call i32 @list_add(i32* %27, i32* @_path_selectors)
  br label %29

29:                                               ; preds = %25, %20
  %30 = call i32 @up_write(i32* @_ps_lock)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %10
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.ps_internal* @_alloc_path_selector(%struct.path_selector_type*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @__find_path_selector_type(i32) #1

declare dso_local i32 @kfree(%struct.ps_internal*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
