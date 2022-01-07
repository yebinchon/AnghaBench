; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_initialize_gpe_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_initialize_gpe_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_gpe_block_info = type { i64, %struct.acpi_gpe_event_info* }
%struct.acpi_gpe_event_info = type { i32 }
%struct.acpi_gpe_walk_info = type { %struct.acpi_namespace_node*, %struct.acpi_gpe_block_info* }

@ev_initialize_gpe_block = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_leave_wake_gpes_disabled = common dso_local global i64 0, align 8
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_ROOT_OBJECT = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_UNLOCK = common dso_local global i32 0, align 4
@acpi_ev_match_prw_and_gpe = common dso_local global i32 0, align 4
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i64 0, align 8
@ACPI_GPE_DISPATCH_MASK = common dso_local global i32 0, align 4
@ACPI_GPE_DISPATCH_METHOD = common dso_local global i32 0, align 4
@ACPI_GPE_TYPE_RUNTIME = common dso_local global i32 0, align 4
@ACPI_GPE_TYPE_WAKE = common dso_local global i32 0, align 4
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Found %u Wake, Enabled %u Runtime GPEs in this block\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not enable GPEs in GpeBlock %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_initialize_gpe_block(%struct.acpi_namespace_node* %0, %struct.acpi_gpe_block_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca %struct.acpi_gpe_block_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_gpe_event_info*, align 8
  %8 = alloca %struct.acpi_gpe_walk_info, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store %struct.acpi_gpe_block_info* %1, %struct.acpi_gpe_block_info** %5, align 8
  %13 = load i32, i32* @ev_initialize_gpe_block, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %16 = icmp ne %struct.acpi_gpe_block_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @AE_OK, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i64, i64* @acpi_gbl_leave_wake_gpes_disabled, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %8, i32 0, i32 1
  store %struct.acpi_gpe_block_info* %24, %struct.acpi_gpe_block_info** %25, align 8
  %26 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_gpe_walk_info, %struct.acpi_gpe_walk_info* %8, i32 0, i32 0
  store %struct.acpi_namespace_node* %26, %struct.acpi_namespace_node** %27, align 8
  %28 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %29 = load i32, i32* @ACPI_ROOT_OBJECT, align 4
  %30 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %31 = load i32, i32* @ACPI_NS_WALK_UNLOCK, align 4
  %32 = load i32, i32* @acpi_ev_match_prw_and_gpe, align 4
  %33 = call i32 @acpi_ns_walk_namespace(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, %struct.acpi_gpe_walk_info* %8, i32* null)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %23, %20
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %87, %34
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %38 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %35
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %83, %41
  %43 = load i64, i64* %12, align 8
  %44 = icmp slt i64 %43, 8
  br i1 %44, label %45, label %86

45:                                               ; preds = %42
  %46 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %47 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %46, i32 0, i32 1
  %48 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @ACPI_GPE_REGISTER_WIDTH, align 8
  %51 = mul nsw i64 %49, %50
  %52 = load i64, i64* %12, align 8
  %53 = add nsw i64 %51, %52
  %54 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %48, i64 %53
  store %struct.acpi_gpe_event_info* %54, %struct.acpi_gpe_event_info** %7, align 8
  %55 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %7, align 8
  %56 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ACPI_GPE_DISPATCH_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @ACPI_GPE_DISPATCH_METHOD, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %45
  %63 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %7, align 8
  %64 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ACPI_GPE_TYPE_RUNTIME, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i64, i64* %10, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %69, %62, %45
  %73 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %7, align 8
  %74 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ACPI_GPE_TYPE_WAKE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i64, i64* %9, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %79, %72
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %12, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %42

86:                                               ; preds = %42
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %11, align 8
  br label %35

90:                                               ; preds = %35
  %91 = load i32, i32* @ACPI_DB_INIT, align 4
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @ACPI_DEBUG_PRINT(i32 %94)
  %96 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %97 = call i32 @acpi_hw_enable_runtime_gpe_block(i32* null, %struct.acpi_gpe_block_info* %96, i32* null)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @ACPI_FAILURE(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load i32, i32* @AE_INFO, align 4
  %103 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %104 = ptrtoint %struct.acpi_gpe_block_info* %103 to i32
  %105 = call i32 @ACPI_ERROR(i32 %104)
  br label %106

106:                                              ; preds = %101, %90
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @return_ACPI_STATUS(i32 %107)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i32, i32, i32, i32, i32, %struct.acpi_gpe_walk_info*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_hw_enable_runtime_gpe_block(i32*, %struct.acpi_gpe_block_info*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
