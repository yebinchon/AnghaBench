; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_ambassador.c_tx_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_ambassador.c_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"tx_complete %p %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*)* @tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_complete(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_18__* @bus_to_virt(i32 %9)
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  %14 = load i32, i32* @DBG_FLOW, align 4
  %15 = load i32, i32* @DBG_TX, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = call i32 @PRINTD(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %17, %struct.TYPE_19__* %18)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call %struct.TYPE_14__* @ATM_SKB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %29 = call i32 @kfree(%struct.TYPE_18__* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @amb_kfree_skb(%struct.sk_buff* %30)
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  ret void
}

declare dso_local %struct.TYPE_18__* @bus_to_virt(i32) #1

declare dso_local i32 @PRINTD(i32, i8*, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_14__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @kfree(%struct.TYPE_18__*) #1

declare dso_local i32 @amb_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
