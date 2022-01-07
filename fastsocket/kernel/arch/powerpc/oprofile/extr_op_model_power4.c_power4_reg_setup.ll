; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_power4.c_power4_reg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/oprofile/extr_op_model_power4.c_power4_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.op_counter_config = type { i64 }
%struct.op_system_config = type { i64, i64, i32, i32, i32 }

@mmcr0_val = common dso_local global i32 0, align 4
@mmcr1_val = common dso_local global i32 0, align 4
@mmcra_val = common dso_local global i32 0, align 4
@PVR_POWER7p = common dso_local global i32 0, align 4
@cntr_marked_events = common dso_local global i64 0, align 8
@cur_cpu_spec = common dso_local global %struct.TYPE_2__* null, align 8
@reset_value = common dso_local global i64* null, align 8
@MMCR0_KERNEL_DISABLE = common dso_local global i32 0, align 4
@MMCR0_PROBLEM_DISABLE = common dso_local global i32 0, align 4
@PV_POWER4 = common dso_local global i32 0, align 4
@PV_POWER4p = common dso_local global i32 0, align 4
@PV_970 = common dso_local global i32 0, align 4
@PV_970FX = common dso_local global i32 0, align 4
@PV_970MP = common dso_local global i32 0, align 4
@PV_970GX = common dso_local global i32 0, align 4
@PV_POWER5 = common dso_local global i32 0, align 4
@PV_POWER5p = common dso_local global i32 0, align 4
@use_slot_nums = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_counter_config*, %struct.op_system_config*, i32)* @power4_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power4_reg_setup(%struct.op_counter_config* %0, %struct.op_system_config* %1, i32 %2) #0 {
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca %struct.op_system_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %4, align 8
  store %struct.op_system_config* %1, %struct.op_system_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %9 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* @mmcr0_val, align 4
  %11 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %12 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* @mmcr1_val, align 4
  %14 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %15 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* @mmcra_val, align 4
  %17 = load i32, i32* @PVR_POWER7p, align 4
  %18 = call i64 @__is_processor(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @mmcr1_val, align 4
  %22 = call i64 @power7_marked_instr_event(i32 %21)
  store i64 %22, i64* @cntr_marked_events, align 8
  br label %24

23:                                               ; preds = %3
  store i64 0, i64* @cntr_marked_events, align 8
  br label %24

24:                                               ; preds = %23, %20
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_cpu_spec, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %32, i64 %34
  %36 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 2147483648, %37
  %39 = load i64*, i64** @reset_value, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %48 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @MMCR0_KERNEL_DISABLE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* @mmcr0_val, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* @mmcr0_val, align 4
  br label %60

56:                                               ; preds = %46
  %57 = load i32, i32* @MMCR0_KERNEL_DISABLE, align 4
  %58 = load i32, i32* @mmcr0_val, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* @mmcr0_val, align 4
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.op_system_config*, %struct.op_system_config** %5, align 8
  %62 = getelementptr inbounds %struct.op_system_config, %struct.op_system_config* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @MMCR0_PROBLEM_DISABLE, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @mmcr0_val, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* @mmcr0_val, align 4
  br label %74

70:                                               ; preds = %60
  %71 = load i32, i32* @MMCR0_PROBLEM_DISABLE, align 4
  %72 = load i32, i32* @mmcr0_val, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @mmcr0_val, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* @PV_POWER4, align 4
  %76 = call i64 @__is_processor(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %106, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @PV_POWER4p, align 4
  %80 = call i64 @__is_processor(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @PV_970, align 4
  %84 = call i64 @__is_processor(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %106, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @PV_970FX, align 4
  %88 = call i64 @__is_processor(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* @PV_970MP, align 4
  %92 = call i64 @__is_processor(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @PV_970GX, align 4
  %96 = call i64 @__is_processor(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* @PV_POWER5, align 4
  %100 = call i64 @__is_processor(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* @PV_POWER5p, align 4
  %104 = call i64 @__is_processor(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98, %94, %90, %86, %82, %78, %74
  store i32 1, i32* @use_slot_nums, align 4
  br label %107

107:                                              ; preds = %106, %102
  ret i32 0
}

declare dso_local i64 @__is_processor(i32) #1

declare dso_local i64 @power7_marked_instr_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
