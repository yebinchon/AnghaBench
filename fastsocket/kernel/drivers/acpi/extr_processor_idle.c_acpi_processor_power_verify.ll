; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_power_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_power_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_processor_cx*, i32 }
%struct.acpi_processor_cx = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_MAX_POWER = common dso_local global i32 0, align 4
@max_cstate = common dso_local global i32 0, align 4
@lapic_timer_propagate_broadcast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_power_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_power_verify(%struct.acpi_processor* %0) #0 {
  %2 = alloca %struct.acpi_processor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_processor_cx*, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @INT_MAX, align 4
  %7 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %8 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %6, i32* %9, align 8
  store i32 1, i32* %3, align 4
  br label %10

10:                                               ; preds = %58, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ACPI_PROCESSOR_MAX_POWER, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @max_cstate, align 4
  %17 = icmp ule i32 %15, %16
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi i1 [ false, %10 ], [ %17, %14 ]
  br i1 %19, label %20, label %61

20:                                               ; preds = %18
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %24, i64 %26
  store %struct.acpi_processor_cx* %27, %struct.acpi_processor_cx** %5, align 8
  %28 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8
  %29 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %41 [
    i32 130, label %31
    i32 129, label %34
    i32 128, label %37
  ]

31:                                               ; preds = %20
  %32 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %41

34:                                               ; preds = %20
  %35 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8
  %36 = call i32 @acpi_processor_power_verify_c2(%struct.acpi_processor_cx* %35)
  br label %41

37:                                               ; preds = %20
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %39 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8
  %40 = call i32 @acpi_processor_power_verify_c3(%struct.acpi_processor* %38, %struct.acpi_processor_cx* %39)
  br label %41

41:                                               ; preds = %20, %37, %34, %31
  %42 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8
  %43 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %58

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %50 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8
  %51 = call i32 @lapic_timer_check_state(i32 %48, %struct.acpi_processor* %49, %struct.acpi_processor_cx* %50)
  %52 = load %struct.acpi_processor_cx*, %struct.acpi_processor_cx** %5, align 8
  %53 = getelementptr inbounds %struct.acpi_processor_cx, %struct.acpi_processor_cx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tsc_check_state(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %47, %46
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %10

61:                                               ; preds = %18
  %62 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %63 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @lapic_timer_propagate_broadcast, align 4
  %66 = load %struct.acpi_processor*, %struct.acpi_processor** %2, align 8
  %67 = call i32 @smp_call_function_single(i32 %64, i32 %65, %struct.acpi_processor* %66, i32 1)
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @acpi_processor_power_verify_c2(%struct.acpi_processor_cx*) #1

declare dso_local i32 @acpi_processor_power_verify_c3(%struct.acpi_processor*, %struct.acpi_processor_cx*) #1

declare dso_local i32 @lapic_timer_check_state(i32, %struct.acpi_processor*, %struct.acpi_processor_cx*) #1

declare dso_local i32 @tsc_check_state(i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.acpi_processor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
