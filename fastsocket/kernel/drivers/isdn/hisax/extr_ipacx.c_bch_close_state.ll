; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_bch_close_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_bch_close_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, i32*, i32, i32, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@BC_FLG_INIT = common dso_local global i32 0, align 4
@BC_FLG_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @bch_close_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bch_close_state(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %3 = load %struct.BCState*, %struct.BCState** %2, align 8
  %4 = load %struct.BCState*, %struct.BCState** %2, align 8
  %5 = getelementptr inbounds %struct.BCState, %struct.BCState* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @bch_mode(%struct.BCState* %3, i32 0, i32 %6)
  %8 = load i32, i32* @BC_FLG_INIT, align 4
  %9 = load %struct.BCState*, %struct.BCState** %2, align 8
  %10 = getelementptr inbounds %struct.BCState, %struct.BCState* %9, i32 0, i32 0
  %11 = call i64 @test_and_clear_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %1
  %14 = load %struct.BCState*, %struct.BCState** %2, align 8
  %15 = getelementptr inbounds %struct.BCState, %struct.BCState* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  %20 = load %struct.BCState*, %struct.BCState** %2, align 8
  %21 = getelementptr inbounds %struct.BCState, %struct.BCState* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.BCState*, %struct.BCState** %2, align 8
  %25 = getelementptr inbounds %struct.BCState, %struct.BCState* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.BCState*, %struct.BCState** %2, align 8
  %29 = getelementptr inbounds %struct.BCState, %struct.BCState* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load %struct.BCState*, %struct.BCState** %2, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 3
  %32 = call i32 @skb_queue_purge(i32* %31)
  %33 = load %struct.BCState*, %struct.BCState** %2, align 8
  %34 = getelementptr inbounds %struct.BCState, %struct.BCState* %33, i32 0, i32 2
  %35 = call i32 @skb_queue_purge(i32* %34)
  %36 = load %struct.BCState*, %struct.BCState** %2, align 8
  %37 = getelementptr inbounds %struct.BCState, %struct.BCState* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %13
  %41 = load %struct.BCState*, %struct.BCState** %2, align 8
  %42 = getelementptr inbounds %struct.BCState, %struct.BCState* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @dev_kfree_skb_any(i32* %43)
  %45 = load %struct.BCState*, %struct.BCState** %2, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @BC_FLG_BUSY, align 4
  %48 = load %struct.BCState*, %struct.BCState** %2, align 8
  %49 = getelementptr inbounds %struct.BCState, %struct.BCState* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  br label %51

51:                                               ; preds = %40, %13
  br label %52

52:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @bch_mode(%struct.BCState*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
