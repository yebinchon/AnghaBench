; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_parse_governor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_cpufreq.c_cpufreq_parse_governor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.cpufreq_governor = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"performance\00", align 1
@CPUFREQ_NAME_LEN = common dso_local global i32 0, align 4
@CPUFREQ_POLICY_PERFORMANCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"powersave\00", align 1
@CPUFREQ_POLICY_POWERSAVE = common dso_local global i32 0, align 4
@cpufreq_governor_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cpufreq_%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.cpufreq_governor**)* @cpufreq_parse_governor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_parse_governor(i8* %0, i32* %1, %struct.cpufreq_governor** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cpufreq_governor**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_governor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.cpufreq_governor** %2, %struct.cpufreq_governor*** %6, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %80

16:                                               ; preds = %3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @CPUFREQ_NAME_LEN, align 4
  %24 = call i32 @strnicmp(i8* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @CPUFREQ_POLICY_PERFORMANCE, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  store i32 0, i32* %7, align 4
  br label %38

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @CPUFREQ_NAME_LEN, align 4
  %32 = call i32 @strnicmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @CPUFREQ_POLICY_POWERSAVE, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %37, %26
  br label %79

39:                                               ; preds = %16
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %39
  %45 = call i32 @mutex_lock(i32* @cpufreq_governor_mutex)
  %46 = load i8*, i8** %4, align 8
  %47 = call %struct.cpufreq_governor* @__find_governor(i8* %46)
  store %struct.cpufreq_governor* %47, %struct.cpufreq_governor** %8, align 8
  %48 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %8, align 8
  %49 = icmp eq %struct.cpufreq_governor* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i8* @kasprintf(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = call i32 @mutex_unlock(i32* @cpufreq_governor_mutex)
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %10, align 4
  %60 = call i32 @mutex_lock(i32* @cpufreq_governor_mutex)
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  %65 = call %struct.cpufreq_governor* @__find_governor(i8* %64)
  store %struct.cpufreq_governor* %65, %struct.cpufreq_governor** %8, align 8
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @kfree(i8* %68)
  br label %70

70:                                               ; preds = %67, %44
  %71 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %8, align 8
  %72 = icmp ne %struct.cpufreq_governor* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %8, align 8
  %75 = load %struct.cpufreq_governor**, %struct.cpufreq_governor*** %6, align 8
  store %struct.cpufreq_governor* %74, %struct.cpufreq_governor** %75, align 8
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = call i32 @mutex_unlock(i32* @cpufreq_governor_mutex)
  br label %78

78:                                               ; preds = %76, %39
  br label %79

79:                                               ; preds = %78, %38
  br label %80

80:                                               ; preds = %79, %15
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @strnicmp(i8*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cpufreq_governor* @__find_governor(i8*) #1

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
