; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_apei_exec_ctx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_apei_exec_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apei_exec_context = type { i8*, %struct.acpi_whea_header*, i8*, %struct.apei_exec_ins_type* }
%struct.apei_exec_ins_type = type { i32 }
%struct.acpi_whea_header = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apei_exec_ctx_init(%struct.apei_exec_context* %0, %struct.apei_exec_ins_type* %1, i8* %2, %struct.acpi_whea_header* %3, i8* %4) #0 {
  %6 = alloca %struct.apei_exec_context*, align 8
  %7 = alloca %struct.apei_exec_ins_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.acpi_whea_header*, align 8
  %10 = alloca i8*, align 8
  store %struct.apei_exec_context* %0, %struct.apei_exec_context** %6, align 8
  store %struct.apei_exec_ins_type* %1, %struct.apei_exec_ins_type** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.acpi_whea_header* %3, %struct.acpi_whea_header** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.apei_exec_ins_type*, %struct.apei_exec_ins_type** %7, align 8
  %12 = load %struct.apei_exec_context*, %struct.apei_exec_context** %6, align 8
  %13 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %12, i32 0, i32 3
  store %struct.apei_exec_ins_type* %11, %struct.apei_exec_ins_type** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.apei_exec_context*, %struct.apei_exec_context** %6, align 8
  %16 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %9, align 8
  %18 = load %struct.apei_exec_context*, %struct.apei_exec_context** %6, align 8
  %19 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %18, i32 0, i32 1
  store %struct.acpi_whea_header* %17, %struct.acpi_whea_header** %19, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load %struct.apei_exec_context*, %struct.apei_exec_context** %6, align 8
  %22 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
