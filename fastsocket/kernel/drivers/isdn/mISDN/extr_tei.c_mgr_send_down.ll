; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_mgr_send_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_tei.c_mgr_send_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.manager = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@MGR_PH_ACTIVE = common dso_local global i32 0, align 4
@PH_ACTIVATE_REQ = common dso_local global i32 0, align 4
@MISDN_ID_ANY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.manager*, %struct.sk_buff*)* @mgr_send_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgr_send_down(%struct.manager* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.manager*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.manager* %0, %struct.manager** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.manager*, %struct.manager** %3, align 8
  %6 = getelementptr inbounds %struct.manager, %struct.manager* %5, i32 0, i32 2
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i32 @skb_queue_tail(i32* %6, %struct.sk_buff* %7)
  %9 = load i32, i32* @MGR_PH_ACTIVE, align 4
  %10 = load %struct.manager*, %struct.manager** %3, align 8
  %11 = getelementptr inbounds %struct.manager, %struct.manager* %10, i32 0, i32 1
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.manager*, %struct.manager** %3, align 8
  %16 = getelementptr inbounds %struct.manager, %struct.manager* %15, i32 0, i32 0
  %17 = load i32, i32* @PH_ACTIVATE_REQ, align 4
  %18 = load i32, i32* @MISDN_ID_ANY, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @_queue_data(i32* %16, i32 %17, i32 %18, i32 0, i32* null, i32 %19)
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.manager*, %struct.manager** %3, align 8
  %23 = call i32 @do_send(%struct.manager* %22)
  br label %24

24:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @_queue_data(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @do_send(%struct.manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
