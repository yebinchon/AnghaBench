; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_phy_con_resource_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_smt.c_phy_con_resource_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, i32)* @phy_con_resource_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_con_resource_index(%struct.s_smc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s_smc*, align 8
  %5 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.s_smc*, %struct.s_smc** %4, align 8
  %7 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %35 [
    i32 128, label %10
    i32 132, label %16
    i32 130, label %22
    i32 129, label %28
    i32 131, label %34
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PA, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 3, i32 2
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PA, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 3
  store i32 %21, i32* %3, align 4
  br label %37

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PA, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 3, i32 1
  store i32 %27, i32* %3, align 4
  br label %37

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @PA, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 2, i32 3
  store i32 %33, i32* %3, align 4
  br label %37

34:                                               ; preds = %2
  store i32 2, i32* %3, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %34, %28, %22, %16, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
