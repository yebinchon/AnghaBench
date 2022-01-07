; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_enable_runtime_gpe_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_hwgpe.c_acpi_hw_enable_runtime_gpe_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { i32 }
%struct.acpi_gpe_block_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_enable_runtime_gpe_block(%struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_block_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %6 = alloca %struct.acpi_gpe_block_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_xrupt_info** %5, align 8
  store %struct.acpi_gpe_block_info* %1, %struct.acpi_gpe_block_info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %13 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %18 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %47

26:                                               ; preds = %16
  %27 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %28 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %35 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @acpi_hw_write(i32 %33, i32* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %52

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %10

50:                                               ; preds = %10
  %51 = load i32, i32* @AE_OK, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @acpi_hw_write(i32, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
