; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_alloc_ipmi_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_alloc_ipmi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ipmi_msg = type { %struct.acpi_ipmi_device*, i32, i32 }
%struct.acpi_ipmi_device = type { %struct.pnp_dev* }
%struct.pnp_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't allocate memory for ipmi_msg\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_ipmi_msg* (%struct.acpi_ipmi_device*)* @acpi_alloc_ipmi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_ipmi_msg* @acpi_alloc_ipmi_msg(%struct.acpi_ipmi_device* %0) #0 {
  %2 = alloca %struct.acpi_ipmi_msg*, align 8
  %3 = alloca %struct.acpi_ipmi_device*, align 8
  %4 = alloca %struct.acpi_ipmi_msg*, align 8
  %5 = alloca %struct.pnp_dev*, align 8
  store %struct.acpi_ipmi_device* %0, %struct.acpi_ipmi_device** %3, align 8
  %6 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %6, i32 0, i32 0
  %8 = load %struct.pnp_dev*, %struct.pnp_dev** %7, align 8
  store %struct.pnp_dev* %8, %struct.pnp_dev** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.acpi_ipmi_msg* @kzalloc(i32 16, i32 %9)
  store %struct.acpi_ipmi_msg* %10, %struct.acpi_ipmi_msg** %4, align 8
  %11 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %12 = icmp ne %struct.acpi_ipmi_msg* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_warn(i32* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.acpi_ipmi_msg* null, %struct.acpi_ipmi_msg** %2, align 8
  br label %28

17:                                               ; preds = %1
  %18 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %18, i32 0, i32 2
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %3, align 8
  %25 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %25, i32 0, i32 0
  store %struct.acpi_ipmi_device* %24, %struct.acpi_ipmi_device** %26, align 8
  %27 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  store %struct.acpi_ipmi_msg* %27, %struct.acpi_ipmi_msg** %2, align 8
  br label %28

28:                                               ; preds = %17, %13
  %29 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %2, align 8
  ret %struct.acpi_ipmi_msg* %29
}

declare dso_local %struct.acpi_ipmi_msg* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
