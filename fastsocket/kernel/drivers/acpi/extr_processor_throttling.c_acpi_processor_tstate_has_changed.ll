; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_tstate_has_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_tstate_has_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, %struct.acpi_processor_limit, %struct.TYPE_4__ }
%struct.acpi_processor_limit = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ignore_tpc = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_tstate_has_changed(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_processor_limit*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i64, i64* @ignore_tpc, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

12:                                               ; preds = %1
  %13 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %14 = call i32 @acpi_processor_get_platform_limit(%struct.acpi_processor* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %80

19:                                               ; preds = %12
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %80

32:                                               ; preds = %19
  %33 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %32
  %41 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %41, i32 0, i32 1
  store %struct.acpi_processor_limit* %42, %struct.acpi_processor_limit** %7, align 8
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %7, align 8
  %45 = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %7, align 8
  %52 = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %40
  %56 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %7, align 8
  %57 = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.acpi_processor_limit*, %struct.acpi_processor_limit** %7, align 8
  %64 = getelementptr inbounds %struct.acpi_processor_limit, %struct.acpi_processor_limit* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %62, %55
  br label %76

68:                                               ; preds = %32
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %80

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75, %67
  %77 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @acpi_processor_set_throttling(%struct.acpi_processor* %77, i32 %78, i32 0)
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %72, %29, %17, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @acpi_processor_get_platform_limit(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_set_throttling(%struct.acpi_processor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
