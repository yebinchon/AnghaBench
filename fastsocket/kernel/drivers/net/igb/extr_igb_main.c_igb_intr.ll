; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, %struct.TYPE_3__, i32, %struct.e1000_hw, %struct.igb_q_vector** }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.igb_q_vector = type { i32 }

@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICR_INT_ASSERTED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igb_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.igb_q_vector*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.igb_adapter*
  store %struct.igb_adapter* %12, %struct.igb_adapter** %6, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 6
  %15 = load %struct.igb_q_vector**, %struct.igb_q_vector*** %14, align 8
  %16 = getelementptr inbounds %struct.igb_q_vector*, %struct.igb_q_vector** %15, i64 0
  %17 = load %struct.igb_q_vector*, %struct.igb_q_vector** %16, align 8
  store %struct.igb_q_vector* %17, %struct.igb_q_vector** %7, align 8
  %18 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %18, i32 0, i32 5
  store %struct.e1000_hw* %19, %struct.e1000_hw** %8, align 8
  %20 = load i32, i32* @E1000_ICR, align 4
  %21 = call i32 @rd32(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @E1000_ICR_INT_ASSERTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %98

28:                                               ; preds = %2
  %29 = load %struct.igb_q_vector*, %struct.igb_q_vector** %7, align 8
  %30 = call i32 @igb_write_itr(%struct.igb_q_vector* %29)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @E1000_ICR_DRSTA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %36, i32 0, i32 4
  %38 = call i32 @schedule_work(i32* %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @E1000_ICR_DOUTSYNC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %46 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @E1000_ICR_RXSEQ, align 4
  %53 = load i32, i32* @E1000_ICR_LSC, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* @__IGB_DOWN, align 4
  %62 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %62, i32 0, i32 2
  %64 = call i32 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %57
  %67 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %67, i32 0, i32 1
  %69 = load i64, i64* @jiffies, align 8
  %70 = add nsw i64 %69, 1
  %71 = call i32 @mod_timer(i32* %68, i64 %70)
  br label %72

72:                                               ; preds = %66, %57
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @E1000_ICR_TS, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %73
  %79 = load i32, i32* @E1000_TSICR, align 4
  %80 = call i32 @rd32(i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @E1000_TSICR_TXTS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* @E1000_TSICR, align 4
  %87 = load i32, i32* @E1000_TSICR_TXTS, align 4
  %88 = call i32 @wr32(i32 %86, i32 %87)
  %89 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %89, i32 0, i32 0
  %91 = call i32 @schedule_work(i32* %90)
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.igb_q_vector*, %struct.igb_q_vector** %7, align 8
  %95 = getelementptr inbounds %struct.igb_q_vector, %struct.igb_q_vector* %94, i32 0, i32 0
  %96 = call i32 @napi_schedule(i32* %95)
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %93, %26
  %99 = load i32, i32* %3, align 4
  ret i32 %99
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
