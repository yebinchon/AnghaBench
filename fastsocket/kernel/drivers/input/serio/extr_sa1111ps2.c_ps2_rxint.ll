; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_sa1111ps2.c_ps2_rxint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_sa1111ps2.c_ps2_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2if = type { i64, i32 }

@SA1111_PS2STAT = common dso_local global i64 0, align 8
@PS2STAT_RXF = common dso_local global i32 0, align 4
@PS2STAT_STP = common dso_local global i32 0, align 4
@SERIO_FRAME = common dso_local global i32 0, align 4
@PS2STAT_RXP = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@SA1111_PS2DATA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ps2_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_rxint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ps2if*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ps2if*
  store %struct.ps2if* %10, %struct.ps2if** %5, align 8
  %11 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %12 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SA1111_PS2STAT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @sa1111_readl(i64 %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %70, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PS2STAT_RXF, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %83

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PS2STAT_STP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* @PS2STAT_STP, align 4
  %29 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %30 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SA1111_PS2STAT, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @sa1111_writel(i32 %28, i64 %33)
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @PS2STAT_STP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @SERIO_FRAME, align 4
  br label %43

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @PS2STAT_RXP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @SERIO_PARITY, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ 0, %49 ], [ %51, %50 ]
  %54 = or i32 %44, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %56 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SA1111_PS2DATA, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @sa1111_readl(i64 %59)
  %61 = and i32 %60, 255
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @hweight8(i32 %62)
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %52
  %67 = load i32, i32* @SERIO_PARITY, align 4
  %68 = load i32, i32* %7, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %52
  %71 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %72 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @serio_interrupt(i32 %73, i32 %74, i32 %75)
  %77 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %78 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SA1111_PS2STAT, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @sa1111_readl(i64 %81)
  store i32 %82, i32* %8, align 4
  br label %17

83:                                               ; preds = %17
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %84
}

declare dso_local i32 @sa1111_readl(i64) #1

declare dso_local i32 @sa1111_writel(i32, i64) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @serio_interrupt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
