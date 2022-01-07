; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscSetBank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscSetBank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CC_SINGLE_STEP = common dso_local global i32 0, align 4
@CC_TEST = common dso_local global i32 0, align 4
@CC_DIAG = common dso_local global i32 0, align 4
@CC_SCSI_RESET = common dso_local global i32 0, align 4
@CC_CHIP_RESET = common dso_local global i32 0, align 4
@CC_BANK_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @AscSetBank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AscSetBank(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @AscGetChipControl(i32 %6)
  %8 = load i32, i32* @CC_SINGLE_STEP, align 4
  %9 = load i32, i32* @CC_TEST, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CC_DIAG, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CC_SCSI_RESET, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CC_CHIP_RESET, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %7, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @CC_BANK_ONE, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* @CC_DIAG, align 4
  %30 = load i32, i32* @CC_BANK_ONE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load i32, i32* @CC_BANK_ONE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %21
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @AscSetChipControl(i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @AscGetChipControl(i32) #1

declare dso_local i32 @AscSetChipControl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
