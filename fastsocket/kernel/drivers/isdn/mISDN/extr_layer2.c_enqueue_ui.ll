; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_enqueue_ui.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_enqueue_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i64 }
%struct.sk_buff = type { i32 }

@MDL_STATUS_UI_IND = common dso_local global i32 0, align 4
@PH_DATA_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.layer2*, %struct.sk_buff*)* @enqueue_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_ui(%struct.layer2* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.layer2*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.layer2* %0, %struct.layer2** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.layer2*, %struct.layer2** %3, align 8
  %6 = getelementptr inbounds %struct.layer2, %struct.layer2* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.layer2*, %struct.layer2** %3, align 8
  %11 = load i32, i32* @MDL_STATUS_UI_IND, align 4
  %12 = call i32 @l2_tei(%struct.layer2* %10, i32 %11, i32 0)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.layer2*, %struct.layer2** %3, align 8
  %15 = load i32, i32* @PH_DATA_REQ, align 4
  %16 = load %struct.layer2*, %struct.layer2** %3, align 8
  %17 = call i32 @l2_newid(%struct.layer2* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @l2down(%struct.layer2* %14, i32 %15, i32 %17, %struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @dev_kfree_skb(%struct.sk_buff* %22)
  br label %24

24:                                               ; preds = %21, %13
  ret void
}

declare dso_local i32 @l2_tei(%struct.layer2*, i32, i32) #1

declare dso_local i64 @l2down(%struct.layer2*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @l2_newid(%struct.layer2*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
