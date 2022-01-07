; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_format_ipmi_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_format_ipmi_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ipmi_msg = type { i64, %struct.acpi_ipmi_device*, %struct.TYPE_2__, i32, %struct.kernel_ipmi_msg }
%struct.acpi_ipmi_device = type { i32, i64 }
%struct.TYPE_2__ = type { i64*, i32, i32 }
%struct.kernel_ipmi_msg = type { i32, i32, i32, i32 }
%struct.acpi_ipmi_buffer = type { i32, i32 }

@IPMI_SYSTEM_INTERFACE_ADDR_TYPE = common dso_local global i32 0, align 4
@IPMI_BMC_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ipmi_msg*, i32, i32*)* @acpi_format_ipmi_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_format_ipmi_msg(%struct.acpi_ipmi_msg* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.acpi_ipmi_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kernel_ipmi_msg*, align 8
  %8 = alloca %struct.acpi_ipmi_buffer*, align 8
  %9 = alloca %struct.acpi_ipmi_device*, align 8
  store %struct.acpi_ipmi_msg* %0, %struct.acpi_ipmi_msg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %10, i32 0, i32 4
  store %struct.kernel_ipmi_msg* %11, %struct.kernel_ipmi_msg** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @IPMI_OP_RGN_NETFN(i32 %12)
  %14 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %7, align 8
  %15 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @IPMI_OP_RGN_CMD(i32 %16)
  %18 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %7, align 8
  %19 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %7, align 8
  %24 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = bitcast i32* %25 to %struct.acpi_ipmi_buffer*
  store %struct.acpi_ipmi_buffer* %26, %struct.acpi_ipmi_buffer** %8, align 8
  %27 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %8, align 8
  %28 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %7, align 8
  %31 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.kernel_ipmi_msg*, %struct.kernel_ipmi_msg** %7, align 8
  %39 = getelementptr inbounds %struct.kernel_ipmi_msg, %struct.kernel_ipmi_msg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32 %34, i32 %37, i32 %40)
  %42 = load i32, i32* @IPMI_SYSTEM_INTERFACE_ADDR_TYPE, align 4
  %43 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %44 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @IPMI_BMC_CHANNEL, align 4
  %47 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %56 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %55, i32 0, i32 1
  %57 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %56, align 8
  store %struct.acpi_ipmi_device* %57, %struct.acpi_ipmi_device** %9, align 8
  %58 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %9, align 8
  %59 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %9, align 8
  %62 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %9, align 8
  %66 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %69 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.acpi_ipmi_device*, %struct.acpi_ipmi_device** %9, align 8
  %71 = getelementptr inbounds %struct.acpi_ipmi_device, %struct.acpi_ipmi_device* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  ret void
}

declare dso_local i32 @IPMI_OP_RGN_NETFN(i32) #1

declare dso_local i32 @IPMI_OP_RGN_CMD(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
