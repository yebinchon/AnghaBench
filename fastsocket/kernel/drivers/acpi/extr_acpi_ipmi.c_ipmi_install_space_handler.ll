; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_ipmi_install_space_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_ipmi_install_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ipmi_device = type { i32, %struct.pnp_dev*, i32 }
%struct.pnp_dev = type { i32 }

@IPMI_FLAGS_HANDLER_INSTALL = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_IPMI = common dso_local global i32 0, align 4
@acpi_ipmi_space_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Can't register IPMI opregion space handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ipmi_device*)* @ipmi_install_space_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_install_space_handler(%struct.acpi_ipmi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_ipmi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_dev*, align 8
  store %struct.acpi_ipmi_device* %0, %struct.acpi_ipmi_device** %3, align 8
  %6 = load i32, i32* @IPMI_FLAGS_HANDLER_INSTALL, align 4
  %7 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %7, i32 0, i32 0
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @ACPI_ADR_SPACE_IPMI, align 4
  %17 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %3, align 8
  %18 = call i32 @acpi_install_address_space_handler(i32 %15, i32 %16, i32* @acpi_ipmi_space_handler, i32* null, %struct.acpi_ipmi_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %12
  %23 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %23, i32 0, i32 1
  %25 = load %struct.pnp_dev*, %struct.pnp_dev** %24, align 8
  store %struct.pnp_dev* %25, %struct.pnp_dev** %5, align 8
  %26 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %26, i32 0, i32 0
  %28 = call i32 @dev_warn(i32* %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %12
  %32 = load i32, i32* @IPMI_FLAGS_HANDLER_INSTALL, align 4
  %33 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %22, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @acpi_install_address_space_handler(i32, i32, i32*, i32*, %struct.acpi_ipmi_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
