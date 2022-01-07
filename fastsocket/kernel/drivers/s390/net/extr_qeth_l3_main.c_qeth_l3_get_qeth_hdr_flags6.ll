; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_qeth_hdr_flags6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_get_qeth_hdr_flags6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QETH_HDR_PASSTHRU = common dso_local global i32 0, align 4
@QETH_HDR_IPV6 = common dso_local global i32 0, align 4
@RTN_MULTICAST = common dso_local global i32 0, align 4
@QETH_CAST_MULTICAST = common dso_local global i32 0, align 4
@RTN_ANYCAST = common dso_local global i32 0, align 4
@QETH_CAST_ANYCAST = common dso_local global i32 0, align 4
@RTN_BROADCAST = common dso_local global i32 0, align 4
@QETH_CAST_BROADCAST = common dso_local global i32 0, align 4
@QETH_CAST_UNICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @qeth_l3_get_qeth_hdr_flags6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_get_qeth_hdr_flags6(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @QETH_HDR_PASSTHRU, align 4
  %6 = load i32, i32* @QETH_HDR_IPV6, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @RTN_MULTICAST, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @QETH_CAST_MULTICAST, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @RTN_ANYCAST, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @QETH_CAST_ANYCAST, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @RTN_BROADCAST, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @QETH_CAST_BROADCAST, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @QETH_CAST_UNICAST, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %27, %19, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
