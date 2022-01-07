; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_ttpci-eeprom.c_check_mac_tt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_ttpci-eeprom.c_check_mac_tt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_mac_tt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mac_tt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 65535, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %36

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 8
  %11 = load i32, i32* %4, align 4
  %12 = ashr i32 %11, 8
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %12, %17
  %19 = or i32 %10, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 4
  %22 = and i32 %21, 15
  %23 = load i32, i32* %4, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 12
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 5
  %30 = xor i32 %26, %29
  %31 = load i32, i32* %4, align 4
  %32 = xor i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %8
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  %37 = load i32, i32* %4, align 4
  %38 = xor i32 %37, 65535
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = ashr i32 %39, 8
  %41 = load i32*, i32** %2, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %40, %43
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 9
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %46, %49
  %51 = or i32 %44, %50
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
