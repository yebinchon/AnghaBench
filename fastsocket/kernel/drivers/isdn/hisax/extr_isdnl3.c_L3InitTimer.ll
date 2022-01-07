; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_L3InitTimer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl3.c_L3InitTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32 }
%struct.L3Timer = type { %struct.TYPE_2__, %struct.l3_process* }
%struct.TYPE_2__ = type { i64, i8* }

@L3ExpireTimer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @L3InitTimer(%struct.l3_process* %0, %struct.L3Timer* %1) #0 {
  %3 = alloca %struct.l3_process*, align 8
  %4 = alloca %struct.L3Timer*, align 8
  store %struct.l3_process* %0, %struct.l3_process** %3, align 8
  store %struct.L3Timer* %1, %struct.L3Timer** %4, align 8
  %5 = load %struct.l3_process*, %struct.l3_process** %3, align 8
  %6 = load %struct.L3Timer*, %struct.L3Timer** %4, align 8
  %7 = getelementptr inbounds %struct.L3Timer, %struct.L3Timer* %6, i32 0, i32 1
  store %struct.l3_process* %5, %struct.l3_process** %7, align 8
  %8 = load i64, i64* @L3ExpireTimer, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.L3Timer*, %struct.L3Timer** %4, align 8
  %11 = getelementptr inbounds %struct.L3Timer, %struct.L3Timer* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load %struct.L3Timer*, %struct.L3Timer** %4, align 8
  %14 = ptrtoint %struct.L3Timer* %13 to i64
  %15 = load %struct.L3Timer*, %struct.L3Timer** %4, align 8
  %16 = getelementptr inbounds %struct.L3Timer, %struct.L3Timer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.L3Timer*, %struct.L3Timer** %4, align 8
  %19 = getelementptr inbounds %struct.L3Timer, %struct.L3Timer* %18, i32 0, i32 0
  %20 = call i32 @init_timer(%struct.TYPE_2__* %19)
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
