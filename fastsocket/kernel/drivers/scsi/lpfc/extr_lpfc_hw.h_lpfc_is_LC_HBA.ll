; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hw.h_lpfc_is_LC_HBA.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hw.h_lpfc_is_LC_HBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCI_DEVICE_ID_TFLY = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_PFLY = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_LP101 = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_BMID = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_BSMB = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_ZMID = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_ZSMB = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_SAT_MID = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_SAT_SMB = common dso_local global i16 0, align 2
@PCI_DEVICE_ID_RFLY = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16)* @lpfc_is_LC_HBA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_is_LC_HBA(i16 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  %6 = load i16, i16* @PCI_DEVICE_ID_TFLY, align 2
  %7 = zext i16 %6 to i32
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %63, label %9

9:                                                ; preds = %1
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @PCI_DEVICE_ID_PFLY, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %63, label %15

15:                                               ; preds = %9
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = load i16, i16* @PCI_DEVICE_ID_LP101, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %63, label %21

21:                                               ; preds = %15
  %22 = load i16, i16* %3, align 2
  %23 = zext i16 %22 to i32
  %24 = load i16, i16* @PCI_DEVICE_ID_BMID, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %63, label %27

27:                                               ; preds = %21
  %28 = load i16, i16* %3, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @PCI_DEVICE_ID_BSMB, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %63, label %33

33:                                               ; preds = %27
  %34 = load i16, i16* %3, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @PCI_DEVICE_ID_ZMID, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %63, label %39

39:                                               ; preds = %33
  %40 = load i16, i16* %3, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @PCI_DEVICE_ID_ZSMB, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %63, label %45

45:                                               ; preds = %39
  %46 = load i16, i16* %3, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @PCI_DEVICE_ID_SAT_MID, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load i16, i16* %3, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* @PCI_DEVICE_ID_SAT_SMB, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i16, i16* %3, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* @PCI_DEVICE_ID_RFLY, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57, %51, %45, %39, %33, %27, %21, %15, %9, %1
  store i32 1, i32* %2, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
