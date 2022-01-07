; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@TCR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@HDLC_FLAG_AUTO_RTS = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@IRQ_TXDATA = common dso_local global i32 0, align 4
@IRQ_TXUNDER = common dso_local global i16 0, align 2
@IRQ_TXIDLE = common dso_local global i16 0, align 2
@SSR = common dso_local global i32 0, align 4
@TDDAR = common dso_local global i32 0, align 4
@TDCSR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @tx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_start(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %3 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %4 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %9 = load i32, i32* @TCR, align 4
  %10 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %11 = load i32, i32* @TCR, align 4
  %12 = call i32 @rd_reg16(%struct.slgt_info* %10, i32 %11)
  %13 = load i32, i32* @BIT1, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BIT2, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = trunc i32 %17 to i16
  %19 = call i32 @wr_reg16(%struct.slgt_info* %8, i32 %9, i16 zeroext %18)
  %20 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %7, %1
  %23 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %24 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %118

27:                                               ; preds = %22
  %28 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %29 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %31 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %27
  %37 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HDLC_FLAG_AUTO_RTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %36
  %45 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %46 = call i32 @get_signals(%struct.slgt_info* %45)
  %47 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %48 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SerialSignal_RTS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @SerialSignal_RTS, align 4
  %55 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %56 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %60 = call i32 @set_signals(%struct.slgt_info* %59)
  %61 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %62 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %61, i32 0, i32 1
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %53, %44
  br label %64

64:                                               ; preds = %63, %36
  %65 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %66 = load i32, i32* @IRQ_TXDATA, align 4
  %67 = call i32 @slgt_irq_off(%struct.slgt_info* %65, i32 %66)
  %68 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %69 = load i16, i16* @IRQ_TXUNDER, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @IRQ_TXIDLE, align 2
  %72 = zext i16 %71 to i32
  %73 = add nsw i32 %70, %72
  %74 = trunc i32 %73 to i16
  %75 = call i32 @slgt_irq_on(%struct.slgt_info* %68, i16 zeroext %74)
  %76 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %77 = load i32, i32* @SSR, align 4
  %78 = load i16, i16* @IRQ_TXIDLE, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* @IRQ_TXUNDER, align 2
  %81 = zext i16 %80 to i32
  %82 = add nsw i32 %79, %81
  %83 = trunc i32 %82 to i16
  %84 = call i32 @wr_reg16(%struct.slgt_info* %76, i32 %77, i16 zeroext %83)
  br label %96

85:                                               ; preds = %27
  %86 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %87 = load i32, i32* @IRQ_TXDATA, align 4
  %88 = call i32 @slgt_irq_off(%struct.slgt_info* %86, i32 %87)
  %89 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %90 = load i16, i16* @IRQ_TXIDLE, align 2
  %91 = call i32 @slgt_irq_on(%struct.slgt_info* %89, i16 zeroext %90)
  %92 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %93 = load i32, i32* @SSR, align 4
  %94 = load i16, i16* @IRQ_TXIDLE, align 2
  %95 = call i32 @wr_reg16(%struct.slgt_info* %92, i32 %93, i16 zeroext %94)
  br label %96

96:                                               ; preds = %85, %64
  %97 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %98 = load i32, i32* @TDDAR, align 4
  %99 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %100 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %99, i32 0, i32 5
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %103 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @wr_reg32(%struct.slgt_info* %97, i32 %98, i64 %107)
  %109 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %110 = load i32, i32* @TDCSR, align 4
  %111 = load i32, i32* @BIT2, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* @BIT0, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @wr_reg32(%struct.slgt_info* %109, i32 %110, i64 %114)
  %116 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %117 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %116, i32 0, i32 4
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %96, %22
  ret void
}

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @get_signals(%struct.slgt_info*) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

declare dso_local i32 @slgt_irq_on(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @wr_reg32(%struct.slgt_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
