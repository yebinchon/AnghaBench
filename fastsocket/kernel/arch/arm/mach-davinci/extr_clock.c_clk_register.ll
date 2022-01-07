; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_clock.c_clk_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_clock.c_clk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CLK: %s parent %s has no rate!\0A\00", align 1
@clocks_mutex = common dso_local global i32 0, align 4
@clocks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_register(%struct.clk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %3, align 8
  %4 = load %struct.clk*, %struct.clk** %3, align 8
  %5 = icmp eq %struct.clk* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %struct.clk*, %struct.clk** %3, align 8
  %8 = call i64 @IS_ERR(%struct.clk* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %67

13:                                               ; preds = %6
  %14 = load %struct.clk*, %struct.clk** %3, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.clk*, %struct.clk** %3, align 8
  %20 = getelementptr inbounds %struct.clk, %struct.clk* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %18, %13
  %27 = phi i1 [ false, %13 ], [ %25, %18 ]
  %28 = zext i1 %27 to i32
  %29 = load %struct.clk*, %struct.clk** %3, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.clk*, %struct.clk** %3, align 8
  %33 = getelementptr inbounds %struct.clk, %struct.clk* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @WARN(i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %26
  %43 = call i32 @mutex_lock(i32* @clocks_mutex)
  %44 = load %struct.clk*, %struct.clk** %3, align 8
  %45 = getelementptr inbounds %struct.clk, %struct.clk* %44, i32 0, i32 2
  %46 = call i32 @list_add_tail(i32* %45, i32* @clocks)
  %47 = call i32 @mutex_unlock(i32* @clocks_mutex)
  %48 = load %struct.clk*, %struct.clk** %3, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %67

53:                                               ; preds = %42
  %54 = load %struct.clk*, %struct.clk** %3, align 8
  %55 = getelementptr inbounds %struct.clk, %struct.clk* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = icmp ne %struct.TYPE_2__* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.clk*, %struct.clk** %3, align 8
  %60 = getelementptr inbounds %struct.clk, %struct.clk* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.clk*, %struct.clk** %3, align 8
  %65 = getelementptr inbounds %struct.clk, %struct.clk* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %58, %53
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %52, %39, %10
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
