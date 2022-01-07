; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_set_throttling_ptc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_set_throttling_ptc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*, i32, i32)* @acpi_processor_set_throttling_ptc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_set_throttling_ptc(%struct.acpi_processor* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_processor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.acpi_processor* %0, %struct.acpi_processor** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %11 = icmp ne %struct.acpi_processor* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %73

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp sgt i32 %19, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %15
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %73

29:                                               ; preds = %18
  %30 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %31 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %73

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %73

49:                                               ; preds = %41, %38
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %73

58:                                               ; preds = %49
  store i64 0, i64* %9, align 8
  %59 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @acpi_get_throttling_value(%struct.acpi_processor* %59, i32 %60, i64* %9)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @acpi_write_throttling_state(%struct.acpi_processor* %65, i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.acpi_processor*, %struct.acpi_processor** %5, align 8
  %70 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %58
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %55, %48, %35, %26, %12
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @acpi_get_throttling_value(%struct.acpi_processor*, i32, i64*) #1

declare dso_local i32 @acpi_write_throttling_state(%struct.acpi_processor*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
