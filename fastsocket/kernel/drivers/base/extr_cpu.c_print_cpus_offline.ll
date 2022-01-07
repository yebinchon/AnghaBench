; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_cpu.c_print_cpus_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/base/extr_cpu.c_print_cpus_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysdev_class = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@total_cpus = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d-%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysdev_class*, i8*)* @print_cpus_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_cpus_offline(%struct.sysdev_class* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysdev_class*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sysdev_class* %0, %struct.sysdev_class** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sub nsw i32 %9, 2
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i32 @alloc_cpumask_var(i32* %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %96

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @cpu_online_mask, align 4
  %20 = call i32 @cpumask_complement(i32 %18, i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @cpulist_scnprintf(i8* %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @free_cpumask_var(i32 %25)
  %27 = load i32, i32* @total_cpus, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %17
  %30 = load i32, i32* @nr_cpu_ids, align 4
  %31 = load i32, i32* @total_cpus, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 44, i8* %45, align 1
  br label %46

46:                                               ; preds = %40, %36, %33
  %47 = load i32, i32* @nr_cpu_ids, align 4
  %48 = load i32, i32* @total_cpus, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* @nr_cpu_ids, align 4
  %60 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %55, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  br label %81

65:                                               ; preds = %46
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* @nr_cpu_ids, align 4
  %74 = load i32, i32* @total_cpus, align 4
  %75 = sub nsw i32 %74, 1
  %76 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %69, i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %65, %51
  br label %82

82:                                               ; preds = %81, %29, %17
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %86, i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %82, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_complement(i32, i32) #1

declare dso_local i32 @cpulist_scnprintf(i8*, i32, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
