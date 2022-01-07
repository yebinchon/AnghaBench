; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_xpr_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hisax_fcpcipnp.c_hdlc_xpr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fritz_bcs = type { %struct.sk_buff*, i64 }
%struct.sk_buff = type { i64, i64 }

@PH_DATA = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fritz_bcs*)* @hdlc_xpr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_xpr_irq(%struct.fritz_bcs* %0) #0 {
  %2 = alloca %struct.fritz_bcs*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.fritz_bcs* %0, %struct.fritz_bcs** %2, align 8
  %4 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %5 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %4, i32 0, i32 0
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %17 = call i32 @hdlc_fill_fifo(%struct.fritz_bcs* %16)
  br label %34

18:                                               ; preds = %10
  %19 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %20 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %22 = getelementptr inbounds %struct.fritz_bcs, %struct.fritz_bcs* %21, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %22, align 8
  %23 = load %struct.fritz_bcs*, %struct.fritz_bcs** %2, align 8
  %24 = load i32, i32* @PH_DATA, align 4
  %25 = load i32, i32* @CONFIRM, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @B_L1L2(%struct.fritz_bcs* %23, i32 %26, i8* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %32)
  br label %34

34:                                               ; preds = %18, %15, %9
  ret void
}

declare dso_local i32 @hdlc_fill_fifo(%struct.fritz_bcs*) #1

declare dso_local i32 @B_L1L2(%struct.fritz_bcs*, i32, i8*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
