; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_fadt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_throttling.c_acpi_processor_get_throttling_fadt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Throttling state is T%d (%d%% throttling applied)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_processor*)* @acpi_processor_get_throttling_fadt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_processor_get_throttling_fadt(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %9 = icmp ne %struct.acpi_processor* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %84

13:                                               ; preds = %1
  %14 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %13
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = call i32 (...) @local_irq_disable()
  %38 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @inl(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 16
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %22
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %58, %46
  br label %66

66:                                               ; preds = %65, %22
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = call i32 (...) @local_irq_enable()
  %72 = load i32, i32* @ACPI_DB_INFO, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ACPI_DEBUG_PRINT(i32 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %66, %19, %10
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
