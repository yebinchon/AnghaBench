; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utinit.c_acpi_ut_terminate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_utinit.c_acpi_ut_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_xrupt_info = type { %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info* }
%struct.acpi_gpe_block_info = type { %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info* }

@ut_terminate = common dso_local global i32 0, align 4
@acpi_gbl_gpe_xrupt_list_head = common dso_local global %struct.acpi_gpe_xrupt_info* null, align 8
@return_VOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpi_ut_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_ut_terminate() #0 {
  %1 = alloca %struct.acpi_gpe_block_info*, align 8
  %2 = alloca %struct.acpi_gpe_block_info*, align 8
  %3 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %4 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %5 = load i32, i32* @ut_terminate, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** @acpi_gbl_gpe_xrupt_list_head, align 8
  store %struct.acpi_gpe_xrupt_info* %7, %struct.acpi_gpe_xrupt_info** %3, align 8
  br label %8

8:                                                ; preds = %37, %0
  %9 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %10 = icmp ne %struct.acpi_gpe_xrupt_info* %9, null
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %12, i32 0, i32 3
  %14 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %13, align 8
  %15 = bitcast %struct.acpi_gpe_xrupt_info* %14 to %struct.acpi_gpe_block_info*
  store %struct.acpi_gpe_block_info* %15, %struct.acpi_gpe_block_info** %1, align 8
  br label %16

16:                                               ; preds = %19, %11
  %17 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %18 = icmp ne %struct.acpi_gpe_block_info* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %21 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %20, i32 0, i32 0
  %22 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %21, align 8
  store %struct.acpi_gpe_block_info* %22, %struct.acpi_gpe_block_info** %2, align 8
  %23 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %24 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %23, i32 0, i32 2
  %25 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %24, align 8
  %26 = bitcast %struct.acpi_gpe_block_info* %25 to %struct.acpi_gpe_xrupt_info*
  %27 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %26)
  %28 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %29 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %28, i32 0, i32 1
  %30 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %29, align 8
  %31 = bitcast %struct.acpi_gpe_block_info* %30 to %struct.acpi_gpe_xrupt_info*
  %32 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %31)
  %33 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %1, align 8
  %34 = bitcast %struct.acpi_gpe_block_info* %33 to %struct.acpi_gpe_xrupt_info*
  %35 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %34)
  %36 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %2, align 8
  store %struct.acpi_gpe_block_info* %36, %struct.acpi_gpe_block_info** %1, align 8
  br label %16

37:                                               ; preds = %16
  %38 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %38, i32 0, i32 0
  %40 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %39, align 8
  store %struct.acpi_gpe_xrupt_info* %40, %struct.acpi_gpe_xrupt_info** %4, align 8
  %41 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %42 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %41)
  %43 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %4, align 8
  store %struct.acpi_gpe_xrupt_info* %43, %struct.acpi_gpe_xrupt_info** %3, align 8
  br label %8

44:                                               ; preds = %8
  %45 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
