; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c_get_path_selector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c_get_path_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_internal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_ps_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ps_internal* (i8*)* @get_path_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ps_internal* @get_path_selector(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ps_internal*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i32 @down_read(i32* @_ps_lock)
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.ps_internal* @__find_path_selector_type(i8* %5)
  store %struct.ps_internal* %6, %struct.ps_internal** %3, align 8
  %7 = load %struct.ps_internal*, %struct.ps_internal** %3, align 8
  %8 = icmp ne %struct.ps_internal* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.ps_internal*, %struct.ps_internal** %3, align 8
  %11 = getelementptr inbounds %struct.ps_internal, %struct.ps_internal* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @try_module_get(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  store %struct.ps_internal* null, %struct.ps_internal** %3, align 8
  br label %17

17:                                               ; preds = %16, %9, %1
  %18 = call i32 @up_read(i32* @_ps_lock)
  %19 = load %struct.ps_internal*, %struct.ps_internal** %3, align 8
  ret %struct.ps_internal* %19
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.ps_internal* @__find_path_selector_type(i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
