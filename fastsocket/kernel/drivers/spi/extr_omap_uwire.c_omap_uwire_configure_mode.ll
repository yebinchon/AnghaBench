; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap_uwire.c_omap_uwire_configure_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap_uwire.c_omap_uwire_configure_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UWIRE_CLK_INVERTED = common dso_local global i64 0, align 8
@UWIRE_SR1 = common dso_local global i32 0, align 4
@UWIRE_SR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64)* @omap_uwire_configure_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_uwire_configure_mode(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @UWIRE_CLK_INVERTED, align 8
  %11 = and i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = xor i32 %14, 3
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, 63
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 6, i32* %7, align 4
  br label %25

24:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @UWIRE_SR1, align 4
  store i32 %29, i32* %8, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @UWIRE_SR2, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @uwire_read_reg(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 63, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @uwire_write_reg(i32 %45, i32 %46)
  ret void
}

declare dso_local i32 @uwire_read_reg(i32) #1

declare dso_local i32 @uwire_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
