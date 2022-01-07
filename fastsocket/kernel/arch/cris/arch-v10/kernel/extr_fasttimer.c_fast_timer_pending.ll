; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_fasttimer.c_fast_timer_pending.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v10/kernel/extr_fasttimer.c_fast_timer_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fast_timer = type { i32*, i32* }

@fast_timer_list = common dso_local global %struct.fast_timer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fast_timer*)* @fast_timer_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_timer_pending(%struct.fast_timer* %0) #0 {
  %2 = alloca %struct.fast_timer*, align 8
  store %struct.fast_timer* %0, %struct.fast_timer** %2, align 8
  %3 = load %struct.fast_timer*, %struct.fast_timer** %2, align 8
  %4 = getelementptr inbounds %struct.fast_timer, %struct.fast_timer* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load %struct.fast_timer*, %struct.fast_timer** %2, align 8
  %9 = getelementptr inbounds %struct.fast_timer, %struct.fast_timer* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = load %struct.fast_timer*, %struct.fast_timer** %2, align 8
  %14 = load %struct.fast_timer*, %struct.fast_timer** @fast_timer_list, align 8
  %15 = icmp eq %struct.fast_timer* %13, %14
  br label %16

16:                                               ; preds = %12, %7, %1
  %17 = phi i1 [ true, %7 ], [ true, %1 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
