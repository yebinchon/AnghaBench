; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_reclaim_completed_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_sge.c_reclaim_completed_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge = type { i32 }
%struct.cmdQ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"reclaim_completed_tx processed:%d cleaned:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge*, %struct.cmdQ*)* @reclaim_completed_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reclaim_completed_tx(%struct.sge* %0, %struct.cmdQ* %1) #0 {
  %3 = alloca %struct.sge*, align 8
  %4 = alloca %struct.cmdQ*, align 8
  %5 = alloca i32, align 4
  store %struct.sge* %0, %struct.sge** %3, align 8
  store %struct.cmdQ* %1, %struct.cmdQ** %4, align 8
  %6 = load %struct.cmdQ*, %struct.cmdQ** %4, align 8
  %7 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.cmdQ*, %struct.cmdQ** %4, align 8
  %10 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.cmdQ*, %struct.cmdQ** %4, align 8
  %17 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cmdQ*, %struct.cmdQ** %4, align 8
  %20 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.sge*, %struct.sge** %3, align 8
  %24 = load %struct.cmdQ*, %struct.cmdQ** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @free_cmdQ_buffers(%struct.sge* %23, %struct.cmdQ* %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.cmdQ*, %struct.cmdQ** %4, align 8
  %29 = getelementptr inbounds %struct.cmdQ, %struct.cmdQ* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %15, %2
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @free_cmdQ_buffers(%struct.sge*, %struct.cmdQ*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
