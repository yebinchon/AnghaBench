; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_pa6t.c_pa6t_reg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_pa6t.c_pa6t_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.op_counter_config = type { i64, i32 }
%struct.op_system_config = type { i32, i32, i64, i64 }

@cur_cpu_spec = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"turned off counter %u\0A\00", align 1
@PA6T_MMCR0_SUPEN = common dso_local global i32 0, align 4
@PA6T_MMCR0_HYPEN = common dso_local global i32 0, align 4
@PA6T_MMCR0_PREN = common dso_local global i32 0, align 4
@mmcr0_val = common dso_local global i32 0, align 4
@mmcr1_val = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"mmcr0_val inited to %016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"mmcr1_val inited to %016lx\0A\00", align 1
@reset_value = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"reset_value for pmc%u inited to 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*, %struct.op_system_config*, i32)* @pa6t_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pa6t_reg_setup(%struct.op_counter_config* %0, %struct.op_system_config* %1, i32 %2) #0 {
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca %struct.op_system_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %4, align 8
  store %struct.op_system_config* %1, %struct.op_system_config** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %47, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %15, i64 %17
  %19 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = xor i64 %25, -1
  %27 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %28 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 12
  %35 = zext i32 %34 to i64
  %36 = shl i64 1, %35
  %37 = xor i64 %36, -1
  %38 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %39 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = and i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %22, %14
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %8

50:                                               ; preds = %8
  %51 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %52 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32, i32* @PA6T_MMCR0_SUPEN, align 4
  %57 = load i32, i32* @PA6T_MMCR0_HYPEN, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %60 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %72

63:                                               ; preds = %50
  %64 = load i32, i32* @PA6T_MMCR0_SUPEN, align 4
  %65 = load i32, i32* @PA6T_MMCR0_HYPEN, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %69 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %63, %55
  %73 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %74 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @PA6T_MMCR0_PREN, align 4
  %79 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %80 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %90

83:                                               ; preds = %72
  %84 = load i32, i32* @PA6T_MMCR0_PREN, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %87 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %83, %77
  %91 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %92 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* @mmcr0_val, align 4
  %94 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %95 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* @mmcr1_val, align 4
  %97 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %98 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %102 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %130, %90
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %105
  %112 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %112, i64 %114
  %116 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 549755813888, %117
  %119 = load i64*, i64** @reset_value, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 %118, i64* %122, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i64*, i64** @reset_value, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %123, i64 %128)
  br label %130

130:                                              ; preds = %111
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %105

133:                                              ; preds = %105
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
