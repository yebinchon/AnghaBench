; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_init_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_de2104x.c_de_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DE_TX_RING_SIZE = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*)* @de_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_init_rings(%struct.de_private* %0) #0 {
  %2 = alloca %struct.de_private*, align 8
  store %struct.de_private* %0, %struct.de_private** %2, align 8
  %3 = load %struct.de_private*, %struct.de_private** %2, align 8
  %4 = getelementptr inbounds %struct.de_private, %struct.de_private* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = load i32, i32* @DE_TX_RING_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = call i32 @memset(%struct.TYPE_2__* %5, i32 0, i32 %9)
  %11 = load i32, i32* @RingEnd, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  %13 = load %struct.de_private*, %struct.de_private** %2, align 8
  %14 = getelementptr inbounds %struct.de_private, %struct.de_private* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* @DE_TX_RING_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %12, i32* %20, align 4
  %21 = load %struct.de_private*, %struct.de_private** %2, align 8
  %22 = getelementptr inbounds %struct.de_private, %struct.de_private* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.de_private*, %struct.de_private** %2, align 8
  %24 = getelementptr inbounds %struct.de_private, %struct.de_private* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.de_private*, %struct.de_private** %2, align 8
  %26 = getelementptr inbounds %struct.de_private, %struct.de_private* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.de_private*, %struct.de_private** %2, align 8
  %28 = call i32 @de_refill_rx(%struct.de_private* %27)
  ret i32 %28
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @de_refill_rx(%struct.de_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
