; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_tis_int_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_tis_int_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@TPM_INTF_DATA_AVAIL_INT = common dso_local global i32 0, align 4
@TPM_INTF_LOCALITY_CHANGE_INT = common dso_local global i32 0, align 4
@TPM_INTF_STS_VALID_INT = common dso_local global i32 0, align 4
@TPM_INTF_CMD_READY_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tis_int_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tis_int_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tpm_chip*
  store %struct.tpm_chip* %10, %struct.tpm_chip** %6, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %16 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @TPM_INT_STATUS(i32 %18)
  %20 = add nsw i64 %14, %19
  %21 = call i32 @ioread32(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %95

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @TPM_INTF_DATA_AVAIL_INT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %33 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = call i32 @wake_up_interruptible(i32* %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @TPM_INTF_LOCALITY_CHANGE_INT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @check_locality(%struct.tpm_chip* %46, i32 %47)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %55

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %42

55:                                               ; preds = %50, %42
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TPM_INTF_LOCALITY_CHANGE_INT, align 4
  %59 = load i32, i32* @TPM_INTF_STS_VALID_INT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @TPM_INTF_CMD_READY_INT, align 4
  %62 = or i32 %60, %61
  %63 = and i32 %57, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %67 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = call i32 @wake_up_interruptible(i32* %68)
  br label %70

70:                                               ; preds = %65, %56
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %73 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %77 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @TPM_INT_STATUS(i32 %79)
  %81 = add nsw i64 %75, %80
  %82 = call i32 @iowrite32(i32 %71, i64 %81)
  %83 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %84 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %88 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @TPM_INT_STATUS(i32 %90)
  %92 = add nsw i64 %86, %91
  %93 = call i32 @ioread32(i64 %92)
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %70, %24
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @TPM_INT_STATUS(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @check_locality(%struct.tpm_chip*, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
