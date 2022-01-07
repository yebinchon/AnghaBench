; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32 }

@TCR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i16 0, align 2
@BIT2 = common dso_local global i16 0, align 2
@IRQ_TXDATA = common dso_local global i64 0, align 8
@IRQ_TXIDLE = common dso_local global i64 0, align 8
@IRQ_TXUNDER = common dso_local global i64 0, align 8
@SSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @tx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_stop(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 2
  %6 = call i32 @del_timer(i32* %5)
  %7 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %8 = call i32 @tdma_reset(%struct.slgt_info* %7)
  %9 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %10 = load i32, i32* @TCR, align 4
  %11 = call zeroext i16 @rd_reg16(%struct.slgt_info* %9, i32 %10)
  %12 = zext i16 %11 to i32
  %13 = load i16, i16* @BIT1, align 2
  %14 = zext i16 %13 to i32
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %3, align 2
  %18 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %19 = load i32, i32* @TCR, align 4
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @BIT2, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %21, %23
  %25 = trunc i32 %24 to i16
  %26 = call i32 @wr_reg16(%struct.slgt_info* %18, i32 %19, i16 zeroext %25)
  %27 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %28 = load i64, i64* @IRQ_TXDATA, align 8
  %29 = load i64, i64* @IRQ_TXIDLE, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @IRQ_TXUNDER, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @slgt_irq_off(%struct.slgt_info* %27, i64 %32)
  %34 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %35 = load i32, i32* @SSR, align 4
  %36 = load i64, i64* @IRQ_TXIDLE, align 8
  %37 = load i64, i64* @IRQ_TXUNDER, align 8
  %38 = add nsw i64 %36, %37
  %39 = trunc i64 %38 to i16
  %40 = call i32 @wr_reg16(%struct.slgt_info* %34, i32 %35, i16 zeroext %39)
  %41 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %42 = call i32 @reset_tbufs(%struct.slgt_info* %41)
  %43 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %44 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @tdma_reset(%struct.slgt_info*) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i64) #1

declare dso_local i32 @reset_tbufs(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
