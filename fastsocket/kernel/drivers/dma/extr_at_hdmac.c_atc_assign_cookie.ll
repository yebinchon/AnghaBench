; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_assign_cookie.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_at_hdmac.c_atc_assign_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_dma_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.at_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at_dma_chan*, %struct.at_desc*)* @atc_assign_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @atc_assign_cookie(%struct.at_dma_chan* %0, %struct.at_desc* %1) #0 {
  %3 = alloca %struct.at_dma_chan*, align 8
  %4 = alloca %struct.at_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.at_dma_chan* %0, %struct.at_dma_chan** %3, align 8
  store %struct.at_desc* %1, %struct.at_desc** %4, align 8
  %6 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %5, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 1, i64* %5, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.at_dma_chan*, %struct.at_dma_chan** %3, align 8
  %17 = getelementptr inbounds %struct.at_dma_chan, %struct.at_dma_chan* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.at_desc*, %struct.at_desc** %4, align 8
  %21 = getelementptr inbounds %struct.at_desc, %struct.at_desc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = load i64, i64* %5, align 8
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
