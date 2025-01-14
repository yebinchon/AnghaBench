; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_set_nice.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_set_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@RLIMIT_NICE = common dso_local global i64 0, align 8
@BINDER_DEBUG_PRIORITY_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"binder: %d: nice value %ld not allowed use %ld instead\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"binder: %d RLIMIT_NICE not set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @binder_set_nice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_set_nice(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @can_nice(%struct.TYPE_8__* %4, i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @set_user_nice(%struct.TYPE_8__* %9, i64 %10)
  br label %42

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = load i64, i64* @RLIMIT_NICE, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 20, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %3, align 8
  %24 = load i32, i32* @BINDER_DEBUG_PRIORITY_CAP, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %2, align 8
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @binder_debug(i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i64 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @set_user_nice(%struct.TYPE_8__* %31, i64 %32)
  %34 = load i64, i64* %3, align 8
  %35 = icmp slt i64 %34, 20
  br i1 %35, label %36, label %37

36:                                               ; preds = %12
  br label %42

37:                                               ; preds = %12
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @binder_user_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %37, %36, %8
  ret void
}

declare dso_local i64 @can_nice(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @set_user_nice(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @binder_debug(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @binder_user_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
