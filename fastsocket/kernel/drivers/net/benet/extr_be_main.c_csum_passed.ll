; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_csum_passed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_csum_passed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_compl_info = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_rx_compl_info*)* @csum_passed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csum_passed(%struct.be_rx_compl_info* %0) #0 {
  %2 = alloca %struct.be_rx_compl_info*, align 8
  store %struct.be_rx_compl_info* %0, %struct.be_rx_compl_info** %2, align 8
  %3 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %2, align 8
  %4 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %2, align 8
  %9 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %7, %1
  %13 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %2, align 8
  %14 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %2, align 8
  %19 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %2, align 8
  %24 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  br label %29

29:                                               ; preds = %27, %12, %7
  %30 = phi i1 [ false, %12 ], [ false, %7 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
