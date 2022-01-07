; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_check_selftest_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/hw_random/extr_n2-drv.c_n2rng_check_selftest_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.n2rng = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SELFTEST_VAL = common dso_local global i32 0, align 4
@SELFTEST_LOOPS_MAX = common dso_local global i32 0, align 4
@SELFTEST_MATCH_GOAL = common dso_local global i32 0, align 4
@SELFTEST_POLY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Selftest failed on unit %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Selftest passed on unit %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.n2rng*, i64)* @n2rng_check_selftest_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n2rng_check_selftest_buffer(%struct.n2rng* %0, i64 %1) #0 {
  %3 = alloca %struct.n2rng*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.n2rng* %0, %struct.n2rng** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @SELFTEST_VAL, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @SELFTEST_LOOPS_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @n2rng_test_buffer_find(%struct.n2rng* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SELFTEST_MATCH_GOAL, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %33

26:                                               ; preds = %14
  %27 = load i32, i32* @SELFTEST_POLY, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @advance_polynomial(i32 %27, i32 %28, i32 1)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %10

33:                                               ; preds = %25, %10
  store i32 0, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SELFTEST_LOOPS_MAX, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %41 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %47 = call i32 @n2rng_dump_test_buffer(%struct.n2rng* %46)
  br label %55

48:                                               ; preds = %33
  %49 = load %struct.n2rng*, %struct.n2rng** %3, align 8
  %50 = getelementptr inbounds %struct.n2rng, %struct.n2rng* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @dev_info(i32* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %48, %37
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @n2rng_test_buffer_find(%struct.n2rng*, i32) #1

declare dso_local i32 @advance_polynomial(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @n2rng_dump_test_buffer(%struct.n2rng*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
