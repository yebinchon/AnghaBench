; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_get_gpe_event_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_get_gpe_event_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_block_info = type { i64, i32, %struct.acpi_gpe_event_info* }
%struct.acpi_gpe_event_info = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_gpe_block_info* }
%struct.acpi_namespace_node = type { i32 }

@ACPI_MAX_GPE_BLOCKS = common dso_local global i64 0, align 8
@acpi_gbl_gpe_fadt_blocks = common dso_local global %struct.acpi_gpe_block_info** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_gpe_event_info* @acpi_ev_get_gpe_event_info(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.acpi_gpe_event_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_gpe_block_info*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %54, %12
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @ACPI_MAX_GPE_BLOCKS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load %struct.acpi_gpe_block_info**, %struct.acpi_gpe_block_info*** @acpi_gbl_gpe_fadt_blocks, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %18, i64 %19
  %21 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %20, align 8
  store %struct.acpi_gpe_block_info* %21, %struct.acpi_gpe_block_info** %7, align 8
  %22 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %23 = icmp ne %struct.acpi_gpe_block_info* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %17
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %27 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp uge i64 %25, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %33 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %36 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = add i64 %34, %39
  %41 = icmp ult i64 %31, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %44 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %43, i32 0, i32 2
  %45 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %48 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  %51 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %45, i64 %50
  store %struct.acpi_gpe_event_info* %51, %struct.acpi_gpe_event_info** %3, align 8
  br label %104

52:                                               ; preds = %30, %24
  br label %53

53:                                               ; preds = %52, %17
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %13

57:                                               ; preds = %13
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %3, align 8
  br label %104

58:                                               ; preds = %2
  %59 = load i64, i64* %4, align 8
  %60 = inttoptr i64 %59 to %struct.acpi_namespace_node*
  %61 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %60)
  store %union.acpi_operand_object* %61, %union.acpi_operand_object** %6, align 8
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %63 = icmp ne %union.acpi_operand_object* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %66 = bitcast %union.acpi_operand_object* %65 to %struct.TYPE_2__*
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %67, align 8
  %69 = icmp ne %struct.acpi_gpe_block_info* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %64, %58
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %3, align 8
  br label %104

71:                                               ; preds = %64
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %73 = bitcast %union.acpi_operand_object* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %74, align 8
  store %struct.acpi_gpe_block_info* %75, %struct.acpi_gpe_block_info** %7, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %78 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp uge i64 %76, %79
  br i1 %80, label %81, label %103

81:                                               ; preds = %71
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %84 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %87 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %88, 8
  %90 = sext i32 %89 to i64
  %91 = add i64 %85, %90
  %92 = icmp ult i64 %82, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %81
  %94 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %95 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %94, i32 0, i32 2
  %96 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %7, align 8
  %99 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %97, %100
  %102 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %96, i64 %101
  store %struct.acpi_gpe_event_info* %102, %struct.acpi_gpe_event_info** %3, align 8
  br label %104

103:                                              ; preds = %81, %71
  store %struct.acpi_gpe_event_info* null, %struct.acpi_gpe_event_info** %3, align 8
  br label %104

104:                                              ; preds = %103, %93, %70, %57, %42
  %105 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %3, align 8
  ret %struct.acpi_gpe_event_info* %105
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
