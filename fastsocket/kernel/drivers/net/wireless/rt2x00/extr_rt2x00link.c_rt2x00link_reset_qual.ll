; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00link_reset_qual.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00link_reset_qual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.link_qual }
%struct.link_qual = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*)* @rt2x00link_reset_qual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00link_reset_qual(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca %struct.rt2x00_dev*, align 8
  %3 = alloca %struct.link_qual*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %2, align 8
  %4 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %2, align 8
  %5 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.link_qual* %6, %struct.link_qual** %3, align 8
  %7 = load %struct.link_qual*, %struct.link_qual** %3, align 8
  %8 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.link_qual*, %struct.link_qual** %3, align 8
  %10 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.link_qual*, %struct.link_qual** %3, align 8
  %12 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.link_qual*, %struct.link_qual** %3, align 8
  %14 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
