; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_proc_get_irqstats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_via-pmu.c_proc_get_irqstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@proc_get_irqstats.irq_names = internal global [11 x i8*] [i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [27 x i8] c"Total CB1 triggered events\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Total GPIO1 triggered events\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"PC-Card eject button\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Sound/Brightness button\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ADB message\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Battery state change\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Environment interrupt\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Tick timer\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Ghost interrupt (zero len)\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Empty interrupt (empty mask)\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Max irqs in a row\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c" %2u: %10u (%s)\0A\00", align 1
@pmu_irq_stats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @proc_get_irqstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_irqstats(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %14, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %35, %6
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 11
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i8*, i8** %14, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** @pmu_irq_stats, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [11 x i8*], [11 x i8*]* @proc_get_irqstats.irq_names, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %21, i32 %26, i8* %30)
  %32 = load i8*, i8** %14, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %14, align 8
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  br label %16

38:                                               ; preds = %16
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  ret i32 %44
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
