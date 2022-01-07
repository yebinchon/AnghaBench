; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_intr_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_intr_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, %struct.TYPE_3__, i32, %struct.e1000_hw, %struct.igb_q_vector** }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.igb_q_vector = type { i32 }

@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICR_DRSTA = common dso_local global i32 0, align 4
@E1000_ICR_DOUTSYNC = common dso_local global i32 0, align 4
@E1000_ICR_RXSEQ = common dso_local global i32 0, align 4
@E1000_ICR_LSC = common dso_local global i32 0, align 4
@__IGB_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@E1000_ICR_TS = common dso_local global i32 0, align 4
@E1000_TSICR = common dso_local global i32 0, align 4
@E1000_TSICR_TXTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igb_intr_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_intr_msi(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.igb_q_vector*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.igb_adapter*
  store %struct.igb_adapter* %11, %struct.igb_adapter** %5, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 6
  %14 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %13, align 8
  %15 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %14, i64 0
  %16 = load %struct.igb_q_vector*, %struct.igb_q_vector** %15, align 8
  store %struct.igb_q_vector* %16, %struct.igb_q_vector** %6, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 5
  store %struct.e1000_hw* %18, %struct.e1000_hw** %7, align 8
  %19 = load i32, i32* @E1000_ICR, align 4
  %20 = call i32 @rd32(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.igb_q_vector*, %struct.igb_q_vector** %6, align 8
  %22 = call i32 @igb_write_itr(%struct.igb_q_vector* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @E1000_ICR_DRSTA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %29 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %28, i32 0, i32 4
  %30 = call i32 @schedule_work(i32* %29)
  br label %31

31:                                               ; preds = %27, %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @E1000_ICR_DOUTSYNC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @E1000_ICR_RXSEQ, align 4
  %45 = load i32, i32* @E1000_ICR_LSC, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @__IGB_DOWN, align 4
  %54 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %54, i32 0, i32 2
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %59, i32 0, i32 1
  %61 = load i64, i64* @jiffies, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i32 @mod_timer(i32* %60, i64 %62)
  br label %64

64:                                               ; preds = %58, %49
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @E1000_ICR_TS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i32, i32* @E1000_TSICR, align 4
  %72 = call i32 @rd32(i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @E1000_TSICR_TXTS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i32, i32* @E1000_TSICR, align 4
  %79 = load i32, i32* @E1000_TSICR_TXTS, align 4
  %80 = call i32 @wr32(i32 %78, i32 %79)
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %82 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %81, i32 0, i32 0
  %83 = call i32 @schedule_work(i32* %82)
  br label %84

84:                                               ; preds = %77, %70
  br label %85

85:                                               ; preds = %84, %65
  %86 = load %struct.igb_q_vector*, %struct.igb_q_vector** %6, align 8
  %87 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %86, i32 0, i32 0
  %88 = call i32 @napi_schedule(i32* %87)
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %89
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @igb_write_itr(%struct.igb_q_vector*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
