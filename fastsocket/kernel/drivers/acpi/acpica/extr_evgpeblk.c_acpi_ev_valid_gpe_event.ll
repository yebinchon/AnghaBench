; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_valid_gpe_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_valid_gpe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info* }
%struct.acpi_gpe_block_info = type { %struct.acpi_gpe_block_info*, i64, %struct.acpi_gpe_event_info* }
%struct.acpi_gpe_event_info = type { i32 }

@acpi_gbl_gpe_xrupt_list_head = common dso_local global %struct.acpi_gpe_xrupt_info* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_valid_gpe_event(%struct.acpi_gpe_event_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_gpe_event_info*, align 8
  %4 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %5 = alloca %struct.acpi_gpe_block_info*, align 8
  store %struct.acpi_gpe_event_info* %0, %struct.acpi_gpe_event_info** %3, align 8
  %6 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %7 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  store %struct.acpi_gpe_xrupt_info* %7, %struct.acpi_gpe_xrupt_info** %4, align 8
  br label %8

8:                                                ; preds = %44, %1
  %9 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %10 = icmp ne %struct.acpi_gpe_xrupt_info* %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %8
  %12 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %12, i32 0, i32 1
  %14 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %13, align 8
  store %struct.acpi_gpe_block_info* %14, %struct.acpi_gpe_block_info** %5, align 8
  br label %15

15:                                               ; preds = %40, %11
  %16 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %17 = icmp ne %struct.acpi_gpe_block_info* %16, null
  br i1 %17, label %18, label %44

18:                                               ; preds = %15
  %19 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %20 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %19, i32 0, i32 2
  %21 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %20, align 8
  %22 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %21, i64 0
  %23 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %24 = icmp ule %struct.acpi_gpe_event_info* %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %27 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %26, i32 0, i32 2
  %28 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %27, align 8
  %29 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %30 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = mul nsw i32 %32, 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %28, i64 %34
  %36 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  %37 = icmp ugt %struct.acpi_gpe_event_info* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %25, %18
  %41 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %42 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %41, i32 0, i32 0
  %43 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %42, align 8
  store %struct.acpi_gpe_block_info* %43, %struct.acpi_gpe_block_info** %5, align 8
  br label %15

44:                                               ; preds = %15
  %45 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %45, i32 0, i32 0
  %47 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %46, align 8
  store %struct.acpi_gpe_xrupt_info* %47, %struct.acpi_gpe_xrupt_info** %4, align 8
  br label %8

48:                                               ; preds = %8
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %48, %38
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
