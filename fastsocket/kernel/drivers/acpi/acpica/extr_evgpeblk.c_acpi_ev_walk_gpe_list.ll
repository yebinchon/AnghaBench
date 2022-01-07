; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_walk_gpe_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_walk_gpe_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info* }
%struct.acpi_gpe_block_info = type { %struct.acpi_gpe_block_info* }

@AE_OK = common dso_local global i64 0, align 8
@ev_walk_gpe_list = common dso_local global i32 0, align 4
@acpi_gbl_gpe_lock = common dso_local global i32 0, align 4
@acpi_gbl_gpe_xrupt_list_head = common dso_local global %struct.acpi_gpe_xrupt_info* null, align 8
@AE_CTRL_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ev_walk_gpe_list(i64 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_gpe_block_info*, align 8
  %7 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)* %0, i64 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i64, i64* @AE_OK, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* @ev_walk_gpe_list, align 4
  %12 = call i32 @ACPI_FUNCTION_TRACE(i32 %11)
  %13 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %14 = call i32 @acpi_os_acquire_lock(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  store %struct.acpi_gpe_xrupt_info* %15, %struct.acpi_gpe_xrupt_info** %7, align 8
  br label %16

16:                                               ; preds = %46, %2
  %17 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %18 = icmp ne %struct.acpi_gpe_xrupt_info* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %16
  %20 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %21 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %20, i32 0, i32 1
  %22 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %21, align 8
  store %struct.acpi_gpe_block_info* %22, %struct.acpi_gpe_block_info** %6, align 8
  br label %23

23:                                               ; preds = %42, %19
  %24 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %25 = icmp ne %struct.acpi_gpe_block_info* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i64 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)*, i64 (%struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_block_info*, i8*)** %4, align 8
  %28 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %29 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 %27(%struct.acpi_gpe_xrupt_info* %28, %struct.acpi_gpe_block_info* %29, i8* %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @ACPI_FAILURE(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @AE_CTRL_END, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* @AE_OK, align 8
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %39, %35
  br label %51

42:                                               ; preds = %26
  %43 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %6, align 8
  %44 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %43, i32 0, i32 0
  %45 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %44, align 8
  store %struct.acpi_gpe_block_info* %45, %struct.acpi_gpe_block_info** %6, align 8
  br label %23

46:                                               ; preds = %23
  %47 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %7, align 8
  %48 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %47, i32 0, i32 0
  %49 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %48, align 8
  store %struct.acpi_gpe_xrupt_info* %49, %struct.acpi_gpe_xrupt_info** %7, align 8
  br label %16

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @acpi_os_release_lock(i32 %52, i32 %53)
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @return_ACPI_STATUS(i64 %55)
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
