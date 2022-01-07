; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c_dm_unregister_path_selector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c_dm_unregister_path_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector_type = type { i32 }
%struct.ps_internal = type { i32 }

@_ps_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_unregister_path_selector(%struct.path_selector_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path_selector_type*, align 8
  %4 = alloca %struct.ps_internal*, align 8
  store %struct.path_selector_type* %0, %struct.path_selector_type** %3, align 8
  %5 = call i32 @down_write(i32* @_ps_lock)
  %6 = load %struct.path_selector_type*, %struct.path_selector_type** %3, align 8
  %7 = getelementptr inbounds %struct.path_selector_type, %struct.path_selector_type* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ps_internal* @__find_path_selector_type(i32 %8)
  store %struct.ps_internal* %9, %struct.ps_internal** %4, align 8
  %10 = load %struct.ps_internal*, %struct.ps_internal** %4, align 8
  %11 = icmp ne %struct.ps_internal* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @up_write(i32* @_ps_lock)
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.ps_internal*, %struct.ps_internal** %4, align 8
  %18 = getelementptr inbounds %struct.ps_internal, %struct.ps_internal* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = call i32 @up_write(i32* @_ps_lock)
  %21 = load %struct.ps_internal*, %struct.ps_internal** %4, align 8
  %22 = call i32 @kfree(%struct.ps_internal* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %16, %12
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.ps_internal* @__find_path_selector_type(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.ps_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
