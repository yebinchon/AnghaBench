; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_read_mii_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_read_mii_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PHY_READ = common dso_local global i32 0, align 4
@PHY_GO = common dso_local global i32 0, align 4
@PHYADD = common dso_local global i32 0, align 4
@PHYCNT = common dso_local global i32 0, align 4
@MII_TIMEOUT = common dso_local global i32 0, align 4
@PHYDAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @read_mii_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mii_word(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PHY_READ, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @PHY_GO, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @PHYADD, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %25 = call i32 @set_registers(i32* %22, i32 %23, i32 12, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @PHYCNT, align 4
  %28 = call i32 @set_registers(i32* %26, i32 %27, i32 1, i32* %12)
  br label %29

29:                                               ; preds = %45, %4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @PHYCNT, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %33 = call i32 @get_registers(i32* %30, i32 %31, i32 1, i32* %32)
  br label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PHY_GO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @MII_TIMEOUT, align 4
  %44 = icmp slt i32 %41, %43
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i1 [ false, %34 ], [ %44, %40 ]
  br i1 %46, label %29, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @MII_TIMEOUT, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @PHYDAT, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %55 = call i32 @get_registers(i32* %52, i32 %53, i32 2, i32* %54)
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %57, %60
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %5, align 4
  br label %64

63:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @set_registers(i32*, i32, i32, i32*) #1

declare dso_local i32 @get_registers(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
