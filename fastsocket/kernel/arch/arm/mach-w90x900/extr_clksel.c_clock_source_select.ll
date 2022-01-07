; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_clksel.c_clock_source_select.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-w90x900/extr_clksel.c_clock_source_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_CLKSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"nuc900-ms\00", align 1
@MSOFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"nuc900-atapi\00", align 1
@ATAOFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"nuc900-lcd\00", align 1
@LCDOFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"nuc900-audio\00", align 1
@AUDOFFSET = common dso_local global i32 0, align 4
@CPUOFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @clock_source_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_source_select(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @REG_CLKSEL, align 4
  %8 = call i32 @__raw_readl(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @MSOFFSET, align 4
  store i32 %13, i32* %6, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ATAOFFSET, align 4
  store i32 %19, i32* %6, align 4
  br label %36

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @LCDOFFSET, align 4
  store i32 %25, i32* %6, align 4
  br label %35

26:                                               ; preds = %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @AUDOFFSET, align 4
  store i32 %31, i32* %6, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @CPUOFFSET, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %24
  br label %36

36:                                               ; preds = %35, %18
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 3, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @REG_CLKSEL, align 4
  %50 = call i32 @__raw_writel(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
