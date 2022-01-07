; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_txeom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_isr_txeom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, i32, %struct.TYPE_8__, i64, i32, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s txeom status=%04x\0A\00", align 1
@IRQ_TXDATA = common dso_local global i64 0, align 8
@IRQ_TXIDLE = common dso_local global i16 0, align 2
@IRQ_TXUNDER = common dso_local global i16 0, align 2
@TCR = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i16 0, align 2
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@SerialSignal_RTS = common dso_local global i32 0, align 4
@BH_TRANSMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*, i16)* @isr_txeom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isr_txeom(%struct.slgt_info* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.slgt_info*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %7 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %6, i32 0, i32 10
  %8 = load i32, i32* %7, align 8
  %9 = load i16, i16* %4, align 2
  %10 = zext i16 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @DBGISR(i8* %11)
  %13 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %14 = load i64, i64* @IRQ_TXDATA, align 8
  %15 = load i16, i16* @IRQ_TXIDLE, align 2
  %16 = zext i16 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load i16, i16* @IRQ_TXUNDER, align 2
  %19 = zext i16 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @slgt_irq_off(%struct.slgt_info* %13, i64 %20)
  %22 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %23 = call i32 @tdma_reset(%struct.slgt_info* %22)
  %24 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %25 = call i32 @reset_tbufs(%struct.slgt_info* %24)
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* @IRQ_TXUNDER, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %2
  %33 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %34 = load i32, i32* @TCR, align 4
  %35 = call zeroext i16 @rd_reg16(%struct.slgt_info* %33, i32 %34)
  store i16 %35, i16* %5, align 2
  %36 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %37 = load i32, i32* @TCR, align 4
  %38 = load i16, i16* %5, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @BIT2, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %39, %41
  %43 = trunc i32 %42 to i16
  %44 = call i32 @wr_reg16(%struct.slgt_info* %36, i32 %37, i16 zeroext %43)
  %45 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %46 = load i32, i32* @TCR, align 4
  %47 = load i16, i16* %5, align 2
  %48 = call i32 @wr_reg16(%struct.slgt_info* %45, i32 %46, i16 zeroext %47)
  br label %49

49:                                               ; preds = %32, %2
  %50 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %51 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %150

54:                                               ; preds = %49
  %55 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %56 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %54
  %62 = load i16, i16* %4, align 2
  %63 = zext i16 %62 to i32
  %64 = load i16, i16* @IRQ_TXUNDER, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %70 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %88

74:                                               ; preds = %61
  %75 = load i16, i16* %4, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* @IRQ_TXIDLE, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %76, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %83 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %74
  br label %88

88:                                               ; preds = %87, %68
  br label %89

89:                                               ; preds = %88, %54
  %90 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %91 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %93 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %92, i32 0, i32 8
  store i64 0, i64* %93, align 8
  %94 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %95 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %94, i32 0, i32 7
  %96 = call i32 @del_timer(i32* %95)
  %97 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %98 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %89
  %104 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %105 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load i32, i32* @SerialSignal_RTS, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %112 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %116 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %118 = call i32 @set_signals(%struct.slgt_info* %117)
  br label %119

119:                                              ; preds = %108, %103, %89
  %120 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %121 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = icmp ne %struct.TYPE_7__* %123, null
  br i1 %124, label %125, label %144

125:                                              ; preds = %119
  %126 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %127 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %125
  %134 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %135 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %133, %125
  %142 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %143 = call i32 @tx_stop(%struct.slgt_info* %142)
  br label %150

144:                                              ; preds = %133, %119
  %145 = load i32, i32* @BH_TRANSMIT, align 4
  %146 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %147 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %141, %144, %49
  ret void
}

declare dso_local i32 @DBGISR(i8*) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i64) #1

declare dso_local i32 @tdma_reset(%struct.slgt_info*) #1

declare dso_local i32 @reset_tbufs(%struct.slgt_info*) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
