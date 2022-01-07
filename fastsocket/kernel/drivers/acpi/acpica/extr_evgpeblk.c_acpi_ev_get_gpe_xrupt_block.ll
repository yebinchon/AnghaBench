; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_get_gpe_xrupt_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_get_gpe_xrupt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { i64, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info* }
%struct.TYPE_2__ = type { i64 }

@ev_get_gpe_xrupt_block = common dso_local global i32 0, align 4
@acpi_gbl_gpe_xrupt_list_head = common dso_local global %struct.acpi_gpe_xrupt_info* null, align 8
@acpi_gbl_gpe_lock = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@acpi_ev_gpe_xrupt_handler = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Could not install GPE interrupt handler at level 0x%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_gpe_xrupt_info* (i64)* @acpi_ev_get_gpe_xrupt_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_gpe_xrupt_info* @acpi_ev_get_gpe_xrupt_block(i64 %0) #0 {
  %2 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %5 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i32, i32* @ev_get_gpe_xrupt_block, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  store %struct.acpi_gpe_xrupt_info* %10, %struct.acpi_gpe_xrupt_info** %4, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %13 = icmp ne %struct.acpi_gpe_xrupt_info* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %22 = call i32 @return_PTR(%struct.acpi_gpe_xrupt_info* %21)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %24, i32 0, i32 2
  %26 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %25, align 8
  store %struct.acpi_gpe_xrupt_info* %26, %struct.acpi_gpe_xrupt_info** %4, align 8
  br label %11

27:                                               ; preds = %11
  %28 = call %struct.acpi_gpe_xrupt_info* @ACPI_ALLOCATE_ZEROED(i32 24)
  store %struct.acpi_gpe_xrupt_info* %28, %struct.acpi_gpe_xrupt_info** %5, align 8
  %29 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %5, align 8
  %30 = icmp ne %struct.acpi_gpe_xrupt_info* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 @return_PTR(%struct.acpi_gpe_xrupt_info* null)
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %38 = call i32 @acpi_os_acquire_lock(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  %40 = icmp ne %struct.acpi_gpe_xrupt_info* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %33
  %42 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  store %struct.acpi_gpe_xrupt_info* %42, %struct.acpi_gpe_xrupt_info** %4, align 8
  br label %43

43:                                               ; preds = %48, %41
  %44 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %45 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %44, i32 0, i32 2
  %46 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %45, align 8
  %47 = icmp ne %struct.acpi_gpe_xrupt_info* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %49, i32 0, i32 2
  %51 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %50, align 8
  store %struct.acpi_gpe_xrupt_info* %51, %struct.acpi_gpe_xrupt_info** %4, align 8
  br label %43

52:                                               ; preds = %43
  %53 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %5, align 8
  %54 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %54, i32 0, i32 2
  store %struct.acpi_gpe_xrupt_info* %53, %struct.acpi_gpe_xrupt_info** %55, align 8
  %56 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  %57 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %5, align 8
  %58 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %57, i32 0, i32 1
  store %struct.acpi_gpe_xrupt_info* %56, %struct.acpi_gpe_xrupt_info** %58, align 8
  br label %61

59:                                               ; preds = %33
  %60 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %5, align 8
  store %struct.acpi_gpe_xrupt_info* %60, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  br label %61

61:                                               ; preds = %59, %52
  %62 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @acpi_os_release_lock(i32 %62, i32 %63)
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %61
  %69 = load i64, i64* %3, align 8
  %70 = load i32, i32* @acpi_ev_gpe_xrupt_handler, align 4
  %71 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %5, align 8
  %72 = call i32 @acpi_os_install_interrupt_handler(i64 %69, i32 %70, %struct.acpi_gpe_xrupt_info* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @ACPI_FAILURE(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load i32, i32* @AE_INFO, align 4
  %78 = load i64, i64* %3, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @ACPI_ERROR(i32 %79)
  %81 = call i32 @return_PTR(%struct.acpi_gpe_xrupt_info* null)
  br label %82

82:                                               ; preds = %76, %68
  br label %83

83:                                               ; preds = %82, %61
  %84 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %5, align 8
  %85 = call i32 @return_PTR(%struct.acpi_gpe_xrupt_info* %84)
  %86 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %2, align 8
  ret %struct.acpi_gpe_xrupt_info* %86
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_PTR(%struct.acpi_gpe_xrupt_info*) #1

declare dso_local %struct.acpi_gpe_xrupt_info* @ACPI_ALLOCATE_ZEROED(i32) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

declare dso_local i32 @acpi_os_install_interrupt_handler(i64, i32, %struct.acpi_gpe_xrupt_info*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
