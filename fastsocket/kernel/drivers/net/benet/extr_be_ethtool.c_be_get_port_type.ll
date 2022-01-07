; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_port_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_ethtool.c_be_get_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORT_TP = common dso_local global i32 0, align 4
@PORT_DA = common dso_local global i32 0, align 4
@PORT_FIBRE = common dso_local global i32 0, align 4
@PORT_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @be_get_port_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_port_type(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %22 [
    i32 133, label %7
    i32 132, label %7
    i32 129, label %7
    i32 130, label %9
    i32 128, label %18
    i32 131, label %18
    i32 134, label %20
  ]

7:                                                ; preds = %2, %2, %2
  %8 = load i32, i32* @PORT_TP, align 4
  store i32 %8, i32* %5, align 4
  br label %24

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @PORT_DA, align 4
  br label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @PORT_FIBRE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %5, align 4
  br label %24

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @PORT_FIBRE, align 4
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @PORT_TP, align 4
  store i32 %21, i32* %5, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @PORT_OTHER, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %22, %20, %18, %16, %7
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
