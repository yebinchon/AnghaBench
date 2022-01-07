; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_post_unmap_gar_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_post_unmap_gar_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apei_exec_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_whea_header = type { i64, i32 }

@APEI_EXEC_INS_ACCESS_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apei_exec_context*, %struct.acpi_whea_header*, i8*)* @post_unmap_gar_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_unmap_gar_callback(%struct.apei_exec_context* %0, %struct.acpi_whea_header* %1, i8* %2) #0 {
  %4 = alloca %struct.apei_exec_context*, align 8
  %5 = alloca %struct.acpi_whea_header*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.apei_exec_context* %0, %struct.apei_exec_context** %4, align 8
  store %struct.acpi_whea_header* %1, %struct.acpi_whea_header** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %5, align 8
  %9 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.apei_exec_context*, %struct.apei_exec_context** %4, align 8
  %12 = getelementptr inbounds %struct.apei_exec_context, %struct.apei_exec_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @APEI_EXEC_INS_ACCESS_REGISTER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.acpi_whea_header*, %struct.acpi_whea_header** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_whea_header, %struct.acpi_whea_header* %22, i32 0, i32 1
  %24 = call i32 @apei_unmap_generic_address(i32* %23)
  br label %25

25:                                               ; preds = %21, %3
  ret i32 0
}

declare dso_local i32 @apei_unmap_generic_address(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
