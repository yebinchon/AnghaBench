; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_calc_ordinal_duration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_calc_ordinal_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@TPM_UNDEFINED = common dso_local global i32 0, align 4
@TPM_MAX_ORDINAL = common dso_local global i64 0, align 8
@tpm_ordinal_duration = common dso_local global i32* null, align 8
@TPM_PROTECTED_ORDINAL_MASK = common dso_local global i64 0, align 8
@TPM_MAX_PROTECTED_ORDINAL = common dso_local global i64 0, align 8
@tpm_protected_ordinal_duration = common dso_local global i32* null, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tpm_calc_ordinal_duration(%struct.tpm_chip* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @TPM_UNDEFINED, align 4
  store i32 %8, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @TPM_MAX_ORDINAL, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** @tpm_ordinal_duration, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @TPM_PROTECTED_ORDINAL_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load i64, i64* @TPM_MAX_PROTECTED_ORDINAL, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32*, i32** @tpm_protected_ordinal_duration, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @TPM_PROTECTED_ORDINAL_MASK, align 8
  %27 = and i64 %25, %26
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %23, %17
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @TPM_UNDEFINED, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %37 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %35, %31
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @HZ, align 4
  %49 = mul nsw i32 120, %48
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %3, align 8
  br label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %3, align 8
  br label %54

54:                                               ; preds = %51, %47
  %55 = load i64, i64* %3, align 8
  ret i64 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
