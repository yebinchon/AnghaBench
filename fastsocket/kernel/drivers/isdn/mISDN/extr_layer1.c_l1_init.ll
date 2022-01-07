; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer1.c_l1_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer1.c_l1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@debug = common dso_local global i32* null, align 8
@L1S_STATE_COUNT = common dso_local global i32 0, align 4
@l1fsm_s = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@L1_EVENT_COUNT = common dso_local global i32 0, align 4
@strL1Event = common dso_local global i32 0, align 4
@strL1SState = common dso_local global i32 0, align 4
@L1SFnList = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l1_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  store i32* %3, i32** @debug, align 8
  %4 = load i32, i32* @L1S_STATE_COUNT, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @l1fsm_s, i32 0, i32 3), align 4
  %5 = load i32, i32* @L1_EVENT_COUNT, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @l1fsm_s, i32 0, i32 2), align 4
  %6 = load i32, i32* @strL1Event, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @l1fsm_s, i32 0, i32 1), align 4
  %7 = load i32, i32* @strL1SState, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @l1fsm_s, i32 0, i32 0), align 4
  %8 = load i32, i32* @L1SFnList, align 4
  %9 = load i32, i32* @L1SFnList, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = call i32 @mISDN_FsmNew(%struct.TYPE_3__* @l1fsm_s, i32 %8, i32 %10)
  ret i32 0
}

declare dso_local i32 @mISDN_FsmNew(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
