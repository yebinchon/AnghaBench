; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_cee.c_bfa_cee_reset_stats_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_cee.c_bfa_cee_reset_stats_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_cee*, i32)* @bfa_cee_reset_stats_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_cee_reset_stats_isr(%struct.bfa_cee* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_cee*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_cee* %0, %struct.bfa_cee** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = icmp ne i32 (i32, i32)* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = load %struct.bfa_cee*, %struct.bfa_cee** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %19(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %15, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
