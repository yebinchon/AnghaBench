; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c_dm_get_path_selector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-path-selector.c_dm_get_path_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_selector_type = type { i32 }
%struct.ps_internal = type { %struct.path_selector_type }

@.str = private unnamed_addr constant [6 x i8] c"dm-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.path_selector_type* @dm_get_path_selector(i8* %0) #0 {
  %2 = alloca %struct.path_selector_type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ps_internal*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.path_selector_type* null, %struct.path_selector_type** %2, align 8
  br label %27

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.ps_internal* @get_path_selector(i8* %9)
  store %struct.ps_internal* %10, %struct.ps_internal** %4, align 8
  %11 = load %struct.ps_internal*, %struct.ps_internal** %4, align 8
  %12 = icmp ne %struct.ps_internal* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @request_module(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call %struct.ps_internal* @get_path_selector(i8* %16)
  store %struct.ps_internal* %17, %struct.ps_internal** %4, align 8
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.ps_internal*, %struct.ps_internal** %4, align 8
  %20 = icmp ne %struct.ps_internal* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.ps_internal*, %struct.ps_internal** %4, align 8
  %23 = getelementptr inbounds %struct.ps_internal, %struct.ps_internal* %22, i32 0, i32 0
  br label %25

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi %struct.path_selector_type* [ %23, %21 ], [ null, %24 ]
  store %struct.path_selector_type* %26, %struct.path_selector_type** %2, align 8
  br label %27

27:                                               ; preds = %25, %7
  %28 = load %struct.path_selector_type*, %struct.path_selector_type** %2, align 8
  ret %struct.path_selector_type* %28
}

declare dso_local %struct.ps_internal* @get_path_selector(i8*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
