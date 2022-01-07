; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_interrupt_masks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_interrupt_masks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@AR_INTR_SYNC_DEFAULT = common dso_local global i32 0, align 4
@AR_IMR_TXERR = common dso_local global i32 0, align 4
@AR_IMR_TXURN = common dso_local global i32 0, align 4
@AR_IMR_RXERR = common dso_local global i32 0, align 4
@AR_IMR_RXORN = common dso_local global i32 0, align 4
@AR_IMR_BCNMISC = common dso_local global i32 0, align 4
@AR_INTR_SYNC_HOST1_FATAL = common dso_local global i32 0, align 4
@AR_IMR_RXOK_HP = common dso_local global i32 0, align 4
@AR_IMR_RXINTM = common dso_local global i32 0, align 4
@AR_IMR_RXMINTR = common dso_local global i32 0, align 4
@AR_IMR_RXOK_LP = common dso_local global i32 0, align 4
@AR_IMR_RXOK = common dso_local global i32 0, align 4
@AR_IMR_TXINTM = common dso_local global i32 0, align 4
@AR_IMR_TXMINTR = common dso_local global i32 0, align 4
@AR_IMR_TXOK = common dso_local global i32 0, align 4
@AR_IMR = common dso_local global i32 0, align 4
@AR_IMR_S2_GTT = common dso_local global i32 0, align 4
@AR_IMR_S2 = common dso_local global i32 0, align 4
@AR_INTR_SYNC_CAUSE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_SYNC_MASK = common dso_local global i32 0, align 4
@AR_INTR_PRIO_ASYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_PRIO_ASYNC_MASK = common dso_local global i32 0, align 4
@AR_INTR_PRIO_SYNC_ENABLE = common dso_local global i32 0, align 4
@AR_INTR_PRIO_SYNC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ath9k_hw_init_interrupt_masks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_interrupt_masks(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @AR_INTR_SYNC_DEFAULT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @AR_IMR_TXERR, align 4
  %9 = load i32, i32* @AR_IMR_TXURN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @AR_IMR_RXERR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @AR_IMR_RXORN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AR_IMR_BCNMISC, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %18 = call i64 @AR_SREV_9340(%struct.ath_hw* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %22 = call i64 @AR_SREV_9550(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %2
  %25 = load i32, i32* @AR_INTR_SYNC_HOST1_FATAL, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %31 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load i32, i32* @AR_IMR_RXOK_HP, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @AR_IMR_RXINTM, align 4
  %44 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load i32, i32* @AR_IMR_RXOK_LP, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %48, %42
  br label %70

53:                                               ; preds = %29
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* @AR_IMR_RXINTM, align 4
  %61 = load i32, i32* @AR_IMR_RXMINTR, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %69

65:                                               ; preds = %53
  %66 = load i32, i32* @AR_IMR_RXOK, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69, %52
  %71 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32, i32* @AR_IMR_TXINTM, align 4
  %78 = load i32, i32* @AR_IMR_TXMINTR, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %86

82:                                               ; preds = %70
  %83 = load i32, i32* @AR_IMR_TXOK, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %88 = call i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw* %87)
  %89 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %90 = load i32, i32* @AR_IMR, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @REG_WRITE(%struct.ath_hw* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @AR_IMR_S2_GTT, align 4
  %94 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %95 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %99 = load i32, i32* @AR_IMR_S2, align 4
  %100 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %101 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @REG_WRITE(%struct.ath_hw* %98, i32 %99, i32 %102)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %105 = call i32 @AR_SREV_9100(%struct.ath_hw* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %86
  %108 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %109 = load i32, i32* @AR_INTR_SYNC_CAUSE, align 4
  %110 = call i32 @REG_WRITE(%struct.ath_hw* %108, i32 %109, i32 -1)
  %111 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %112 = load i32, i32* @AR_INTR_SYNC_ENABLE, align 4
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @REG_WRITE(%struct.ath_hw* %111, i32 %112, i32 %113)
  %115 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %116 = load i32, i32* @AR_INTR_SYNC_MASK, align 4
  %117 = call i32 @REG_WRITE(%struct.ath_hw* %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %107, %86
  %119 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %120 = call i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw* %119)
  %121 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %122 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %126 = load i32, i32* @AR_INTR_PRIO_ASYNC_ENABLE, align 4
  %127 = call i32 @REG_WRITE(%struct.ath_hw* %125, i32 %126, i32 0)
  %128 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %129 = load i32, i32* @AR_INTR_PRIO_ASYNC_MASK, align 4
  %130 = call i32 @REG_WRITE(%struct.ath_hw* %128, i32 %129, i32 0)
  %131 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %132 = load i32, i32* @AR_INTR_PRIO_SYNC_ENABLE, align 4
  %133 = call i32 @REG_WRITE(%struct.ath_hw* %131, i32 %132, i32 0)
  %134 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %135 = load i32, i32* @AR_INTR_PRIO_SYNC_MASK, align 4
  %136 = call i32 @REG_WRITE(%struct.ath_hw* %134, i32 %135, i32 0)
  br label %137

137:                                              ; preds = %124, %118
  ret void
}

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ENABLE_REGWRITE_BUFFER(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @REGWRITE_BUFFER_FLUSH(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
