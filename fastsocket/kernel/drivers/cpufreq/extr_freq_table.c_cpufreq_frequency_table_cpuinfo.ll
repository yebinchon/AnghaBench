; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_freq_table.c_cpufreq_frequency_table_cpuinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_freq_table.c_cpufreq_frequency_table_cpuinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpufreq_frequency_table = type { i32, i32 }

@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@CPUFREQ_ENTRY_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"table entry %u is invalid, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"table entry %u: %u kHz, %u index\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy* %0, %struct.cpufreq_frequency_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca %struct.cpufreq_frequency_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store %struct.cpufreq_frequency_table* %1, %struct.cpufreq_frequency_table** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %54, %2
  %11 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %11, i64 %13
  %15 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %10
  %20 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %20, i64 %22
  %24 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @CPUFREQ_ENTRY_INVALID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %54

32:                                               ; preds = %19
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %35, i64 %37
  %39 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %29
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %10

57:                                               ; preds = %10
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %60 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %63 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %66 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %69 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %68, i32 0, i32 1
  store i32 %64, i32* %69, align 4
  %70 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %71 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %57
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
