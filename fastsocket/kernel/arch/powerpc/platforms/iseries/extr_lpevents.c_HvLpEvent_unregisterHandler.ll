; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_lpevents.c_HvLpEvent_unregisterHandler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_lpevents.c_HvLpEvent_unregisterHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HvLpEvent_Type_NumTypes = common dso_local global i64 0, align 8
@lpEventHandlerPaths = common dso_local global i32* null, align 8
@lpEventHandler = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HvLpEvent_unregisterHandler(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = call i32 (...) @might_sleep()
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @HvLpEvent_Type_NumTypes, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32*, i32** @lpEventHandlerPaths, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load i32**, i32*** @lpEventHandler, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  store i32* null, i32** %17, align 8
  %18 = call i32 (...) @synchronize_sched()
  store i32 0, i32* %2, align 4
  br label %21

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19, %1
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @synchronize_sched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
