; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c_mipsxx_reg_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/oprofile/extr_op_model_mipsxx.c_mipsxx_reg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i64* }
%struct.op_counter_config = type { i64, i64, i64, i64, i32, i32 }

@op_model_mipsxx_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@reg = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@M_PERFCTL_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@M_PERFCTL_KERNEL = common dso_local global i32 0, align 4
@M_PERFCTL_USER = common dso_local global i32 0, align 4
@M_PERFCTL_EXL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.op_counter_config*)* @mipsxx_reg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mipsxx_reg_setup(%struct.op_counter_config* %0) #0 {
  %2 = alloca %struct.op_counter_config*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.op_counter_config* %0, %struct.op_counter_config** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @op_model_mipsxx_ops, i32 0, i32 0), align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %100, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %103

10:                                               ; preds = %6
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32 0, i32* %14, align 4
  %15 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 1), align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64 0, i64* %18, align 8
  %19 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %19, i64 %21
  %23 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %10
  br label %100

27:                                               ; preds = %10
  %28 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %28, i64 %30
  %32 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @M_PERFCTL_EVENT(i32 %33)
  %35 = load i32, i32* @M_PERFCTL_INTERRUPT_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %36, i32* %40, align 4
  %41 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %41, i64 %43
  %45 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %27
  %49 = load i32, i32* @M_PERFCTL_KERNEL, align 4
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %27
  %57 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %57, i64 %59
  %61 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load i32, i32* @M_PERFCTL_USER, align 4
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %56
  %73 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %73, i64 %75
  %77 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %72
  %81 = load i32, i32* @M_PERFCTL_EXL, align 4
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 0), align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %80, %72
  %89 = load %struct.op_counter_config*, %struct.op_counter_config** %2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %89, i64 %91
  %93 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 2147483648, %94
  %96 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reg, i32 0, i32 1), align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  store i64 %95, i64* %99, align 8
  br label %100

100:                                              ; preds = %88, %26
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %6

103:                                              ; preds = %6
  ret void
}

declare dso_local i32 @M_PERFCTL_EVENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
