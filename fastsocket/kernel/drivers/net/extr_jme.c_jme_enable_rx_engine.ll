; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_enable_rx_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_enable_rx_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@JME_RXCS = common dso_local global i32 0, align 4
@RXCS_QUEUESEL_Q0 = common dso_local global i32 0, align 4
@JME_RXDBA_LO = common dso_local global i32 0, align 4
@JME_RXDBA_HI = common dso_local global i32 0, align 4
@JME_RXNDA = common dso_local global i32 0, align 4
@JME_RXQDC = common dso_local global i32 0, align 4
@RXCS_ENABLE = common dso_local global i32 0, align 4
@RXCS_QST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_enable_rx_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_enable_rx_engine(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %3 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %4 = load i32, i32* @JME_RXCS, align 4
  %5 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @RXCS_QUEUESEL_Q0, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @jwrite32(%struct.jme_adapter* %3, i32 %4, i32 %9)
  %11 = call i32 (...) @wmb()
  %12 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %13 = load i32, i32* @JME_RXDBA_LO, align 4
  %14 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, 4294967295
  %23 = trunc i64 %22 to i32
  %24 = call i32 @jwrite32(%struct.jme_adapter* %12, i32 %13, i32 %23)
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %26 = load i32, i32* @JME_RXDBA_HI, align 4
  %27 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = ashr i32 %33, 32
  %35 = call i32 @jwrite32(%struct.jme_adapter* %25, i32 %26, i32 %34)
  %36 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %37 = load i32, i32* @JME_RXNDA, align 4
  %38 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 4294967295
  %47 = trunc i64 %46 to i32
  %48 = call i32 @jwrite32(%struct.jme_adapter* %36, i32 %37, i32 %47)
  %49 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %50 = load i32, i32* @JME_RXQDC, align 4
  %51 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @jwrite32(%struct.jme_adapter* %49, i32 %50, i32 %53)
  %55 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @jme_set_multi(i32 %57)
  %59 = call i32 (...) @wmb()
  %60 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %61 = load i32, i32* @JME_RXCS, align 4
  %62 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RXCS_QUEUESEL_Q0, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @RXCS_ENABLE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @RXCS_QST, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @jwrite32(%struct.jme_adapter* %60, i32 %61, i32 %70)
  ret void
}

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @jme_set_multi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
