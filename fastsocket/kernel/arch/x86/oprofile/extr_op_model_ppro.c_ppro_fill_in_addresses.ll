; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_ppro.c_ppro_fill_in_addresses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/oprofile/extr_op_model_ppro.c_ppro_fill_in_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.op_msrs = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@num_counters = common dso_local global i32 0, align 4
@MSR_P6_PERFCTR0 = common dso_local global i64 0, align 8
@MSR_P6_EVNTSEL0 = common dso_local global i64 0, align 8
@counter_config = common dso_local global %struct.TYPE_6__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.op_msrs*)* @ppro_fill_in_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppro_fill_in_addresses(%struct.op_msrs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.op_msrs*, align 8
  %4 = alloca i32, align 4
  store %struct.op_msrs* %0, %struct.op_msrs** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %69, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @num_counters, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %72

9:                                                ; preds = %5
  %10 = load i64, i64* @MSR_P6_PERFCTR0, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  %14 = call i32 @reserve_perfctr_nmi(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %53

17:                                               ; preds = %9
  %18 = load i64, i64* @MSR_P6_EVNTSEL0, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = call i32 @reserve_evntsel_nmi(i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* @MSR_P6_PERFCTR0, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @release_perfctr_nmi(i64 %28)
  br label %53

30:                                               ; preds = %17
  %31 = load i64, i64* @MSR_P6_PERFCTR0, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %36 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %34, i64* %41, align 8
  %42 = load i64, i64* @MSR_P6_EVNTSEL0, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %47 = getelementptr inbounds %struct.op_msrs, %struct.op_msrs* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i64 %45, i64* %52, align 8
  br label %69

53:                                               ; preds = %24, %16
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @counter_config, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %53
  br label %69

62:                                               ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @op_x86_warn_reserved(i32 %63)
  %65 = load %struct.op_msrs*, %struct.op_msrs** %3, align 8
  %66 = call i32 @ppro_shutdown(%struct.op_msrs* %65)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %73

69:                                               ; preds = %61, %30
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %5

72:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @reserve_perfctr_nmi(i64) #1

declare dso_local i32 @reserve_evntsel_nmi(i64) #1

declare dso_local i32 @release_perfctr_nmi(i64) #1

declare dso_local i32 @op_x86_warn_reserved(i32) #1

declare dso_local i32 @ppro_shutdown(%struct.op_msrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
