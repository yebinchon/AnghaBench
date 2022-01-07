; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_channel_to_vpivci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_channel_to_vpivci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vpi_bits = common dso_local global i32 0, align 4
@RX_CHANNEL_MASK = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i16*, i32*)* @channel_to_vpivci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_to_vpivci(i16 zeroext %0, i16* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i16*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16, align 2
  store i16 %0, i16* %5, align 2
  store i16* %1, i16** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @vpi_bits, align 4
  %10 = sub nsw i32 10, %9
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %8, align 2
  %12 = load i16, i16* %5, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @RX_CHANNEL_MASK, align 2
  %15 = zext i16 %14 to i32
  %16 = and i32 %13, %15
  %17 = load i16, i16* %5, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* %8, align 2
  %24 = zext i16 %23 to i32
  %25 = shl i32 -1, %24
  %26 = and i32 %22, %25
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* %8, align 2
  %31 = zext i16 %30 to i32
  %32 = ashr i32 %29, %31
  %33 = trunc i32 %32 to i16
  %34 = load i16*, i16** %6, align 8
  store i16 %33, i16* %34, align 2
  %35 = load i16, i16* %5, align 2
  %36 = zext i16 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %20
  br label %42

39:                                               ; preds = %20
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi i32 [ 0, %38 ], [ %41, %39 ]
  store i32 %43, i32* %4, align 4
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %44, %42
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
