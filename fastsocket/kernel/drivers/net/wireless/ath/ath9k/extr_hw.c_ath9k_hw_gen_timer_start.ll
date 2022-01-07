; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gen_timer_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_gen_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ath_hw = type { %struct.ath_gen_timer_table }
%struct.ath_gen_timer_table = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ath_gen_timer = type { i64 }

@HWTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"current tsf %x period %x timer_next %x\0A\00", align 1
@gen_tmr_configuration = common dso_local global %struct.TYPE_4__* null, align 8
@AR_GEN_TIMER_BANK_1_LEN = common dso_local global i64 0, align 8
@AR_MAC_PCU_GEN_TIMER_TSF_SEL = common dso_local global i32 0, align 4
@AR_IMR_S5 = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_THRESH = common dso_local global i32 0, align 4
@AR_IMR_S5_GENTIMER_TRIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_hw_gen_timer_start(%struct.ath_hw* %0, %struct.ath_gen_timer* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca %struct.ath_gen_timer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ath_gen_timer_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store %struct.ath_gen_timer* %1, %struct.ath_gen_timer** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  store %struct.ath_gen_timer_table* %13, %struct.ath_gen_timer_table** %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %20 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %9, align 8
  %23 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @set_bit(i64 %21, i32* %24)
  %26 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %27 = call i64 @ath9k_hw_gettsf32(%struct.ath_hw* %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %11, align 8
  %31 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %32 = call i32 @ath9k_hw_common(%struct.ath_hw* %31)
  %33 = load i32, i32* @HWTIMER, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @ath_dbg(i32 %32, i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35, i64 %36)
  %38 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gen_tmr_configuration, align 8
  %40 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %41 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %11, align 8
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %38, i32 %45, i64 %46)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gen_tmr_configuration, align 8
  %50 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %51 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @REG_WRITE(%struct.ath_hw* %48, i32 %55, i64 %56)
  %58 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gen_tmr_configuration, align 8
  %60 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %61 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gen_tmr_configuration, align 8
  %67 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %68 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @REG_SET_BIT(%struct.ath_hw* %58, i32 %65, i32 %72)
  %74 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %75 = call i64 @AR_SREV_9462(%struct.ath_hw* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %4
  %78 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %79 = call i64 @AR_SREV_9565(%struct.ath_hw* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %77, %4
  %82 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %83 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @AR_GEN_TIMER_BANK_1_LEN, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %89 = load i32, i32* @AR_MAC_PCU_GEN_TIMER_TSF_SEL, align 4
  %90 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %91 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = shl i32 1, %93
  %95 = call i32 @REG_CLR_BIT(%struct.ath_hw* %88, i32 %89, i32 %94)
  br label %105

96:                                               ; preds = %81
  %97 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %98 = load i32, i32* @AR_MAC_PCU_GEN_TIMER_TSF_SEL, align 4
  %99 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %100 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = shl i32 1, %102
  %104 = call i32 @REG_SET_BIT(%struct.ath_hw* %97, i32 %98, i32 %103)
  br label %105

105:                                              ; preds = %96, %87
  br label %106

106:                                              ; preds = %105, %77
  %107 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %108 = load i32, i32* @AR_IMR_S5, align 4
  %109 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %110 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 @AR_GENTMR_BIT(i32 %112)
  %114 = load i32, i32* @AR_IMR_S5_GENTIMER_THRESH, align 4
  %115 = call i32 @SM(i32 %113, i32 %114)
  %116 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %6, align 8
  %117 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @AR_GENTMR_BIT(i32 %119)
  %121 = load i32, i32* @AR_IMR_S5_GENTIMER_TRIG, align 4
  %122 = call i32 @SM(i32 %120, i32 %121)
  %123 = or i32 %115, %122
  %124 = call i32 @REG_SET_BIT(%struct.ath_hw* %107, i32 %108, i32 %123)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i64 @ath9k_hw_gettsf32(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(i32, i32, i8*, i64, i64, i64) #1

declare dso_local i32 @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i64) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @REG_CLR_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @AR_GENTMR_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
