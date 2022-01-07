; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_install_gpe_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_install_gpe_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_block_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info* }
%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_block_info* }

@ev_install_gpe_block = common dso_local global i32 0, align 4
@ACPI_MTX_EVENTS = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@acpi_gbl_gpe_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_gpe_block_info*, i32)* @acpi_ev_install_gpe_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ev_install_gpe_block(%struct.acpi_gpe_block_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_gpe_block_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_gpe_block_info*, align 8
  %7 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.acpi_gpe_block_info* %0, %struct.acpi_gpe_block_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @ev_install_gpe_block, align 4
  %11 = call i32 @ACPI_FUNCTION_TRACE(i32 %10)
  %12 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %13 = call i32 @acpi_ut_acquire_mutex(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.acpi_gpe_xrupt_info* @acpi_ev_get_gpe_xrupt_block(i32 %21)
  store %struct.acpi_gpe_xrupt_info* %22, %struct.acpi_gpe_xrupt_info** %7, align 8
  %23 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %24 = icmp ne %struct.acpi_gpe_xrupt_info* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %26, i32* %8, align 4
  br label %65

27:                                               ; preds = %20
  %28 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %29 = call i32 @acpi_os_acquire_lock(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %31 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %30, i32 0, i32 0
  %32 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %31, align 8
  %33 = icmp ne %struct.acpi_gpe_block_info* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %27
  %35 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %36 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %35, i32 0, i32 0
  %37 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %36, align 8
  store %struct.acpi_gpe_block_info* %37, %struct.acpi_gpe_block_info** %6, align 8
  br label %38

38:                                               ; preds = %43, %34
  %39 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %40 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %39, i32 0, i32 2
  %41 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %40, align 8
  %42 = icmp ne %struct.acpi_gpe_block_info* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %45 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %44, i32 0, i32 2
  %46 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %45, align 8
  store %struct.acpi_gpe_block_info* %46, %struct.acpi_gpe_block_info** %6, align 8
  br label %38

47:                                               ; preds = %38
  %48 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %4, align 8
  %49 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %50 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %49, i32 0, i32 2
  store %struct.acpi_gpe_block_info* %48, %struct.acpi_gpe_block_info** %50, align 8
  %51 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %52 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %4, align 8
  %53 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %52, i32 0, i32 1
  store %struct.acpi_gpe_block_info* %51, %struct.acpi_gpe_block_info** %53, align 8
  br label %58

54:                                               ; preds = %27
  %55 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %4, align 8
  %56 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %57 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %56, i32 0, i32 0
  store %struct.acpi_gpe_block_info* %55, %struct.acpi_gpe_block_info** %57, align 8
  br label %58

58:                                               ; preds = %54, %47
  %59 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %60 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %4, align 8
  %61 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %60, i32 0, i32 0
  store %struct.acpi_gpe_xrupt_info* %59, %struct.acpi_gpe_xrupt_info** %61, align 8
  %62 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @acpi_os_release_lock(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %25
  %66 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %67 = call i32 @acpi_ut_release_mutex(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.acpi_gpe_xrupt_info* @acpi_ev_get_gpe_xrupt_block(i32) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
