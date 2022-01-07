; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_ethflow_to_l3proto.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_ethflow_to_l3proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPPROTO_TCP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IPPROTO_SCTP = common dso_local global i32 0, align 4
@IPPROTO_AH = common dso_local global i32 0, align 4
@IPPROTO_ESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @niu_ethflow_to_l3proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_ethflow_to_l3proto(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %21 [
    i32 131, label %6
    i32 130, label %6
    i32 129, label %9
    i32 128, label %9
    i32 133, label %12
    i32 132, label %12
    i32 137, label %15
    i32 136, label %15
    i32 135, label %18
    i32 134, label %18
  ]

6:                                                ; preds = %2, %2
  %7 = load i32, i32* @IPPROTO_TCP, align 4
  %8 = load i32*, i32** %4, align 8
  store i32 %7, i32* %8, align 4
  br label %23

9:                                                ; preds = %2, %2
  %10 = load i32, i32* @IPPROTO_UDP, align 4
  %11 = load i32*, i32** %4, align 8
  store i32 %10, i32* %11, align 4
  br label %23

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @IPPROTO_SCTP, align 4
  %14 = load i32*, i32** %4, align 8
  store i32 %13, i32* %14, align 4
  br label %23

15:                                               ; preds = %2, %2
  %16 = load i32, i32* @IPPROTO_AH, align 4
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %23

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @IPPROTO_ESP, align 4
  %20 = load i32*, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32*, i32** %4, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18, %15, %12, %9, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
