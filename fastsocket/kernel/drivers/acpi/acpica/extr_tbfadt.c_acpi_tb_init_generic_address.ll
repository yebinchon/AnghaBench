; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbfadt.c_acpi_tb_init_generic_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbfadt.c_acpi_tb_init_generic_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_generic_address = type { i64, i64, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_generic_address*, i8*, i8*, i32)* @acpi_tb_init_generic_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_tb_init_generic_address(%struct.acpi_generic_address* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.acpi_generic_address*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_generic_address* %0, %struct.acpi_generic_address** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %10 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %9, i32 0, i32 4
  %11 = call i32 @ACPI_MOVE_64_TO_64(i32* %10, i32* %8)
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %14 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @ACPI_MUL_8(i8* %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %21 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_generic_address, %struct.acpi_generic_address* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @ACPI_MOVE_64_TO_64(i32*, i32*) #1

declare dso_local i64 @ACPI_MUL_8(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
