; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_mtu_is_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_mtu_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_mtu_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_mtu_is_valid(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %7 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %35 [
    i32 132, label %10
    i32 131, label %10
    i32 129, label %10
    i32 133, label %19
    i32 130, label %34
    i32 128, label %34
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 576
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = icmp sle i32 %14, 61440
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 576
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %25 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 4096
  %29 = sub nsw i32 %28, 32
  %30 = icmp sle i32 %23, %29
  br label %31

31:                                               ; preds = %22, %19
  %32 = phi i1 [ false, %19 ], [ %30, %22 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %2, %2
  br label %35

35:                                               ; preds = %2, %34
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %31, %16
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
