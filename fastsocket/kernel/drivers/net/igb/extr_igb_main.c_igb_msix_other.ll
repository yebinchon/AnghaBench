; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_msix_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_msix_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, i32, i32, %struct.TYPE_3__, i32, %struct.e1000_hw }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@E1000_ICR = common dso_local global i32 0, align 4
@E1000_ICR_DRSTA = common dso_local global i32 0, align 4
@E1000_ICR_DOUTSYNC = common dso_local global i32 0, align 4
@E1000_ICR_VMMB = common dso_local global i32 0, align 4
@E1000_ICR_LSC = common dso_local global i32 0, align 4
@__IGB_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@E1000_ICR_TS = common dso_local global i32 0, align 4
@E1000_TSICR = common dso_local global i32 0, align 4
@E1000_TSICR_TXTS = common dso_local global i32 0, align 4
@E1000_EIMS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igb_msix_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_msix_other(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.igb_adapter*
  store %struct.igb_adapter* %10, %struct.igb_adapter** %5, align 8
  %11 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %11, i32 0, i32 6
  store %struct.e1000_hw* %12, %struct.e1000_hw** %6, align 8
  %13 = load i32, i32* @E1000_ICR, align 4
  %14 = call i32 @rd32(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @E1000_ICR_DRSTA, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 5
  %22 = call i32 @schedule_work(i32* %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @E1000_ICR_DOUTSYNC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %35 = call i32 @igb_check_wvbr(%struct.igb_adapter* %34)
  br label %36

36:                                               ; preds = %28, %23
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @E1000_ICR_VMMB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %43 = call i32 @igb_msg_task(%struct.igb_adapter* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @E1000_ICR_LSC, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @__IGB_DOWN, align 4
  %54 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %54, i32 0, i32 3
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %60 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %59, i32 0, i32 2
  %61 = load i64, i64* @jiffies, align 8
  %62 = add nsw i64 %61, 1
  %63 = call i32 @mod_timer(i32* %60, i64 %62)
  br label %64

64:                                               ; preds = %58, %49
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @E1000_ICR_TS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i32, i32* @E1000_TSICR, align 4
  %72 = call i32 @rd32(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @E1000_TSICR_TXTS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = load i32, i32* @E1000_TSICR, align 4
  %79 = load i32, i32* @E1000_TSICR_TXTS, align 4
  %80 = call i32 @wr32(i32 %78, i32 %79)
  %81 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %82 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %81, i32 0, i32 1
  %83 = call i32 @schedule_work(i32* %82)
  br label %84

84:                                               ; preds = %77, %70
  br label %85

85:                                               ; preds = %84, %65
  %86 = load i32, i32* @E1000_EIMS, align 4
  %87 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %88 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @wr32(i32 %86, i32 %89)
  %91 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %91
}

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @igb_check_wvbr(%struct.igb_adapter*) #1

declare dso_local i32 @igb_msg_task(%struct.igb_adapter*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @wr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
