; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_do_interrupt_transfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_do_interrupt_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (i32)* }

@SSP_CHIP_SELECT = common dso_local global i32 0, align 4
@STATE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SSP_CR1_MASK_SSE = common dso_local global i32 0, align 4
@ENABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_interrupt_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_interrupt_transfer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pl022*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pl022*
  store %struct.pl022* %5, %struct.pl022** %3, align 8
  %6 = load %struct.pl022*, %struct.pl022** %3, align 8
  %7 = getelementptr inbounds %struct.pl022, %struct.pl022* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load i32, i32* @SSP_CHIP_SELECT, align 4
  %12 = call i32 %10(i32 %11)
  %13 = load %struct.pl022*, %struct.pl022** %3, align 8
  %14 = load %struct.pl022*, %struct.pl022** %3, align 8
  %15 = getelementptr inbounds %struct.pl022, %struct.pl022* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @set_up_next_transfer(%struct.pl022* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load i32, i32* @STATE_ERROR, align 4
  %21 = load %struct.pl022*, %struct.pl022** %3, align 8
  %22 = getelementptr inbounds %struct.pl022, %struct.pl022* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  %27 = load %struct.pl022*, %struct.pl022** %3, align 8
  %28 = getelementptr inbounds %struct.pl022, %struct.pl022* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.pl022*, %struct.pl022** %3, align 8
  %32 = call i32 @giveback(%struct.pl022* %31)
  br label %52

33:                                               ; preds = %1
  %34 = load %struct.pl022*, %struct.pl022** %3, align 8
  %35 = getelementptr inbounds %struct.pl022, %struct.pl022* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @SSP_CR1(i32 %36)
  %38 = call i32 @readw(i32 %37)
  %39 = load i32, i32* @SSP_CR1_MASK_SSE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.pl022*, %struct.pl022** %3, align 8
  %42 = getelementptr inbounds %struct.pl022, %struct.pl022* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @SSP_CR1(i32 %43)
  %45 = call i32 @writew(i32 %40, i32 %44)
  %46 = load i32, i32* @ENABLE_ALL_INTERRUPTS, align 4
  %47 = load %struct.pl022*, %struct.pl022** %3, align 8
  %48 = getelementptr inbounds %struct.pl022, %struct.pl022* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @SSP_IMSC(i32 %49)
  %51 = call i32 @writew(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %33, %19
  ret void
}

declare dso_local i64 @set_up_next_transfer(%struct.pl022*, i32) #1

declare dso_local i32 @giveback(%struct.pl022*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @SSP_CR1(i32) #1

declare dso_local i32 @SSP_IMSC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
