; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_mxm-wmi.c_mxm_wmi_call_mxds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_mxm-wmi.c_mxm_wmi_call_mxds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxds_args = type { i32, i32, i32 }
%struct.acpi_buffer = type { %struct.mxds_args*, i32 }

@MXM_WMMX_FUNC_MXDS = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"calling mux switch %d\0A\00", align 1
@MXM_WMMX_GUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"mux switched %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxm_wmi_call_mxds(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mxds_args, align 4
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds %struct.mxds_args, %struct.mxds_args* %4, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.mxds_args, %struct.mxds_args* %4, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.mxds_args, %struct.mxds_args* %4, i32 0, i32 2
  %11 = load i32, i32* @MXM_WMMX_FUNC_MXDS, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  store %struct.mxds_args* inttoptr (i64 12 to %struct.mxds_args*), %struct.mxds_args** %12, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  %14 = ptrtoint %struct.mxds_args* %4 to i32
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %16 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.mxds_args*
  store %struct.mxds_args* %18, %struct.mxds_args** %15, align 8
  %19 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @MXM_WMMX_GUID, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @wmi_evaluate_method(i32 %22, i32 1, i32 %23, %struct.acpi_buffer* %5, %struct.acpi_buffer* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
