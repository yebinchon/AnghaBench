; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_io.h_wl1251_read_elp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_io.h_wl1251_read_elp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wl1251*, i32, i32*, i32)*, i32 (%struct.wl1251*, i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1251*, i32)* @wl1251_read_elp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_read_elp(%struct.wl1251* %0, i32 %1) #0 {
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %7 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (%struct.wl1251*, i32, i32*)*, i32 (%struct.wl1251*, i32, i32*)** %9, align 8
  %11 = icmp ne i32 (%struct.wl1251*, i32, i32*)* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %14 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (%struct.wl1251*, i32, i32*)*, i32 (%struct.wl1251*, i32, i32*)** %16, align 8
  %18 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 %17(%struct.wl1251* %18, i32 %19, i32* %5)
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %23 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.wl1251*, i32, i32*, i32)*, i32 (%struct.wl1251*, i32, i32*, i32)** %25, align 8
  %27 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 %26(%struct.wl1251* %27, i32 %28, i32* %5, i32 4)
  br label %30

30:                                               ; preds = %21, %12
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
