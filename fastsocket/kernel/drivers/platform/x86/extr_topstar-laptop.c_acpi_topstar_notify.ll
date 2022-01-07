; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_topstar-laptop.c_acpi_topstar_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_topstar-laptop.c_acpi_topstar_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.tps_key_entry = type { i32 }
%struct.topstar_hkey = type { i32 }

@acpi_topstar_notify.dup_evnt = internal global [2 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown event = 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_topstar_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_topstar_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps_key_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.topstar_hkey*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.topstar_hkey* @acpi_driver_data(%struct.acpi_device* %8)
  store %struct.topstar_hkey* %9, %struct.topstar_hkey** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 131
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 132
  br i1 %14, label %15, label %27

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 131
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* @acpi_topstar_notify.dup_evnt, i64 0, i64 %18
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32*, i32** %6, align 8
  store i32 0, i32* %24, align 4
  br label %72

25:                                               ; preds = %15
  %26 = load i32*, i32** %6, align 8
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %12
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 151
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 150, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %4, align 4
  %33 = call %struct.tps_key_entry* @tps_get_key_by_scancode(i32 %32)
  store %struct.tps_key_entry* %33, %struct.tps_key_entry** %5, align 8
  %34 = load %struct.tps_key_entry*, %struct.tps_key_entry** %5, align 8
  %35 = icmp ne %struct.tps_key_entry* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load %struct.topstar_hkey*, %struct.topstar_hkey** %7, align 8
  %38 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tps_key_entry*, %struct.tps_key_entry** %5, align 8
  %41 = getelementptr inbounds %struct.tps_key_entry, %struct.tps_key_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @input_report_key(i32 %39, i32 %42, i32 1)
  %44 = load %struct.topstar_hkey*, %struct.topstar_hkey** %7, align 8
  %45 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @input_sync(i32 %46)
  %48 = load %struct.topstar_hkey*, %struct.topstar_hkey** %7, align 8
  %49 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tps_key_entry*, %struct.tps_key_entry** %5, align 8
  %52 = getelementptr inbounds %struct.tps_key_entry, %struct.tps_key_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @input_report_key(i32 %50, i32 %53, i32 0)
  %55 = load %struct.topstar_hkey*, %struct.topstar_hkey** %7, align 8
  %56 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @input_sync(i32 %57)
  br label %72

59:                                               ; preds = %31
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 142
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 143
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %66, 144
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %62, %59
  br label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %68, %36, %23
  ret void
}

declare dso_local %struct.topstar_hkey* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local %struct.tps_key_entry* @tps_get_key_by_scancode(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
