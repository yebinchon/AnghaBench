; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_at32psif.c_psif_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_at32psif.c_psif_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psif = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SR = common dso_local global i32 0, align 4
@RXRDY = common dso_local global i32 0, align 4
@RHR = common dso_local global i32 0, align 4
@PARITY = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@OVRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"overrun read error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @psif_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psif_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.psif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.psif*
  store %struct.psif* %11, %struct.psif** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.psif*, %struct.psif** %5, align 8
  %14 = load i32, i32* @SR, align 4
  %15 = call i64 @psif_readl(%struct.psif* %13, i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i32, i32* @RXRDY, align 4
  %18 = call i64 @PSIF_BIT(i32 %17)
  %19 = and i64 %16, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  %22 = load %struct.psif*, %struct.psif** %5, align 8
  %23 = load i32, i32* @RHR, align 4
  %24 = call i64 @psif_readl(%struct.psif* %22, i32 %23)
  %25 = trunc i64 %24 to i8
  store i8 %25, i8* %9, align 1
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @PARITY, align 4
  %28 = call i64 @PSIF_BIT(i32 %27)
  %29 = and i64 %26, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load i32, i32* @SERIO_PARITY, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %21
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* @OVRUN, align 4
  %38 = call i64 @PSIF_BIT(i32 %37)
  %39 = and i64 %36, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.psif*, %struct.psif** %5, align 8
  %43 = getelementptr inbounds %struct.psif, %struct.psif* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.psif*, %struct.psif** %5, align 8
  %49 = getelementptr inbounds %struct.psif, %struct.psif* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8, i8* %9, align 1
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @serio_interrupt(i32 %50, i8 zeroext %51, i32 %52)
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %47, %2
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i64 @psif_readl(%struct.psif*, i32) #1

declare dso_local i64 @PSIF_BIT(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @serio_interrupt(i32, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
