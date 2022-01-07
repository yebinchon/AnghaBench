; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_get_burstcount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_get_burstcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @get_burstcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_burstcount(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add i64 %6, %10
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %47, %1
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %18 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @TPM_STS(i32 %20)
  %22 = add nsw i64 %16, %21
  %23 = add nsw i64 %22, 1
  %24 = call i32 @ioread8(i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %26 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %30 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @TPM_STS(i32 %32)
  %34 = add nsw i64 %28, %33
  %35 = add nsw i64 %34, 2
  %36 = call i32 @ioread8(i64 %35)
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %12
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %12
  %45 = load i32, i32* @TPM_TIMEOUT, align 4
  %46 = call i32 @msleep(i32 %45)
  br label %47

47:                                               ; preds = %44
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @time_before(i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %12, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EBUSY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @TPM_STS(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
