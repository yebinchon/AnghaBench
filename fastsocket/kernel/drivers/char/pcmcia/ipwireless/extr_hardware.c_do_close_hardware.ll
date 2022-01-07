; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_do_close_hardware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_do_close_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i64, i32, i64 }

@HW_VERSION_1 = common dso_local global i64 0, align 8
@IOIER = common dso_local global i64 0, align 8
@IOIR = common dso_local global i64 0, align 8
@IR_TXINTR = common dso_local global i32 0, align 4
@IR_RXINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_hardware*)* @do_close_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_close_hardware(%struct.ipw_hardware* %0) #0 {
  %2 = alloca %struct.ipw_hardware*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %2, align 8
  %4 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HW_VERSION_1, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %1
  %10 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IOIER, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outw(i32 0, i64 %14)
  %16 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %17 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IOIR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @inw(i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @IR_TXINTR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %9
  %27 = load i32, i32* @IR_TXINTR, align 4
  %28 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %29 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IOIR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outw(i32 %27, i64 %32)
  br label %34

34:                                               ; preds = %26, %9
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @IR_RXINTR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @IR_RXINTR, align 4
  %41 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %42 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @IOIR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @outw(i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %39, %34
  %48 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %49 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @synchronize_irq(i32 %50)
  br label %52

52:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
