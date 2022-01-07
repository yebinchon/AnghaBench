; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_nsc.c_nsc_wait_for_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_nsc.c_nsc_wait_for_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NSC_STATUS = common dso_local global i64 0, align 8
@NSC_STATUS_OBF = common dso_local global i32 0, align 4
@NSC_DATA = common dso_local global i64 0, align 8
@NSC_STATUS_RDY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"wait for ready failed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @nsc_wait_for_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsc_wait_for_ready(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %7 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NSC_STATUS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @inb(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NSC_STATUS_OBF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NSC_DATA, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inb(i64 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %17, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @NSC_STATUS_RDY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %76

31:                                               ; preds = %25
  %32 = load i32, i32* @jiffies, align 4
  %33 = add nsw i32 %32, 100
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %64, %31
  %36 = load i32, i32* @TPM_TIMEOUT, align 4
  %37 = call i32 @msleep(i32 %36)
  %38 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %39 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NSC_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inb(i64 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @NSC_STATUS_OBF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %35
  %50 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %51 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NSC_DATA, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inb(i64 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %49, %35
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @NSC_STATUS_RDY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %76

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* @jiffies, align 4
  %66 = load i64, i64* %5, align 8
  %67 = call i64 @time_before(i32 %65, i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %35, label %69

69:                                               ; preds = %64
  %70 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %71 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_info(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %69, %62, %30
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
