; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_categorize_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_categorize_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_EFLAG_DUBIOUS_XFER = common dso_local global i32 0, align 4
@ATA_ECAT_DUBIOUS_NONE = common dso_local global i32 0, align 4
@AC_ERR_ATA_BUS = common dso_local global i32 0, align 4
@ATA_ECAT_ATA_BUS = common dso_local global i32 0, align 4
@AC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@ATA_ECAT_TOUT_HSM = common dso_local global i32 0, align 4
@ATA_EFLAG_IS_IO = common dso_local global i32 0, align 4
@AC_ERR_HSM = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i32 0, align 4
@AC_ERR_MEDIA = common dso_local global i32 0, align 4
@AC_ERR_INVALID = common dso_local global i32 0, align 4
@ATA_ECAT_UNK_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @ata_eh_categorize_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_eh_categorize_error(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ATA_EFLAG_DUBIOUS_XFER, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %7, align 8
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @ATA_ECAT_DUBIOUS_NONE, align 4
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AC_ERR_ATA_BUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ATA_ECAT_ATA_BUS, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @AC_ERR_TIMEOUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ATA_ECAT_TOUT_HSM, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %69

39:                                               ; preds = %30
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ATA_EFLAG_IS_IO, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AC_ERR_HSM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ATA_ECAT_TOUT_HSM, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %4, align 4
  br label %69

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @AC_ERR_DEV, align 4
  %56 = load i32, i32* @AC_ERR_MEDIA, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @AC_ERR_INVALID, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = load i32, i32* @AC_ERR_DEV, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @ATA_ECAT_UNK_DEV, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %4, align 4
  br label %69

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %39
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %63, %49, %35, %26
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
