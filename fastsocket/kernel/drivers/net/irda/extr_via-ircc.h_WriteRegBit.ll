; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_WriteRegBit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_WriteRegBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StartAddr = common dso_local global i8 0, align 1
@EndAddr = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8, i8, i8)* @WriteRegBit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteRegBit(i32 %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %12 = load i8, i8* %8, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sgt i32 %13, 7
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %55

16:                                               ; preds = %4
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @StartAddr, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @EndAddr, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16
  store i32 -1, i32* %5, align 4
  br label %55

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load i8, i8* %7, align 1
  %32 = call i32 @ReadReg(i32 %30, i8 zeroext %31)
  store i32 %32, i32* %10, align 4
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = load i8, i8* %8, align 1
  %39 = call i32 @ResetBit(i32 %37, i8 zeroext %38)
  store i32 %39, i32* %11, align 4
  br label %50

40:                                               ; preds = %29
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i8, i8* %8, align 1
  %47 = call i32 @SetBit(i32 %45, i8 zeroext %46)
  store i32 %47, i32* %11, align 4
  br label %49

48:                                               ; preds = %40
  store i32 -1, i32* %5, align 4
  br label %55

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %36
  %51 = load i32, i32* %6, align 4
  %52 = load i8, i8* %7, align 1
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @WriteReg(i32 %51, i8 zeroext %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %48, %28, %15
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @ReadReg(i32, i8 zeroext) #1

declare dso_local i32 @ResetBit(i32, i8 zeroext) #1

declare dso_local i32 @SetBit(i32, i8 zeroext) #1

declare dso_local i32 @WriteReg(i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
