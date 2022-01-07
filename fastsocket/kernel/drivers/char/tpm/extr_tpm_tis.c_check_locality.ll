; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_check_locality.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_check_locality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@TPM_ACCESS_ACTIVE_LOCALITY = common dso_local global i32 0, align 4
@TPM_ACCESS_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32)* @check_locality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_locality(%struct.tpm_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %7 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @TPM_ACCESS(i32 %10)
  %12 = add nsw i64 %9, %11
  %13 = call i32 @ioread8(i64 %12)
  %14 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %15 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @TPM_ACCESS_ACTIVE_LOCALITY, align 4
  %19 = load i32, i32* @TPM_ACCESS_VALID, align 4
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %25 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  store i32 %23, i32* %3, align 4
  br label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @TPM_ACCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
