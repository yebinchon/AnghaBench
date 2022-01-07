; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_close_hfcsx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_close_hfcsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, i32*, i32, i32, i32 }

@BC_FLG_INIT = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @close_hfcsx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_hfcsx(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %3 = load %struct.BCState*, %struct.BCState** %2, align 8
  %4 = load %struct.BCState*, %struct.BCState** %2, align 8
  %5 = getelementptr inbounds %struct.BCState, %struct.BCState* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @mode_hfcsx(%struct.BCState* %3, i32 0, i32 %6)
  %8 = load i32, i32* @BC_FLG_INIT, align 4
  %9 = load %struct.BCState*, %struct.BCState** %2, align 8
  %10 = getelementptr inbounds %struct.BCState, %struct.BCState* %9, i32 0, i32 0
  %11 = call i64 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.BCState*, %struct.BCState** %2, align 8
  %15 = getelementptr inbounds %struct.BCState, %struct.BCState* %14, i32 0, i32 3
  %16 = call i32 @skb_queue_purge(i32* %15)
  %17 = load %struct.BCState*, %struct.BCState** %2, align 8
  %18 = getelementptr inbounds %struct.BCState, %struct.BCState* %17, i32 0, i32 2
  %19 = call i32 @skb_queue_purge(i32* %18)
  %20 = load %struct.BCState*, %struct.BCState** %2, align 8
  %21 = getelementptr inbounds %struct.BCState, %struct.BCState* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %13
  %25 = load %struct.BCState*, %struct.BCState** %2, align 8
  %26 = getelementptr inbounds %struct.BCState, %struct.BCState* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @dev_kfree_skb_any(i32* %27)
  %29 = load %struct.BCState*, %struct.BCState** %2, align 8
  %30 = getelementptr inbounds %struct.BCState, %struct.BCState* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @BC_FLG_BUSY, align 4
  %32 = load %struct.BCState*, %struct.BCState** %2, align 8
  %33 = getelementptr inbounds %struct.BCState, %struct.BCState* %32, i32 0, i32 0
  %34 = call i64 @test_and_clear_bit(i32 %31, i32* %33)
  br label %35

35:                                               ; preds = %24, %13
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @mode_hfcsx(%struct.BCState*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
