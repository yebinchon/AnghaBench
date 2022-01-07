; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_set_peer_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_set_peer_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32, i32, i32 }

@FLG_PEER_BUSY = common dso_local global i32 0, align 4
@FLG_L2BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.layer2*)* @set_peer_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_peer_busy(%struct.layer2* %0) #0 {
  %2 = alloca %struct.layer2*, align 8
  store %struct.layer2* %0, %struct.layer2** %2, align 8
  %3 = load i32, i32* @FLG_PEER_BUSY, align 4
  %4 = load %struct.layer2*, %struct.layer2** %2, align 8
  %5 = getelementptr inbounds %struct.layer2, %struct.layer2* %4, i32 0, i32 0
  %6 = call i32 @test_and_set_bit(i32 %3, i32* %5)
  %7 = load %struct.layer2*, %struct.layer2** %2, align 8
  %8 = getelementptr inbounds %struct.layer2, %struct.layer2* %7, i32 0, i32 2
  %9 = call i64 @skb_queue_len(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.layer2*, %struct.layer2** %2, align 8
  %13 = getelementptr inbounds %struct.layer2, %struct.layer2* %12, i32 0, i32 1
  %14 = call i64 @skb_queue_len(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @FLG_L2BLOCK, align 4
  %18 = load %struct.layer2*, %struct.layer2** %2, align 8
  %19 = getelementptr inbounds %struct.layer2, %struct.layer2* %18, i32 0, i32 0
  %20 = call i32 @test_and_set_bit(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
