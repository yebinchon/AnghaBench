; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rxq_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_be_rxq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64 }

@DB_RQ_RING_ID_MASK = common dso_local global i32 0, align 4
@DB_RQ_NUM_POSTED_SHIFT = common dso_local global i32 0, align 4
@DB_RQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, i32, i32)* @be_rxq_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rxq_notify(%struct.be_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DB_RQ_RING_ID_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* %7, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DB_RQ_NUM_POSTED_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %7, align 4
  %18 = call i32 (...) @wmb()
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DB_RQ_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i32 %19, i64 %24)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
