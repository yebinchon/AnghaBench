; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_freq_table.c_cpufreq_frequency_table_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cpufreq/extr_freq_table.c_cpufreq_frequency_table_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpufreq_frequency_table = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"request for verification of policy (%u - %u kHz) for cpu %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@CPUFREQ_ENTRY_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"verification lead to (%u - %u kHz) for cpu %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpufreq_frequency_table_verify(%struct.cpufreq_policy* %0, %struct.cpufreq_frequency_table* %1) #0 {
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
  store i32 0, i32* %8, align 4
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %17 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cpu_online(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %119

28:                                               ; preds = %2
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %30 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %31 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %35 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %29, i32 %33, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %88, %28
  %40 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %40, i64 %42
  %44 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %39
  %49 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %49, i64 %51
  %53 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @CPUFREQ_ENTRY_INVALID, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %88

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %62 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp uge i32 %60, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %68 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ule i32 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %87

74:                                               ; preds = %65, %59
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %81 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ugt i32 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %78, %74
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %39

91:                                               ; preds = %39
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %97 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %100 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %101 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %105 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy* %99, i32 %103, i32 %107)
  %109 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %110 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %113 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %116 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dprintk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %111, i32 %114, i32 %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %98, %25
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @cpu_online(i32) #1

declare dso_local i32 @cpufreq_verify_within_limits(%struct.cpufreq_policy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
