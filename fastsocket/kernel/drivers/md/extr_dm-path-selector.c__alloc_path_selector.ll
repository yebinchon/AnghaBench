; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c__alloc_path_selector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c__alloc_path_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_internal = type { %struct.path_selector_type }
%struct.path_selector_type = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ps_internal* (%struct.path_selector_type*)* @_alloc_path_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ps_internal* @_alloc_path_selector(%struct.path_selector_type* %0) #0 {
  %2 = alloca %struct.path_selector_type*, align 8
  %3 = alloca %struct.ps_internal*, align 8
  store %struct.path_selector_type* %0, %struct.path_selector_type** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.ps_internal* @kzalloc(i32 4, i32 %4)
  store %struct.ps_internal* %5, %struct.ps_internal** %3, align 8
  %6 = load %struct.ps_internal*, %struct.ps_internal** %3, align 8
  %7 = icmp ne %struct.ps_internal* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.ps_internal*, %struct.ps_internal** %3, align 8
  %10 = getelementptr inbounds %struct.ps_internal, %struct.ps_internal* %9, i32 0, i32 0
  %11 = load %struct.path_selector_type*, %struct.path_selector_type** %2, align 8
  %12 = bitcast %struct.path_selector_type* %10 to i8*
  %13 = bitcast %struct.path_selector_type* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.ps_internal*, %struct.ps_internal** %3, align 8
  ret %struct.ps_internal* %15
}

declare dso_local %struct.ps_internal* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
