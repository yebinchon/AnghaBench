; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_delete_gpe_xrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_delete_gpe_xrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.acpi_gpe_xrupt_info = type { i64, %struct.TYPE_4__*, %struct.TYPE_5__*, i32* }

@ev_delete_gpe_xrupt = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@AE_OK = common dso_local global i32 0, align 4
@acpi_ev_gpe_xrupt_handler = common dso_local global i32 0, align 4
@acpi_gbl_gpe_lock = common dso_local global i32 0, align 4
@acpi_gbl_gpe_xrupt_list_head = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_gpe_xrupt_info*)* @acpi_ev_delete_gpe_xrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ev_delete_gpe_xrupt(%struct.acpi_gpe_xrupt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_gpe_xrupt_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_gpe_xrupt_info* %0, %struct.acpi_gpe_xrupt_info** %3, align 8
  %6 = load i32, i32* @ev_delete_gpe_xrupt, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %15 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %14, i32 0, i32 3
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* @AE_OK, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @acpi_ev_gpe_xrupt_handler, align 4
  %23 = call i32 @acpi_os_remove_interrupt_handler(i64 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @ACPI_FAILURE(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %32 = call i32 @acpi_os_acquire_lock(i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %34 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %39 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %42 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %44, align 8
  br label %49

45:                                               ; preds = %30
  %46 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** @acpi_gbl_gpe_xrupt_list_head, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %51 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %56 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %59 = getelementptr inbounds %struct.acpi_gpe_xrupt_info, %struct.acpi_gpe_xrupt_info* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %61, align 8
  br label %62

62:                                               ; preds = %54, %49
  %63 = load i32, i32* @acpi_gbl_gpe_lock, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @acpi_os_release_lock(i32 %63, i32 %64)
  %66 = load %struct.acpi_gpe_xrupt_info*, %struct.acpi_gpe_xrupt_info** %3, align 8
  %67 = call i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info* %66)
  %68 = load i32, i32* @AE_OK, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_os_remove_interrupt_handler(i64, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_gpe_xrupt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
