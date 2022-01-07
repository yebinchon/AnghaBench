; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_delete_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_tbinstal.c_acpi_tb_delete_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_table_desc = type { i32, i32*, i32 }

@ACPI_TABLE_ORIGIN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_tb_delete_table(%struct.acpi_table_desc* %0) #0 {
  %2 = alloca %struct.acpi_table_desc*, align 8
  store %struct.acpi_table_desc* %0, %struct.acpi_table_desc** %2, align 8
  %3 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ACPI_TABLE_ORIGIN_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %27 [
    i32 128, label %14
    i32 129, label %22
  ]

14:                                               ; preds = %8
  %15 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @acpi_os_unmap_memory(i32* %17, i32 %20)
  br label %28

22:                                               ; preds = %8
  %23 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @ACPI_FREE(i32* %25)
  br label %28

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %27, %22, %14
  %29 = load %struct.acpi_table_desc*, %struct.acpi_table_desc** %2, align 8
  %30 = getelementptr inbounds %struct.acpi_table_desc, %struct.acpi_table_desc* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @acpi_os_unmap_memory(i32*, i32) #1

declare dso_local i32 @ACPI_FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
