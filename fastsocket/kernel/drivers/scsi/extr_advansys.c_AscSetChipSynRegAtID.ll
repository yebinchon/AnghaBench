; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscSetChipSynRegAtID.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscSetChipSynRegAtID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@ASC_MAX_TID = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @AscSetChipSynRegAtID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscSetChipSynRegAtID(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @AscSetBank(i32 %11, i32 1)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @AscReadChipDvcID(i32 %13)
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %15

15:                                               ; preds = %26, %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @ASC_MAX_TID, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 1, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %29

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %15

29:                                               ; preds = %24, %15
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @AscWriteChipDvcID(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @AscReadChipDvcID(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 1, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @AscSetBank(i32 %40, i32 0)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @AscSetChipSyn(i32 %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @AscGetChipSyn(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %39
  br label %54

52:                                               ; preds = %29
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @AscSetBank(i32 %55, i32 1)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @AscWriteChipDvcID(i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @AscSetBank(i32 %60, i32 0)
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @AscSetBank(i32, i32) #1

declare dso_local i32 @AscReadChipDvcID(i32) #1

declare dso_local i32 @AscWriteChipDvcID(i32, i32) #1

declare dso_local i32 @AscSetChipSyn(i32, i32) #1

declare dso_local i32 @AscGetChipSyn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
