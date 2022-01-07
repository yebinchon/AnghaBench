; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_rx_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32 }

@RCR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i16 0, align 2
@BIT2 = common dso_local global i16 0, align 2
@IRQ_RXOVER = common dso_local global i16 0, align 2
@IRQ_RXDATA = common dso_local global i64 0, align 8
@IRQ_RXIDLE = common dso_local global i16 0, align 2
@SSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @rx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_stop(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i32, i32* @RCR, align 4
  %6 = call zeroext i16 @rd_reg16(%struct.slgt_info* %4, i32 %5)
  %7 = zext i16 %6 to i32
  %8 = load i16, i16* @BIT1, align 2
  %9 = zext i16 %8 to i32
  %10 = xor i32 %9, -1
  %11 = and i32 %7, %10
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %3, align 2
  %13 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %14 = load i32, i32* @RCR, align 4
  %15 = load i16, i16* %3, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @BIT2, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %16, %18
  %20 = trunc i32 %19 to i16
  %21 = call i32 @wr_reg16(%struct.slgt_info* %13, i32 %14, i16 zeroext %20)
  %22 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %23 = load i32, i32* @RCR, align 4
  %24 = load i16, i16* %3, align 2
  %25 = call i32 @wr_reg16(%struct.slgt_info* %22, i32 %23, i16 zeroext %24)
  %26 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %27 = load i16, i16* @IRQ_RXOVER, align 2
  %28 = zext i16 %27 to i64
  %29 = load i64, i64* @IRQ_RXDATA, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i16, i16* @IRQ_RXIDLE, align 2
  %32 = zext i16 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @slgt_irq_off(%struct.slgt_info* %26, i64 %33)
  %35 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %36 = load i32, i32* @SSR, align 4
  %37 = load i16, i16* @IRQ_RXIDLE, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @IRQ_RXOVER, align 2
  %40 = zext i16 %39 to i32
  %41 = add nsw i32 %38, %40
  %42 = trunc i32 %41 to i16
  %43 = call i32 @wr_reg16(%struct.slgt_info* %35, i32 %36, i16 zeroext %42)
  %44 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %45 = call i32 @rdma_reset(%struct.slgt_info* %44)
  %46 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %47 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %46, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %49 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  ret void
}

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i64) #1

declare dso_local i32 @rdma_reset(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
