; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_gpe_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpe.c_acpi_ev_gpe_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_block_info* }
%struct.acpi_gpe_block_info = type { i64, %struct.acpi_gpe_block_info*, i32*, %struct.acpi_gpe_register_info* }
%struct.acpi_gpe_register_info = type { i64, i32, i32 }

@ACPI_INTERRUPT_NOT_HANDLED = common dso_local global i64 0, align 8
@ev_gpe_detect = common dso_local global i32 0, align 4
@acpi_gbl_gpe_lock = common dso_local global i32 0, align 4
@ACPI_DB_INTERRUPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Read GPE Register at GPE%X: Status=%02X, Enable=%02X\0A\00", align 1
@ACPI_GPE_REGISTER_WIDTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ev_gpe_detect(%struct.acpi_gpe_xrupt_info* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_gpe_block_info*, align 8
  %6 = alloca %struct.acpi_gpe_register_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_xrupt_info** %3, align 8
  %14 = load i64, i64* @ACPI_INTERRUPT_NOT_HANDLED, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i32, i32* @ev_gpe_detect, align 4
  %16 = call i32 @ACPI_FUNCTION_NAME(i32 %15)
  %17 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %18 = icmp ne %struct.acpi_gpe_xrupt_info* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %2, align 8
  br label %122

21:                                               ; preds = %1
  %22 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %23 = call i32 @acpi_os_acquire_lock(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %24, i32 0, i32 0
  %26 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %25, align 8
  store %struct.acpi_gpe_block_info* %26, %struct.acpi_gpe_block_info** %5, align 8
  br label %27

27:                                               ; preds = %112, %21
  %28 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %29 = icmp ne %struct.acpi_gpe_block_info* %28, null
  br i1 %29, label %30, label %116

30:                                               ; preds = %27
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %109, %30
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %112

37:                                               ; preds = %31
  %38 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %39 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %38, i32 0, i32 3
  %40 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %39, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %40, i64 %41
  store %struct.acpi_gpe_register_info* %42, %struct.acpi_gpe_register_info** %6, align 8
  %43 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %44 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %43, i32 0, i32 2
  %45 = call i32 @acpi_hw_read(i64* %9, i32* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @ACPI_FAILURE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %117

50:                                               ; preds = %37
  %51 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %52 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %51, i32 0, i32 1
  %53 = call i32 @acpi_hw_read(i64* %10, i32* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %117

58:                                               ; preds = %50
  %59 = load i32, i32* @ACPI_DB_INTERRUPTS, align 4
  %60 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %61 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @ACPI_DEBUG_PRINT(i32 %65)
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %10, align 8
  %69 = and i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %58
  br label %109

74:                                               ; preds = %58
  store i64 0, i64* %13, align 8
  br label %75

75:                                               ; preds = %105, %74
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @ACPI_GPE_REGISTER_WIDTH, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %13, align 8
  %82 = trunc i64 %81 to i32
  %83 = shl i32 1, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %88 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* @ACPI_GPE_REGISTER_WIDTH, align 8
  %92 = mul i64 %90, %91
  %93 = load i64, i64* %13, align 8
  %94 = add i64 %92, %93
  %95 = getelementptr inbounds i32, i32* %89, i64 %94
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.acpi_gpe_register_info*, %struct.acpi_gpe_register_info** %6, align 8
  %98 = getelementptr inbounds %struct.acpi_gpe_register_info, %struct.acpi_gpe_register_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %96, %99
  %101 = call i64 @acpi_ev_gpe_dispatch(i32* %95, i64 %100)
  %102 = load i64, i64* %7, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %86, %79
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %13, align 8
  br label %75

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108, %73
  %110 = load i64, i64* %12, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %12, align 8
  br label %31

112:                                              ; preds = %31
  %113 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %5, align 8
  %114 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %113, i32 0, i32 1
  %115 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %114, align 8
  store %struct.acpi_gpe_block_info* %115, %struct.acpi_gpe_block_info** %5, align 8
  br label %27

116:                                              ; preds = %27
  br label %117

117:                                              ; preds = %116, %57, %49
  %118 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @acpi_os_release_lock(i32 %118, i32 %119)
  %121 = load i64, i64* %7, align 8
  store i64 %121, i64* %2, align 8
  br label %122

122:                                              ; preds = %117, %19
  %123 = load i64, i64* %2, align 8
  ret i64 %123
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @acpi_hw_read(i64*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @acpi_ev_gpe_dispatch(i32*, i64) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
