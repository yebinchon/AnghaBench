; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_fpga_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_solos-pci.c_fpga_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solos_card = type { i32, i32, i32* }
%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.TYPE_2__ = type { %struct.atm_vcc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.solos_card*, i32, %struct.sk_buff*, %struct.atm_vcc*)* @fpga_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_queue(%struct.solos_card* %0, i32 %1, %struct.sk_buff* %2, %struct.atm_vcc* %3) #0 {
  %5 = alloca %struct.solos_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.solos_card* %0, %struct.solos_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store %struct.atm_vcc* %3, %struct.atm_vcc** %8, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = call %struct.TYPE_2__* @SKB_CB(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.atm_vcc* %11, %struct.atm_vcc** %14, align 8
  %15 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %16 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %15, i32 0, i32 1
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %20 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @skb_queue_len(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %27 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = call i32 @skb_queue_tail(i32* %31, %struct.sk_buff* %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %40 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %4
  %44 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %45 = getelementptr inbounds %struct.solos_card, %struct.solos_card* %44, i32 0, i32 1
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load %struct.solos_card*, %struct.solos_card** %5, align 8
  %52 = call i32 @fpga_tx(%struct.solos_card* %51)
  br label %53

53:                                               ; preds = %50, %43
  ret void
}

declare dso_local %struct.TYPE_2__* @SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fpga_tx(%struct.solos_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
