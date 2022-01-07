; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gen_timer_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gen_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.ath_hw = type { %struct.ath_gen_timer_table }
%struct.ath_gen_timer_table = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ath_gen_timer = type { i64 }

@AR_FIRST_NDP_TIMER = common dso_local global i64 0, align 8
@ATH_MAX_GEN_TIMER = common dso_local global i64 0, align 8
@gen_tmr_configuration = common dso_local global %struct.TYPE_4__* null, align 8
@AR_GEN_TIMER_BANK_1_LEN = common dso_local global i64 0, align 8
@AR_MAC_PCU_GEN_TIMER_TSF_SEL = common dso_local global i32 0, align 4
@AR_IMR_S5 = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_THRESH = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_TRIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_gen_timer_stop(%struct.ath_hw* %0, %struct.ath_gen_timer* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath_gen_timer*, align 8
  %5 = alloca %struct.ath_gen_timer_table*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath_gen_timer* %1, %struct.ath_gen_timer** %4, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  store %struct.ath_gen_timer_table* %7, %struct.ath_gen_timer_table** %5, align 8
  %8 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %9 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AR_FIRST_NDP_TIMER, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %15 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ATH_MAX_GEN_TIMER, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  br label %87

20:                                               ; preds = %13
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gen_tmr_configuration, align 8
  %23 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %24 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gen_tmr_configuration, align 8
  %30 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %31 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @REG_CLR_BIT(%struct.ath_hw* %21, i32 %28, i32 %35)
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = call i64 @AR_SREV_9462(%struct.ath_hw* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %20
  %41 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %42 = call i64 @AR_SREV_9565(%struct.ath_hw* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %40, %20
  %45 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %46 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AR_GEN_TIMER_BANK_1_LEN, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %52 = load i32, i32* @AR_MAC_PCU_GEN_TIMER_TSF_SEL, align 4
  %53 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %54 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 1, %56
  %58 = call i32 @REG_CLR_BIT(%struct.ath_hw* %51, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %50, %44
  br label %60

60:                                               ; preds = %59, %40
  %61 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %62 = load i32, i32* @AR_IMR_S5, align 4
  %63 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %64 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @AR_GENTMR_BIT(i32 %66)
  %68 = load i32, i32* @AR_IMR_S5_GENTIMER_THRESH, align 4
  %69 = call i32 @SM(i32 %67, i32 %68)
  %70 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %71 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @AR_GENTMR_BIT(i32 %73)
  %75 = load i32, i32* @AR_IMR_S5_GENTIMER_TRIG, align 4
  %76 = call i32 @SM(i32 %74, i32 %75)
  %77 = or i32 %69, %76
  %78 = call i32 @REG_CLR_BIT(%struct.ath_hw* %61, i32 %62, i32 %77)
  %79 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %80 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %5, align 8
  %84 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @clear_bit(i32 %82, i32* %85)
  br label %87

87:                                               ; preds = %60, %19
  ret void
}

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @AR_GENTMR_BIT(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
