; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_mci = type { i32 }
%struct.atmel_mci_slot = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32 }

@atmci_set_timeout.dtomul_to_shift = internal global [8 x i32] [i32 0, i32 4, i32 7, i32 8, i32 10, i32 12, i32 16, i32 20], align 16
@.str = private unnamed_addr constant [30 x i8] c"setting timeout to %u cycles\0A\00", align 1
@DTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_mci*, %struct.atmel_mci_slot*, %struct.mmc_data*)* @atmci_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmci_set_timeout(%struct.atmel_mci* %0, %struct.atmel_mci_slot* %1, %struct.mmc_data* %2) #0 {
  %4 = alloca %struct.atmel_mci*, align 8
  %5 = alloca %struct.atmel_mci_slot*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.atmel_mci* %0, %struct.atmel_mci** %4, align 8
  store %struct.atmel_mci_slot* %1, %struct.atmel_mci_slot** %5, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %6, align 8
  %11 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %13 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ns_to_clocks(%struct.atmel_mci* %11, i32 %14)
  %16 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %15, %18
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %39, %3
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %23, label %42

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* @atmci_set_timeout.dtomul_to_shift, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 1, %29
  %31 = add i32 %28, %30
  %32 = sub i32 %31, 1
  %33 = load i32, i32* %10, align 4
  %34 = lshr i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %35, 15
  br i1 %36, label %37, label %38

37:                                               ; preds = %23
  br label %42

38:                                               ; preds = %23
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %20

42:                                               ; preds = %37, %20
  %43 = load i32, i32* %9, align 4
  %44 = icmp uge i32 %43, 8
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 7, i32* %9, align 4
  store i32 15, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %5, align 8
  %48 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* @atmci_set_timeout.dtomul_to_shift, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %51, %55
  %57 = call i32 @dev_vdbg(i32* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.atmel_mci*, %struct.atmel_mci** %4, align 8
  %59 = load i32, i32* @DTOR, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @MCI_DTOMUL(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @MCI_DTOCYC(i32 %62)
  %64 = or i32 %61, %63
  %65 = call i32 @mci_writel(%struct.atmel_mci* %58, i32 %59, i32 %64)
  ret void
}

declare dso_local i32 @ns_to_clocks(%struct.atmel_mci*, i32) #1

declare dso_local i32 @dev_vdbg(i32*, i8*, i32) #1

declare dso_local i32 @mci_writel(%struct.atmel_mci*, i32, i32) #1

declare dso_local i32 @MCI_DTOMUL(i32) #1

declare dso_local i32 @MCI_DTOCYC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
