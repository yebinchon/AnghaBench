; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_format_ipmi_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_acpi_ipmi.c_acpi_format_ipmi_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ipmi_msg = type { i32, i32, i32 }
%struct.acpi_ipmi_buffer = type { i32, i32, i32 }

@ACPI_IPMI_TIMEOUT = common dso_local global i32 0, align 4
@ACPI_IPMI_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_IPMI_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_ipmi_msg*, i32*, i32)* @acpi_format_ipmi_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_format_ipmi_response(%struct.acpi_ipmi_msg* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.acpi_ipmi_msg*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_ipmi_buffer*, align 8
  store %struct.acpi_ipmi_msg* %0, %struct.acpi_ipmi_msg** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.acpi_ipmi_buffer*
  store %struct.acpi_ipmi_buffer* %9, %struct.acpi_ipmi_buffer** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ACPI_IPMI_TIMEOUT, align 4
  %19 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %7, align 8
  %20 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  br label %54

21:                                               ; preds = %12, %3
  %22 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @ACPI_IPMI_UNKNOWN, align 4
  %33 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %7, align 8
  %34 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %54

35:                                               ; preds = %26
  %36 = load i32, i32* @ACPI_IPMI_OK, align 4
  %37 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %7, align 8
  %43 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.acpi_ipmi_buffer*, %struct.acpi_ipmi_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.acpi_ipmi_buffer, %struct.acpi_ipmi_buffer* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.acpi_ipmi_msg*, %struct.acpi_ipmi_msg** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_ipmi_msg, %struct.acpi_ipmi_msg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %46, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %35, %31, %17
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
