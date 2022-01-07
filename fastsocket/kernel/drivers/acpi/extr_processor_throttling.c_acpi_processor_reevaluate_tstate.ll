; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_reevaluate_tstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_reevaluate_tstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@CPU_DEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_processor_reevaluate_tstate(%struct.acpi_processor* %0, i64 %1) #0 {
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @CPU_DEAD, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %11 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %53

23:                                               ; preds = %13
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %28 = call i32 @acpi_processor_get_throttling(%struct.acpi_processor* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %46

32:                                               ; preds = %23
  %33 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %40 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %39, i32 0, i32 0)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %46

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %43, %31
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %9, %19, %49, %46
  ret void
}

declare dso_local i32 @acpi_processor_get_throttling(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_set_throttling(%struct.acpi_processor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
