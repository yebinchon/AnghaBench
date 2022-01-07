; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_reclaim_completed_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_sge.c_reclaim_completed_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.sge_txq*, i32)* @reclaim_completed_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reclaim_completed_tx(%struct.adapter* %0, %struct.sge_txq* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.sge_txq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %9 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %12 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %10, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @min(i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @free_tx_desc(%struct.adapter* %21, %struct.sge_txq* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %27 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %32 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %20, %3
  %36 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %37 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sge_txq*, %struct.sge_txq** %5, align 8
  %40 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %38, %41
  ret i32 %42
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @free_tx_desc(%struct.adapter*, %struct.sge_txq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
