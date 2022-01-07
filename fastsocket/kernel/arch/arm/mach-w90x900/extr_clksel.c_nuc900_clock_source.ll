; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_clksel.c_nuc900_clock_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_clksel.c_nuc900_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@clksel_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pll0\00", align 1
@PLL0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@PLL1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@EXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"oth\00", align 1
@OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nuc900_clock_source(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  store i32 0, i32* %5, align 4
  %12 = call i32 @mutex_lock(i32* @clksel_sem)
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i8* @dev_name(%struct.device* %16)
  store i8* %17, i8** %6, align 8
  br label %19

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @PLL0, align 4
  store i32 %24, i32* %5, align 4
  br label %46

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @PLL1, align 4
  store i32 %30, i32* %5, align 4
  br label %45

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @EXT, align 4
  store i32 %36, i32* %5, align 4
  br label %44

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @OTHER, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @clock_source_select(i8* %47, i32 %48)
  %50 = call i32 @mutex_unlock(i32* @clksel_sem)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @clock_source_select(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
