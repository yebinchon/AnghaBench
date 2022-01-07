; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_tx_stats_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_tx_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_tx_obj = type { i32 }
%struct.be_tx_stats = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_tx_obj*, i32, i32, i32, i32)* @be_tx_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_tx_stats_update(%struct.be_tx_obj* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.be_tx_obj*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.be_tx_stats*, align 8
  store %struct.be_tx_obj* %0, %struct.be_tx_obj** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.be_tx_obj*, %struct.be_tx_obj** %6, align 8
  %13 = call %struct.be_tx_stats* @tx_stats(%struct.be_tx_obj* %12)
  store %struct.be_tx_stats* %13, %struct.be_tx_stats** %11, align 8
  %14 = load %struct.be_tx_stats*, %struct.be_tx_stats** %11, align 8
  %15 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.be_tx_stats*, %struct.be_tx_stats** %11, align 8
  %20 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.be_tx_stats*, %struct.be_tx_stats** %11, align 8
  %25 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  br label %33

32:                                               ; preds = %5
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 1, %32 ]
  %35 = load %struct.be_tx_stats*, %struct.be_tx_stats** %11, align 8
  %36 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.be_tx_stats*, %struct.be_tx_stats** %11, align 8
  %43 = getelementptr inbounds %struct.be_tx_stats, %struct.be_tx_stats* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %41, %33
  ret void
}

declare dso_local %struct.be_tx_stats* @tx_stats(%struct.be_tx_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
