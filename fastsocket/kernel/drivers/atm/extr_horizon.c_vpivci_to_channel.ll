; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_vpivci_to_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_vpivci_to_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vpi_bits = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i16, i32)* @vpivci_to_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpivci_to_channel(i32* %0, i16 signext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store i32* %0, i32** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @vpi_bits, align 4
  %10 = sub nsw i32 10, %9
  %11 = trunc i32 %10 to i16
  store i16 %11, i16* %8, align 2
  %12 = load i16, i16* %6, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp sle i32 0, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %3
  %16 = load i16, i16* %6, align 2
  %17 = sext i16 %16 to i32
  %18 = load i32, i32* @vpi_bits, align 4
  %19 = shl i32 1, %18
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 0, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i16, i16* %8, align 2
  %27 = zext i16 %26 to i32
  %28 = shl i32 1, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %24
  %31 = load i16, i16* %6, align 2
  %32 = sext i16 %31 to i32
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = shl i32 %32, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  store i32 %47, i32* %4, align 4
  br label %51

48:                                               ; preds = %24, %21, %15, %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %46
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
