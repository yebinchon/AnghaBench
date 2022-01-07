; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_write_mii_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_write_mii_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHY_WRITE = common dso_local global i32 0, align 4
@PHY_GO = common dso_local global i32 0, align 4
@PHYADD = common dso_local global i32 0, align 4
@PHYCNT = common dso_local global i32 0, align 4
@MII_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @write_mii_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_mii_word(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PHY_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @PHY_GO, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @PHYADD, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %30 = call i32 @set_registers(i32* %27, i32 %28, i32 12, i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @PHYCNT, align 4
  %33 = call i32 @set_registers(i32* %31, i32 %32, i32 1, i32* %12)
  br label %34

34:                                               ; preds = %50, %4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* @PHYCNT, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %38 = call i32 @get_registers(i32* %35, i32 %36, i32 1, i32* %37)
  br label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PHY_GO, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @MII_TIMEOUT, align 4
  %49 = icmp slt i32 %46, %48
  br label %50

50:                                               ; preds = %45, %39
  %51 = phi i1 [ false, %39 ], [ %49, %45 ]
  br i1 %51, label %34, label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @MII_TIMEOUT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %58

57:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @set_registers(i32*, i32, i32, i32*) #1

declare dso_local i32 @get_registers(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
