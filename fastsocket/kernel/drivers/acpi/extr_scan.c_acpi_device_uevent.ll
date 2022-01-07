; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32, i32* }
%struct.acpi_device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"MODALIAS=\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @acpi_device_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.acpi_device* @to_acpi_device(%struct.device* %8)
  store %struct.acpi_device* %9, %struct.acpi_device** %6, align 8
  %10 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %11 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %51

16:                                               ; preds = %2
  %17 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %18 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %19 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %22 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %28 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = sub i64 8, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @create_modalias(%struct.acpi_device* %17, i32* %26, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %37 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = sub i64 8, %39
  %41 = icmp uge i64 %35, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %16
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %16
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %48 = getelementptr inbounds %struct.kobj_uevent_env, %struct.kobj_uevent_env* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %42, %13
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*) #1

declare dso_local i32 @create_modalias(%struct.acpi_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
