; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_strip_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_strip.c_strip_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strip*)* @strip_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @strip_unlock(%struct.strip* %0) #0 {
  %2 = alloca %struct.strip*, align 8
  store %struct.strip* %0, %struct.strip** %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load i32, i32* @HZ, align 4
  %5 = mul nsw i32 1, %4
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %3, %6
  %8 = load %struct.strip*, %struct.strip** %2, align 8
  %9 = getelementptr inbounds %struct.strip, %struct.strip* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  %11 = load %struct.strip*, %struct.strip** %2, align 8
  %12 = getelementptr inbounds %struct.strip, %struct.strip* %11, i32 0, i32 1
  %13 = call i32 @add_timer(%struct.TYPE_2__* %12)
  %14 = load %struct.strip*, %struct.strip** %2, align 8
  %15 = getelementptr inbounds %struct.strip, %struct.strip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netif_wake_queue(i32 %16)
  ret void
}

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
