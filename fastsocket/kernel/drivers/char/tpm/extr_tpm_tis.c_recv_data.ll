; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_recv_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/tpm/extr_tpm_tis.c_recv_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i32*, i64)* @recv_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_data(%struct.tpm_chip* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tpm_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %63, %3
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %16 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %17 = load i32, i32* @TPM_STS_VALID, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %20 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %24 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = call i64 @wait_for_tpm_stat(%struct.tpm_chip* %15, i32 %18, i32 %22, i32* %25)
  %27 = icmp eq i64 %26, 0
  br label %28

28:                                               ; preds = %14, %9
  %29 = phi i1 [ false, %9 ], [ %27, %14 ]
  br i1 %29, label %30, label %64

30:                                               ; preds = %28
  %31 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %32 = call i32 @get_burstcount(%struct.tpm_chip* %31)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %60, %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = icmp ult i64 %38, %39
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %43, label %63

43:                                               ; preds = %41
  %44 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %45 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.tpm_chip*, %struct.tpm_chip** %4, align 8
  %49 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @TPM_DATA_FIFO(i32 %51)
  %53 = add nsw i64 %47, %52
  %54 = call i32 @ioread8(i64 %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  br label %33

63:                                               ; preds = %41
  br label %9

64:                                               ; preds = %28
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i64 @wait_for_tpm_stat(%struct.tpm_chip*, i32, i32, i32*) #1

declare dso_local i32 @get_burstcount(%struct.tpm_chip*) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i64 @TPM_DATA_FIFO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
