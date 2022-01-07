; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_usecs2ticks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_usecs2ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFAR_GBIT_TIME = common dso_local global i32 0, align 4
@GFAR_100_TIME = common dso_local global i32 0, align 4
@GFAR_10_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_private*, i32)* @gfar_usecs2ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_usecs2ticks(%struct.gfar_private* %0, i32 %1) #0 {
  %3 = alloca %struct.gfar_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gfar_private* %0, %struct.gfar_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gfar_private*, %struct.gfar_private** %3, align 8
  %7 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %16 [
    i32 128, label %11
    i32 129, label %13
    i32 130, label %15
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @GFAR_GBIT_TIME, align 4
  store i32 %12, i32* %5, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @GFAR_100_TIME, align 4
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %2, %15
  %17 = load i32, i32* @GFAR_10_TIME, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %16, %13, %11
  %19 = load i32, i32* %4, align 4
  %20 = mul i32 %19, 1000
  %21 = load i32, i32* %5, align 4
  %22 = add i32 %20, %21
  %23 = sub i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = udiv i32 %23, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
