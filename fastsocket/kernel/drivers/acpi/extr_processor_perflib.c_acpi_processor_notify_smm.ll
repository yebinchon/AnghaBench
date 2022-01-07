; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_notify_smm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_processor_perflib.c_acpi_processor_notify_smm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.module = type { i32 }

@acpi_processor_notify_smm.is_done = internal global i32 0, align 4
@acpi_processor_ppc_status = common dso_local global i32 0, align 4
@PPC_REGISTERED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No SMI port or pstate_control\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Writing pstate_control [0x%x] to smi_command [0x%x]\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Failed to write pstate_control [0x%x] to smi_command [0x%x]\00", align 1
@PPC_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_processor_notify_smm(%struct.module* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.module*, align 8
  %4 = alloca i32, align 4
  store %struct.module* %0, %struct.module** %3, align 8
  %5 = load i32, i32* @acpi_processor_ppc_status, align 4
  %6 = load i32, i32* @PPC_REGISTERED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %76

12:                                               ; preds = %1
  %13 = load %struct.module*, %struct.module** %3, align 8
  %14 = call i32 @try_module_get(%struct.module* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %76

19:                                               ; preds = %12
  %20 = load i32, i32* @acpi_processor_notify_smm.is_done, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.module*, %struct.module** %3, align 8
  %24 = call i32 @module_put(%struct.module* %23)
  store i32 0, i32* %2, align 4
  br label %76

25:                                               ; preds = %19
  %26 = load i32, i32* @acpi_processor_notify_smm.is_done, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.module*, %struct.module** %3, align 8
  %30 = call i32 @module_put(%struct.module* %29)
  %31 = load i32, i32* @acpi_processor_notify_smm.is_done, align 4
  store i32 %31, i32* %2, align 4
  br label %76

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* @acpi_processor_notify_smm.is_done, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* @ACPI_DB_INFO, align 4
  %43 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([31 x i8]* @.str to i32))
  %44 = load %struct.module*, %struct.module** %3, align 8
  %45 = call i32 @module_put(%struct.module* %44)
  store i32 0, i32* %2, align 4
  br label %76

46:                                               ; preds = %38
  %47 = load i32, i32* @ACPI_DB_INFO, align 4
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %50 = call i32 @ACPI_DEBUG_PRINT(i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @acpi_os_write_port(i32 %51, i32 %53, i32 8)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load i32, i32* @AE_INFO, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 8
  %63 = call i32 @ACPI_EXCEPTION(i32 %62)
  %64 = load %struct.module*, %struct.module** %3, align 8
  %65 = call i32 @module_put(%struct.module* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %76

67:                                               ; preds = %46
  store i32 1, i32* @acpi_processor_notify_smm.is_done, align 4
  %68 = load i32, i32* @acpi_processor_ppc_status, align 4
  %69 = load i32, i32* @PPC_IN_USE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load %struct.module*, %struct.module** %3, align 8
  %74 = call i32 @module_put(%struct.module* %73)
  br label %75

75:                                               ; preds = %72, %67
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %58, %41, %28, %22, %16, %9
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i32 @module_put(%struct.module*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_os_write_port(i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
