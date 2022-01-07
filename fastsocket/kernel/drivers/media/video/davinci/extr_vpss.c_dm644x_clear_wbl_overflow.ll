; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpss.c_dm644x_clear_wbl_overflow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/davinci/extr_vpss.c_dm644x_clear_wbl_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VPSS_PCR_AEW_WBL_0 = common dso_local global i32 0, align 4
@VPSS_PCR_CCDC_WBL_O = common dso_local global i32 0, align 4
@DM644X_SBL_PCR_VPSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dm644x_clear_wbl_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm644x_clear_wbl_overflow(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @VPSS_PCR_AEW_WBL_0, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VPSS_PCR_CCDC_WBL_O, align 4
  %12 = icmp ugt i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %26

14:                                               ; preds = %9
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %15, %16
  %18 = xor i32 %17, -1
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @DM644X_SBL_PCR_VPSS, align 4
  %20 = call i32 @bl_regr(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @DM644X_SBL_PCR_VPSS, align 4
  %25 = call i32 @bl_regw(i32 %23, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @bl_regr(i32) #1

declare dso_local i32 @bl_regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
