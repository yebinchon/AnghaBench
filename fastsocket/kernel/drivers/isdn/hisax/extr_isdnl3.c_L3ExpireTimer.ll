; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_L3ExpireTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_L3ExpireTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.L3Timer = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*, i32, %struct.TYPE_6__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.L3Timer*)* @L3ExpireTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @L3ExpireTimer(%struct.L3Timer* %0) #0 {
  %2 = alloca %struct.L3Timer*, align 8
  store %struct.L3Timer* %0, %struct.L3Timer** %2, align 8
  %3 = load %struct.L3Timer*, %struct.L3Timer** %2, align 8
  %4 = getelementptr inbounds %struct.L3Timer, %struct.L3Timer* %3, i32 0, i32 0
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_5__*, i32, %struct.TYPE_6__*)*, i32 (%struct.TYPE_5__*, i32, %struct.TYPE_6__*)** %9, align 8
  %11 = load %struct.L3Timer*, %struct.L3Timer** %2, align 8
  %12 = getelementptr inbounds %struct.L3Timer, %struct.L3Timer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load %struct.L3Timer*, %struct.L3Timer** %2, align 8
  %17 = getelementptr inbounds %struct.L3Timer, %struct.L3Timer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.L3Timer*, %struct.L3Timer** %2, align 8
  %20 = getelementptr inbounds %struct.L3Timer, %struct.L3Timer* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = call i32 %10(%struct.TYPE_5__* %15, i32 %18, %struct.TYPE_6__* %21)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
