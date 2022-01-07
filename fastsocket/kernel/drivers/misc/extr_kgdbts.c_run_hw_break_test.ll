; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_run_hw_break_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_kgdbts.c_run_hw_break_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@test_complete = common dso_local global i32 0, align 4
@hw_write_break_test = common dso_local global i32 0, align 4
@ts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"hw_write_break_test\00", align 1
@hw_access_break_test = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"hw_access_break_test\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"kgdbts: ERROR %s broke on access\0A\00", align 1
@hwbreaks_ok = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"kgdbts: ERROR %s test failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @run_hw_break_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_hw_break_test(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @test_complete, align 4
  %3 = call i32 (...) @init_simple_test()
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @hw_write_break_test, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 8
  br label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @hw_access_break_test, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 8
  br label %10

10:                                               ; preds = %8, %6
  %11 = call i32 (...) @kgdb_breakpoint()
  %12 = call i32 (...) @hw_break_val_access()
  %13 = load i32, i32* %2, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32, i32* @test_complete, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 8
  %20 = call i32 @eprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  store i64 0, i64* @hwbreaks_ok, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = call i32 (...) @hw_break_val_write()
  br label %23

23:                                               ; preds = %21, %10
  %24 = call i32 (...) @kgdb_breakpoint()
  %25 = load i32, i32* @test_complete, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ts, i32 0, i32 0), align 8
  %30 = call i32 @eprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  store i64 0, i64* @hwbreaks_ok, align 8
  br label %31

31:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @init_simple_test(...) #1

declare dso_local i32 @kgdb_breakpoint(...) #1

declare dso_local i32 @hw_break_val_access(...) #1

declare dso_local i32 @eprintk(i8*, i8*) #1

declare dso_local i32 @hw_break_val_write(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
