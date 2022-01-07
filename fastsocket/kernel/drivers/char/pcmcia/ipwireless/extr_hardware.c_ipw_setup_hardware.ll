; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_ipw_setup_hardware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_hardware.c_ipw_setup_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_hardware = type { i64, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@HW_VERSION_1 = common dso_local global i64 0, align 8
@DCR_RXRESET = common dso_local global i32 0, align 4
@IODCR = common dso_local global i64 0, align 8
@DCR_TXRESET = common dso_local global i32 0, align 4
@IER_TXENABLED = common dso_local global i32 0, align 4
@IER_RXENABLED = common dso_local global i32 0, align 4
@IOIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_hardware*)* @ipw_setup_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_setup_hardware(%struct.ipw_hardware* %0) #0 {
  %2 = alloca %struct.ipw_hardware*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %2, align 8
  %5 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %6 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %10 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HW_VERSION_1, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load i32, i32* @DCR_RXRESET, align 4
  %16 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %17 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IODCR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outw(i32 %15, i64 %20)
  %22 = load i32, i32* @DCR_TXRESET, align 4
  %23 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %24 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IODCR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outw(i32 %22, i64 %27)
  %29 = load i32, i32* @IER_TXENABLED, align 4
  %30 = load i32, i32* @IER_RXENABLED, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %33 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IOIER, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outw(i32 %31, i64 %36)
  br label %54

38:                                               ; preds = %1
  %39 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %40 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call zeroext i16 @readw(i32* %42)
  store i16 %43, i16* %4, align 2
  %44 = load i16, i16* %4, align 2
  %45 = zext i16 %44 to i32
  %46 = or i32 %45, 1
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %4, align 2
  %48 = load i16, i16* %4, align 2
  %49 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %50 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @writew(i16 zeroext %48, i32* %52)
  br label %54

54:                                               ; preds = %38, %14
  %55 = load %struct.ipw_hardware*, %struct.ipw_hardware** %2, align 8
  %56 = getelementptr inbounds %struct.ipw_hardware, %struct.ipw_hardware* %55, i32 0, i32 1
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local zeroext i16 @readw(i32*) #1

declare dso_local i32 @writew(i16 zeroext, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
