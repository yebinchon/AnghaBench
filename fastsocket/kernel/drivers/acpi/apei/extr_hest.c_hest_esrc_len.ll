; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_hest.c_hest_esrc_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_hest.c_hest_esrc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_hest_header = type { i64 }
%struct.acpi_hest_ia_corrected = type { i32 }
%struct.acpi_hest_ia_machine_check = type { i32 }

@ACPI_HEST_TYPE_RESERVED = common dso_local global i64 0, align 8
@hest_esrc_len_tab = common dso_local global i32* null, align 8
@ACPI_HEST_TYPE_IA32_CORRECTED_CHECK = common dso_local global i64 0, align 8
@ACPI_HEST_TYPE_IA32_CHECK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_hest_header*)* @hest_esrc_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hest_esrc_len(%struct.acpi_hest_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_hest_header*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_hest_ia_corrected*, align 8
  %7 = alloca %struct.acpi_hest_ia_machine_check*, align 8
  store %struct.acpi_hest_header* %0, %struct.acpi_hest_header** %3, align 8
  %8 = load %struct.acpi_hest_header*, %struct.acpi_hest_header** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_hest_header, %struct.acpi_hest_header* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @ACPI_HEST_TYPE_RESERVED, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load i32*, i32** @hest_esrc_len_tab, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @ACPI_HEST_TYPE_IA32_CORRECTED_CHECK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.acpi_hest_header*, %struct.acpi_hest_header** %3, align 8
  %25 = bitcast %struct.acpi_hest_header* %24 to %struct.acpi_hest_ia_corrected*
  store %struct.acpi_hest_ia_corrected* %25, %struct.acpi_hest_ia_corrected** %6, align 8
  %26 = load %struct.acpi_hest_ia_corrected*, %struct.acpi_hest_ia_corrected** %6, align 8
  %27 = getelementptr inbounds %struct.acpi_hest_ia_corrected, %struct.acpi_hest_ia_corrected* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = add i64 4, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %5, align 4
  br label %48

33:                                               ; preds = %15
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @ACPI_HEST_TYPE_IA32_CHECK, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.acpi_hest_header*, %struct.acpi_hest_header** %3, align 8
  %39 = bitcast %struct.acpi_hest_header* %38 to %struct.acpi_hest_ia_machine_check*
  store %struct.acpi_hest_ia_machine_check* %39, %struct.acpi_hest_ia_machine_check** %7, align 8
  %40 = load %struct.acpi_hest_ia_machine_check*, %struct.acpi_hest_ia_machine_check** %7, align 8
  %41 = getelementptr inbounds %struct.acpi_hest_ia_machine_check, %struct.acpi_hest_ia_machine_check* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = add i64 4, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %37, %33
  br label %48

48:                                               ; preds = %47, %23
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, -1
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %14
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
