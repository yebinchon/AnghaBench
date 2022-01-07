; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_cst_has_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_idle.c_acpi_processor_cst_has_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_processor = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }

@boot_option_idle_override = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@nocst = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_cst_has_changed(%struct.acpi_processor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_processor*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_processor* %0, %struct.acpi_processor** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i64, i64* @boot_option_idle_override, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

8:                                                ; preds = %1
  %9 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %10 = icmp ne %struct.acpi_processor* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %52

14:                                               ; preds = %8
  %15 = load i64, i64* @nocst, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %14
  %21 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %52

29:                                               ; preds = %20
  %30 = call i32 (...) @cpuidle_pause_and_lock()
  %31 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @cpuidle_disable_device(i32* %33)
  %35 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %36 = call i32 @acpi_processor_get_power_info(%struct.acpi_processor* %35)
  %37 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %44 = call i32 @acpi_processor_setup_cpuidle(%struct.acpi_processor* %43)
  %45 = load %struct.acpi_processor*, %struct.acpi_processor** %3, align 8
  %46 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @cpuidle_enable_device(i32* %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %29
  %50 = call i32 (...) @cpuidle_resume_and_unlock()
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %26, %17, %11, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @cpuidle_pause_and_lock(...) #1

declare dso_local i32 @cpuidle_disable_device(i32*) #1

declare dso_local i32 @acpi_processor_get_power_info(%struct.acpi_processor*) #1

declare dso_local i32 @acpi_processor_setup_cpuidle(%struct.acpi_processor*) #1

declare dso_local i32 @cpuidle_enable_device(i32*) #1

declare dso_local i32 @cpuidle_resume_and_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
