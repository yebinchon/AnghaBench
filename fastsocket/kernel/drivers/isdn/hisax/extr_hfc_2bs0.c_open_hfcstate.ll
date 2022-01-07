; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bs0.c_open_hfcstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bs0.c_open_hfcstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 }
%struct.BCState = type { i64, i64, i32, i32*, i32, i32 }

@BC_FLG_INIT = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IsdnCardState*, %struct.BCState*)* @open_hfcstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_hfcstate(%struct.IsdnCardState* %0, %struct.BCState* %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca %struct.BCState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store %struct.BCState* %1, %struct.BCState** %4, align 8
  %5 = load i32, i32* @BC_FLG_INIT, align 4
  %6 = load %struct.BCState*, %struct.BCState** %4, align 8
  %7 = getelementptr inbounds %struct.BCState, %struct.BCState* %6, i32 0, i32 2
  %8 = call i32 @test_and_set_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load %struct.BCState*, %struct.BCState** %4, align 8
  %12 = getelementptr inbounds %struct.BCState, %struct.BCState* %11, i32 0, i32 5
  %13 = call i32 @skb_queue_head_init(i32* %12)
  %14 = load %struct.BCState*, %struct.BCState** %4, align 8
  %15 = getelementptr inbounds %struct.BCState, %struct.BCState* %14, i32 0, i32 4
  %16 = call i32 @skb_queue_head_init(i32* %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load %struct.BCState*, %struct.BCState** %4, align 8
  %19 = getelementptr inbounds %struct.BCState, %struct.BCState* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @BC_FLG_BUSY, align 4
  %21 = load %struct.BCState*, %struct.BCState** %4, align 8
  %22 = getelementptr inbounds %struct.BCState, %struct.BCState* %21, i32 0, i32 2
  %23 = call i32 @test_and_clear_bit(i32 %20, i32* %22)
  %24 = load %struct.BCState*, %struct.BCState** %4, align 8
  %25 = getelementptr inbounds %struct.BCState, %struct.BCState* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.BCState*, %struct.BCState** %4, align 8
  %27 = getelementptr inbounds %struct.BCState, %struct.BCState* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  ret i32 0
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
