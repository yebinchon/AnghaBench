; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_dev_vendor_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm.c_tpm_dev_vendor_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 (i32)* }
%struct.TYPE_3__ = type { i32 }

@dev_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm_dev_vendor_release(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %3 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %4 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %6 = load i32 (i32)*, i32 (i32)** %5, align 8
  %7 = icmp ne i32 (i32)* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 %12(i32 %15)
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @dev_mask, align 4
  %22 = call i32 @clear_bit(i32 %20, i32 %21)
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %24 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @kfree(i32 %27)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
