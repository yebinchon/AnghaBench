; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_topstar-laptop.c_acpi_topstar_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_topstar-laptop.c_acpi_topstar_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.topstar_hkey* }
%struct.topstar_hkey = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Topstar TPSACPI\00", align 1
@ACPI_TOPSTAR_CLASS = common dso_local global i8* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_topstar_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_topstar_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.topstar_hkey*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.topstar_hkey* @kzalloc(i32 4, i32 %5)
  store %struct.topstar_hkey* %6, %struct.topstar_hkey** %4, align 8
  %7 = load %struct.topstar_hkey*, %struct.topstar_hkey** %4, align 8
  %8 = icmp ne %struct.topstar_hkey* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %38

12:                                               ; preds = %1
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = call i32 @acpi_device_name(%struct.acpi_device* %13)
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = call i32 @acpi_device_class(%struct.acpi_device* %16)
  %18 = load i8*, i8** @ACPI_TOPSTAR_CLASS, align 8
  %19 = call i32 @strcpy(i32 %17, i8* %18)
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = call i64 @acpi_topstar_fncx_switch(%struct.acpi_device* %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %33

24:                                               ; preds = %12
  %25 = load %struct.topstar_hkey*, %struct.topstar_hkey** %4, align 8
  %26 = call i64 @acpi_topstar_init_hkey(%struct.topstar_hkey* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %33

29:                                               ; preds = %24
  %30 = load %struct.topstar_hkey*, %struct.topstar_hkey** %4, align 8
  %31 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 0
  store %struct.topstar_hkey* %30, %struct.topstar_hkey** %32, align 8
  store i32 0, i32* %2, align 4
  br label %38

33:                                               ; preds = %28, %23
  %34 = load %struct.topstar_hkey*, %struct.topstar_hkey** %4, align 8
  %35 = call i32 @kfree(%struct.topstar_hkey* %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %33, %29, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.topstar_hkey* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i64 @acpi_topstar_fncx_switch(%struct.acpi_device*, i32) #1

declare dso_local i64 @acpi_topstar_init_hkey(%struct.topstar_hkey*) #1

declare dso_local i32 @kfree(%struct.topstar_hkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
