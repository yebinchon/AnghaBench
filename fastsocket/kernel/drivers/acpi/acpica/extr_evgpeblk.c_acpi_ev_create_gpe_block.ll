; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_create_gpe_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_create_gpe_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_generic_address = type { i32 }
%struct.acpi_gpe_block_info = type { i32, i32, i32, %struct.acpi_namespace_node* }

@ev_create_gpe_block = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@ACPI_NS_WALK_NO_UNLOCK = common dso_local global i32 0, align 4
@acpi_ev_save_method_info = common dso_local global i32 0, align 4
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"GPE %02X to %02X [%4.4s] %u regs on int 0x%X\0A\00", align 1
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i32 0, align 4
@acpi_current_gpe_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_create_gpe_block(%struct.acpi_namespace_node* %0, %struct.acpi_generic_address* %1, i32 %2, i32 %3, i32 %4, %struct.acpi_gpe_block_info** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_namespace_node*, align 8
  %9 = alloca %struct.acpi_generic_address*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.acpi_gpe_block_info**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.acpi_gpe_block_info*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %8, align 8
  store %struct.acpi_generic_address* %1, %struct.acpi_generic_address** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.acpi_gpe_block_info** %5, %struct.acpi_gpe_block_info*** %13, align 8
  %16 = load i32, i32* @ev_create_gpe_block, align 4
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @AE_OK, align 4
  %22 = call i32 @return_ACPI_STATUS(i32 %21)
  br label %23

23:                                               ; preds = %20, %6
  %24 = call %struct.acpi_gpe_block_info* @ACPI_ALLOCATE_ZEROED(i32 24)
  store %struct.acpi_gpe_block_info* %24, %struct.acpi_gpe_block_info** %15, align 8
  %25 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %26 = icmp ne %struct.acpi_gpe_block_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @AE_NO_MEMORY, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %32 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %33 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %32, i32 0, i32 3
  store %struct.acpi_namespace_node* %31, %struct.acpi_namespace_node** %33, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %36 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %39 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %41 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %40, i32 0, i32 2
  %42 = load %struct.acpi_generic_address*, %struct.acpi_generic_address** %9, align 8
  %43 = call i32 @ACPI_MEMCPY(i32* %41, %struct.acpi_generic_address* %42, i32 4)
  %44 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %45 = call i32 @acpi_ev_create_gpe_info_blocks(%struct.acpi_gpe_block_info* %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %51 = call i32 @ACPI_FREE(%struct.acpi_gpe_block_info* %50)
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @return_ACPI_STATUS(i32 %52)
  br label %54

54:                                               ; preds = %49, %30
  %55 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @acpi_ev_install_gpe_block(%struct.acpi_gpe_block_info* %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i64 @ACPI_FAILURE(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %63 = call i32 @ACPI_FREE(%struct.acpi_gpe_block_info* %62)
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @return_ACPI_STATUS(i32 %64)
  br label %66

66:                                               ; preds = %61, %54
  %67 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %68 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %69 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %70 = load i32, i32* @ACPI_NS_WALK_NO_UNLOCK, align 4
  %71 = load i32, i32* @acpi_ev_save_method_info, align 4
  %72 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %73 = call i32 @acpi_ns_walk_namespace(i32 %67, %struct.acpi_namespace_node* %68, i32 %69, i32 %70, i32 %71, %struct.acpi_gpe_block_info* %72, i32* null)
  store i32 %73, i32* %14, align 4
  %74 = load %struct.acpi_gpe_block_info**, %struct.acpi_gpe_block_info*** %13, align 8
  %75 = icmp ne %struct.acpi_gpe_block_info** %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %78 = load %struct.acpi_gpe_block_info**, %struct.acpi_gpe_block_info*** %13, align 8
  store %struct.acpi_gpe_block_info* %77, %struct.acpi_gpe_block_info** %78, align 8
  br label %79

79:                                               ; preds = %76, %66
  %80 = load i32, i32* @ACPI_DB_INIT, align 4
  %81 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %82 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %85 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %88 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sub nsw i32 %91, 1
  %93 = add nsw i32 %86, %92
  %94 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %95 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %15, align 8
  %99 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @ACPI_DEBUG_PRINT(i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* @ACPI_GPE_REGISTER_WIDTH, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* @acpi_current_gpe_count, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* @acpi_current_gpe_count, align 4
  %108 = load i32, i32* @AE_OK, align 4
  %109 = call i32 @return_ACPI_STATUS(i32 %108)
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.acpi_gpe_block_info* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @ACPI_MEMCPY(i32*, %struct.acpi_generic_address*, i32) #1

declare dso_local i32 @acpi_ev_create_gpe_info_blocks(%struct.acpi_gpe_block_info*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_gpe_block_info*) #1

declare dso_local i32 @acpi_ev_install_gpe_block(%struct.acpi_gpe_block_info*, i32) #1

declare dso_local i32 @acpi_ns_walk_namespace(i32, %struct.acpi_namespace_node*, i32, i32, i32, %struct.acpi_gpe_block_info*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
