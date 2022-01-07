; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_cbe_cpufreq.c_cbe_cpufreq_cpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/extr_cbe_cpufreq.c_cbe_cpufreq_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.cpufreq_policy = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"init cpufreq on CPU %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid CBE regs pointers for cpufreq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"max clock-frequency is at %u kHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"initializing frequency table\0A\00", align 1
@cbe_freqs = common dso_local global %struct.TYPE_6__* null, align 8
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"current pmode is at %d\0A\00", align 1
@cpu_sibling_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @cbe_cpufreq_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbe_cpufreq_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device_node* @of_get_cpu_node(i32 %11, i32* null)
  store %struct.device_node* %12, %struct.device_node** %8, align 8
  %13 = load %struct.device_node*, %struct.device_node** %8, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %115

18:                                               ; preds = %1
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %20 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %24 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cbe_get_cpu_pmd_regs(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cbe_get_cpu_mic_tm_regs(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28, %18
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %115

38:                                               ; preds = %28
  %39 = load %struct.device_node*, %struct.device_node** %8, align 8
  %40 = call i32* @of_get_property(%struct.device_node* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %40, i32** %4, align 8
  %41 = load %struct.device_node*, %struct.device_node** %8, align 8
  %42 = call i32 @of_node_put(%struct.device_node* %41)
  %43 = load i32*, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %115

48:                                               ; preds = %38
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %50, 1000
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %86, %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_freqs, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %55
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_freqs, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %65, %71
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_freqs, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_freqs, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %78, i32 %84)
  br label %86

86:                                               ; preds = %64
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %55

89:                                               ; preds = %55
  %90 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %91 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 25000, i32* %92, align 4
  %93 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %94 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @cbe_cpufreq_get_pmode(i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_freqs, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %106 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_freqs, align 8
  %108 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %109 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_6__* %107, i32 %110)
  %112 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cbe_freqs, align 8
  %114 = call i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy* %112, %struct.TYPE_6__* %113)
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %89, %45, %34, %15
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @cbe_get_cpu_pmd_regs(i32) #1

declare dso_local i32 @cbe_get_cpu_mic_tm_regs(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @cbe_cpufreq_get_pmode(i32) #1

declare dso_local i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
