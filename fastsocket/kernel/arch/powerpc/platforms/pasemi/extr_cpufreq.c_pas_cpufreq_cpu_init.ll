; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_cpufreq.c_pas_cpufreq_cpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pasemi/extr_cpufreq.c_pas_cpufreq_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.cpufreq_policy = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i64 }
%struct.device_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"1682m-sdc\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"pasemi,pwrficient-sdc\00", align 1
@SDCASR_OFFSET = common dso_local global i64 0, align 8
@sdcasr_mapbase = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"1682m-gizmo\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pasemi,pwrficient-gizmo\00", align 1
@sdcpwr_mapbase = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"init cpufreq on CPU %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"max clock-frequency is at %u kHz\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"initializing frequency table\0A\00", align 1
@pas_freqs = common dso_local global %struct.TYPE_6__* null, align 8
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"%d: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"current astate is at %d\0A\00", align 1
@cpu_online_map = common dso_local global i32 0, align 4
@ppc_proc_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @pas_cpufreq_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pas_cpufreq_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %15 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_get_cpu_node(i32 %16, i32* null)
  store %struct.device_node* %17, %struct.device_node** %9, align 8
  %18 = load %struct.device_node*, %struct.device_node** %9, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %174

21:                                               ; preds = %1
  %22 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %22, %struct.device_node** %10, align 8
  %23 = load %struct.device_node*, %struct.device_node** %10, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %26, %struct.device_node** %10, align 8
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.device_node*, %struct.device_node** %10, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %174

31:                                               ; preds = %27
  %32 = load %struct.device_node*, %struct.device_node** %10, align 8
  %33 = call i32 @of_address_to_resource(%struct.device_node* %32, i32 0, %struct.resource* %8)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.device_node*, %struct.device_node** %10, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %174

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SDCASR_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @ioremap(i64 %43, i32 8192)
  store i32 %44, i32* @sdcasr_mapbase, align 4
  %45 = load i32, i32* @sdcasr_mapbase, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %174

50:                                               ; preds = %39
  %51 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %51, %struct.device_node** %10, align 8
  %52 = load %struct.device_node*, %struct.device_node** %10, align 8
  %53 = icmp ne %struct.device_node* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store %struct.device_node* %55, %struct.device_node** %10, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.device_node*, %struct.device_node** %10, align 8
  %58 = icmp ne %struct.device_node* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %11, align 4
  br label %171

62:                                               ; preds = %56
  %63 = load %struct.device_node*, %struct.device_node** %10, align 8
  %64 = call i32 @of_address_to_resource(%struct.device_node* %63, i32 0, %struct.resource* %8)
  store i32 %64, i32* %11, align 4
  %65 = load %struct.device_node*, %struct.device_node** %10, align 8
  %66 = call i32 @of_node_put(%struct.device_node* %65)
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %171

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ioremap(i64 %72, i32 4096)
  store i32 %73, i32* @sdcpwr_mapbase, align 4
  %74 = load i32, i32* @sdcpwr_mapbase, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %171

79:                                               ; preds = %70
  %80 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %81 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load %struct.device_node*, %struct.device_node** %9, align 8
  %85 = call i32* @of_get_property(%struct.device_node* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store i32* %85, i32** %4, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %11, align 4
  br label %168

91:                                               ; preds = %79
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sdiv i32 %93, 1000
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %129, %91
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pas_freqs, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %98
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pas_freqs, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @get_astate_freq(i32 %113)
  %115 = mul nsw i32 %114, 100000
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pas_freqs, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  store i32 %115, i32* %120, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pas_freqs, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %121, i32 %127)
  br label %129

129:                                              ; preds = %107
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %98

132:                                              ; preds = %98
  %133 = call i32 (...) @get_gizmo_latency()
  %134 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %135 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  %137 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %138 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @get_cur_astate(i32 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pas_freqs, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %150 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %152 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @cpumask_copy(i32 %153, i32* @cpu_online_map)
  %155 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %156 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 1000
  store i64 %159, i64* @ppc_proc_freq, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pas_freqs, align 8
  %161 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %162 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_6__* %160, i32 %163)
  %165 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pas_freqs, align 8
  %167 = call i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy* %165, %struct.TYPE_6__* %166)
  store i32 %167, i32* %2, align 4
  br label %176

168:                                              ; preds = %88
  %169 = load i32, i32* @sdcpwr_mapbase, align 4
  %170 = call i32 @iounmap(i32 %169)
  br label %171

171:                                              ; preds = %168, %76, %69, %59
  %172 = load i32, i32* @sdcasr_mapbase, align 4
  %173 = call i32 @iounmap(i32 %172)
  br label %174

174:                                              ; preds = %171, %47, %38, %30, %20
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %2, align 4
  br label %176

176:                                              ; preds = %174, %132
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @ioremap(i64, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @get_astate_freq(i32) #1

declare dso_local i32 @get_gizmo_latency(...) #1

declare dso_local i32 @get_cur_astate(i32) #1

declare dso_local i32 @cpumask_copy(i32, i32*) #1

declare dso_local i32 @cpufreq_frequency_table_get_attr(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cpufreq_frequency_table_cpuinfo(%struct.cpufreq_policy*, %struct.TYPE_6__*) #1

declare dso_local i32 @iounmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
