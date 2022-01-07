; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-rpc/extr_dma.c_iomd_set_dma_speed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-rpc/extr_dma.c_iomd_set_dma_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IOMD_DMATCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @iomd_set_dma_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomd_set_dma_speed(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 188
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 3, i32* %8, align 4
  br label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp sle i32 %13, 250
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 2, i32* %8, align 4
  br label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 438
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  br label %21

20:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %19
  br label %22

22:                                               ; preds = %21, %15
  br label %23

23:                                               ; preds = %22, %11
  %24 = load i32, i32* @IOMD_DMATCR, align 4
  %25 = call i32 @iomd_readb(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 3
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %52 [
    i32 131, label %29
    i32 130, label %34
    i32 129, label %40
    i32 128, label %46
  ]

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, -4
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  br label %53

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, -13
  %37 = load i32, i32* %8, align 4
  %38 = shl i32 %37, 2
  %39 = or i32 %36, %38
  store i32 %39, i32* %7, align 4
  br label %53

40:                                               ; preds = %23
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, -49
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 4
  %45 = or i32 %42, %44
  store i32 %45, i32* %7, align 4
  br label %53

46:                                               ; preds = %23
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, -193
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 6
  %51 = or i32 %48, %50
  store i32 %51, i32* %7, align 4
  br label %53

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %52, %46, %40, %34, %29
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IOMD_DMATCR, align 4
  %56 = call i32 @iomd_writeb(i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @iomd_readb(i32) #1

declare dso_local i32 @iomd_writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
