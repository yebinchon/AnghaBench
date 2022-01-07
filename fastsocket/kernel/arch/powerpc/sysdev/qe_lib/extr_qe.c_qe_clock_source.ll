; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_qe.c_qe_clock_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/qe_lib/extr_qe.c_qe_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@QE_CLK_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"brg\00", align 1
@QE_BRG1 = common dso_local global i32 0, align 4
@QE_CLK_DUMMY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"clk\00", align 1
@QE_CLK1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qe_clock_source(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strcasecmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @QE_CLK_NONE, align 4
  store i32 %9, i32* %2, align 4
  br label %52

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strncasecmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 3
  %17 = call i32 @simple_strtoul(i8* %16, i32* null, i32 10)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp uge i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp ule i32 %21, 16
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @QE_BRG1, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %52

28:                                               ; preds = %20, %14
  %29 = load i32, i32* @QE_CLK_DUMMY, align 4
  store i32 %29, i32* %2, align 4
  br label %52

30:                                               ; preds = %10
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @strncasecmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = call i32 @simple_strtoul(i8* %36, i32* null, i32 10)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp uge i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = icmp ule i32 %41, 24
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @QE_CLK1, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %40, %34
  %49 = load i32, i32* @QE_CLK_DUMMY, align 4
  store i32 %49, i32* %2, align 4
  br label %52

50:                                               ; preds = %30
  %51 = load i32, i32* @QE_CLK_DUMMY, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %48, %43, %28, %23, %8
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
