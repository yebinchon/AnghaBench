; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_fsm.c_FsmExpireTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_fsm.c_FsmExpireTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmTimer = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i8*, i64)*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmTimer*)* @FsmExpireTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmExpireTimer(%struct.FsmTimer* %0) #0 {
  %2 = alloca %struct.FsmTimer*, align 8
  store %struct.FsmTimer* %0, %struct.FsmTimer** %2, align 8
  %3 = load %struct.FsmTimer*, %struct.FsmTimer** %2, align 8
  %4 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %3, i32 0, i32 2
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.FsmTimer*, %struct.FsmTimer** %2, align 8
  %7 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.FsmTimer*, %struct.FsmTimer** %2, align 8
  %10 = getelementptr inbounds %struct.FsmTimer, %struct.FsmTimer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @mISDN_FsmEvent(%struct.TYPE_3__* %5, i32 %8, i32 %11)
  ret void
}

declare dso_local i32 @mISDN_FsmEvent(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
