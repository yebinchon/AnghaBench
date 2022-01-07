; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/connector/extr_cn_test.c_cn_test_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/connector/extr_cn_test.c_cn_test_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }

@cn_test_id = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@cn_test_name = common dso_local global i32 0, align 4
@cn_test_callback = common dso_local global i32 0, align 4
@cn_test_timer = common dso_local global i32 0, align 4
@cn_test_timer_func = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"initialized with id={%u.%u}\0A\00", align 1
@nls = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cn_test_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cn_test_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @cn_test_name, align 4
  %4 = load i32, i32* @cn_test_callback, align 4
  %5 = call i32 @cn_add_callback(%struct.TYPE_6__* @cn_test_id, i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %29

9:                                                ; preds = %0
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cn_test_id, i32 0, i32 0), align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cn_test_id, i32 0, i32 0), align 4
  %12 = load i32, i32* @cn_test_name, align 4
  %13 = load i32, i32* @cn_test_callback, align 4
  %14 = call i32 @cn_add_callback(%struct.TYPE_6__* @cn_test_id, i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = call i32 @cn_del_callback(%struct.TYPE_6__* @cn_test_id)
  br label %29

19:                                               ; preds = %9
  %20 = load i32, i32* @cn_test_timer_func, align 4
  %21 = call i32 @setup_timer(i32* @cn_test_timer, i32 %20, i32 0)
  %22 = load i64, i64* @jiffies, align 8
  %23 = call i64 @msecs_to_jiffies(i32 1000)
  %24 = add nsw i64 %22, %23
  %25 = call i32 @mod_timer(i32* @cn_test_timer, i64 %24)
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cn_test_id, i32 0, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cn_test_id, i32 0, i32 0), align 4
  %28 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  store i32 0, i32* %1, align 4
  br label %44

29:                                               ; preds = %17, %8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nls, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nls, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @nls, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @sock_release(i64 %40)
  br label %42

42:                                               ; preds = %37, %32, %29
  %43 = load i32, i32* %2, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @cn_add_callback(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @cn_del_callback(%struct.TYPE_6__*) #1

declare dso_local i32 @setup_timer(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @sock_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
