; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power.c_acpi_power_get_inferred_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power.c_acpi_power_get_inferred_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.acpi_handle_list }
%struct.acpi_handle_list = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@ACPI_POWER_RESOURCE_STATE_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_power_get_inferred_state(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_handle_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.acpi_handle_list* null, %struct.acpi_handle_list** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = icmp ne %struct.acpi_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* @ACPI_STATE_D0, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %54, %13
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ACPI_STATE_D3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store %struct.acpi_handle_list* %31, %struct.acpi_handle_list** %5, align 8
  %32 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %5, align 8
  %33 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %54

37:                                               ; preds = %23
  %38 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %5, align 8
  %39 = call i32 @acpi_power_get_list_state(%struct.acpi_handle_list* %38, i32* %6)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %62

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ACPI_POWER_RESOURCE_STATE_ON, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %62

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %36
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load i32, i32* @ACPI_STATE_D3, align 4
  %59 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %60 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %48, %42, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @acpi_power_get_list_state(%struct.acpi_handle_list*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
