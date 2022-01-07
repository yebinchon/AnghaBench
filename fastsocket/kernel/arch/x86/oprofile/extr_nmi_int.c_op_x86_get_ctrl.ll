; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_nmi_int.c_op_x86_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_nmi_int.c_op_x86_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_x86_model_spec = type { i32 }
%struct.op_counter_config = type { i32, i32, i64, i64, i32 }

@ARCH_PERFMON_EVENTSEL_INT = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_USR = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_OS = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_INV = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_EDGE = common dso_local global i32 0, align 4
@ARCH_PERFMON_EVENTSEL_CMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_x86_get_ctrl(%struct.op_x86_model_spec* %0, %struct.op_counter_config* %1) #0 {
  %3 = alloca %struct.op_x86_model_spec*, align 8
  %4 = alloca %struct.op_counter_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.op_x86_model_spec* %0, %struct.op_x86_model_spec** %3, align 8
  store %struct.op_counter_config* %1, %struct.op_counter_config** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %8 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INT, align 4
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %14 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ARCH_PERFMON_EVENTSEL_USR, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %25 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @ARCH_PERFMON_EVENTSEL_OS, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %36 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 255
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @ARCH_PERFMON_EVENTSEL_INV, align 4
  %43 = load i32, i32* @ARCH_PERFMON_EVENTSEL_EDGE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @ARCH_PERFMON_EVENTSEL_CMASK, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %48 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.op_counter_config*, %struct.op_counter_config** %4, align 8
  %52 = getelementptr inbounds %struct.op_counter_config, %struct.op_counter_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.op_x86_model_spec*, %struct.op_x86_model_spec** %3, align 8
  %57 = getelementptr inbounds %struct.op_x86_model_spec, %struct.op_x86_model_spec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %31
  %61 = load %struct.op_x86_model_spec*, %struct.op_x86_model_spec** %3, align 8
  %62 = getelementptr inbounds %struct.op_x86_model_spec, %struct.op_x86_model_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %65

64:                                               ; preds = %31
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i32 [ %63, %60 ], [ 255, %64 ]
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 255
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, 3840
  %75 = shl i32 %74, 24
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
