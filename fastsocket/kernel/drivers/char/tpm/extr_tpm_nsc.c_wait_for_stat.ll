; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_nsc.c_wait_for_stat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_nsc.c_wait_for_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NSC_STATUS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TPM_TIMEOUT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32, i32, i32*)* @wait_for_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_stat(%struct.tpm_chip* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %12 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NSC_STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inb(i64 %16)
  %18 = load i32*, i32** %9, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %58

26:                                               ; preds = %4
  %27 = load i32, i32* @jiffies, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 10, %28
  %30 = add nsw i32 %27, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %50, %26
  %33 = load i32, i32* @TPM_TIMEOUT, align 4
  %34 = call i32 @msleep(i32 %33)
  %35 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %36 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = call i32 @inb(i64 %39)
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %58

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @jiffies, align 4
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @time_before(i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %32, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %48, %25
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
