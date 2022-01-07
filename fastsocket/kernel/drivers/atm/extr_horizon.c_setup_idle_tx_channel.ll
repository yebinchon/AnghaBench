; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_setup_idle_tx_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_setup_idle_tx_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32 }
%struct.TYPE_13__ = type { i32, i64, i64, i64, i64, i32 }

@DBG_FLOW = common dso_local global i32 0, align 4
@DBG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"setup_idle_tx_channel %p\00", align 1
@TX_STATUS_OFF = common dso_local global i32 0, align 4
@IDLE_CHANNELS_MASK = common dso_local global i16 0, align 2
@DBG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"waiting for idle TX channel\00", align 1
@DBG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"spun out waiting for idle TX channel\00", align 1
@EBUSY = common dso_local global i16 0, align 2
@TX_CHANS = common dso_local global i32 0, align 4
@memmap = common dso_local global %struct.TYPE_11__* null, align 8
@RATE_TYPE_ACCESS = common dso_local global i32 0, align 4
@PCR_TIMER_ACCESS = common dso_local global i32 0, align 4
@BUFFER_PTR_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"TX buffer pointers are broken!\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"TX buffer pointers are: rd %x, wr %x.\00", align 1
@DBG_QOS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"tx_channel: aal0\00", align 1
@CHANNEL_TYPE_RAW_CELLS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"tx_channel: aal34\00", align 1
@CHANNEL_TYPE_AAL3_4 = common dso_local global i32 0, align 4
@CHANNEL_TYPE_AAL5 = common dso_local global i32 0, align 4
@INITIAL_CRC = common dso_local global i32 0, align 4
@BUCKET_CAPACITY_ACCESS = common dso_local global i32 0, align 4
@BUCKET_FULLNESS_ACCESS = common dso_local global i32 0, align 4
@SCR_TIMER_ACCESS = common dso_local global i32 0, align 4
@VBR_RATE_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.TYPE_14__*, %struct.TYPE_13__*)* @setup_idle_tx_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @setup_idle_tx_channel(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i16 -1, i16* %7, align 2
  %16 = load i32, i32* @DBG_FLOW, align 4
  %17 = load i32, i32* @DBG_TX, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = call i32 (i32, i8*, ...) @PRINTD(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %49, %2
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = load i32, i32* @TX_STATUS_OFF, align 4
  %24 = call zeroext i16 @rd_regw(%struct.TYPE_14__* %22, i32 %23)
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @IDLE_CHANNELS_MASK, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %25, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %6, align 2
  %30 = icmp ne i16 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %50

32:                                               ; preds = %21
  %33 = load i32, i32* @DBG_TX, align 4
  %34 = load i32, i32* @DBG_WARN, align 4
  %35 = or i32 %33, %34
  %36 = call i32 (i32, i8*, ...) @PRINTD(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = icmp ugt i32 %38, 100
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32, i32* @DBG_TX, align 4
  %42 = load i32, i32* @DBG_ERR, align 4
  %43 = or i32 %41, %42
  %44 = call i32 (i32, i8*, ...) @PRINTD(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i16, i16* @EBUSY, align 2
  %46 = sext i16 %45 to i32
  %47 = sub nsw i32 0, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %3, align 2
  br label %196

49:                                               ; preds = %32
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %74, %50
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i16, i16* %6, align 2
  %59 = zext i16 %58 to i32
  %60 = load i32, i32* %9, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  %66 = trunc i32 %65 to i16
  store i16 %66, i16* %7, align 2
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @TX_CHANS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %67
  br label %54

75:                                               ; preds = %54
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** @memmap, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i16, i16* %7, align 2
  %83 = sext i16 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %83
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %11, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i16, i16* %7, align 2
  %97 = sext i16 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = load i16, i16* %7, align 2
  %101 = load i32, i32* @RATE_TYPE_ACCESS, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @update_tx_channel_config(%struct.TYPE_14__* %99, i16 signext %100, i32 %101, i64 %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %107 = load i16, i16* %7, align 2
  %108 = load i32, i32* @PCR_TIMER_ACCESS, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @update_tx_channel_config(%struct.TYPE_14__* %106, i16 signext %107, i32 %108, i64 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = call i32 @rd_mem(%struct.TYPE_14__* %113, i32* %115)
  %117 = load i32, i32* @BUFFER_PTR_MASK, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %12, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = call i32 @rd_mem(%struct.TYPE_14__* %119, i32* %121)
  %123 = load i32, i32* @BUFFER_PTR_MASK, align 4
  %124 = and i32 %122, %123
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %75
  %129 = load i32, i32* @DBG_TX, align 4
  %130 = load i32, i32* @DBG_ERR, align 4
  %131 = or i32 %129, %130
  %132 = call i32 (i32, i8*, ...) @PRINTD(i32 %131, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %75
  %134 = load i32, i32* @DBG_TX, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = call i32 (i32, i8*, ...) @PRINTD(i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %135, i32 %136)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %175 [
    i32 130, label %141
    i32 129, label %152
    i32 128, label %163
  ]

141:                                              ; preds = %133
  %142 = load i32, i32* @DBG_QOS, align 4
  %143 = load i32, i32* @DBG_TX, align 4
  %144 = or i32 %142, %143
  %145 = call i32 (i32, i8*, ...) @PRINTD(i32 %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* @CHANNEL_TYPE_RAW_CELLS, align 4
  %147 = load i32, i32* %12, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* @CHANNEL_TYPE_RAW_CELLS, align 4
  %150 = load i32, i32* %13, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %13, align 4
  br label %175

152:                                              ; preds = %133
  %153 = load i32, i32* @DBG_QOS, align 4
  %154 = load i32, i32* @DBG_TX, align 4
  %155 = or i32 %153, %154
  %156 = call i32 (i32, i8*, ...) @PRINTD(i32 %155, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %157 = load i32, i32* @CHANNEL_TYPE_AAL3_4, align 4
  %158 = load i32, i32* %12, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* @CHANNEL_TYPE_AAL3_4, align 4
  %161 = load i32, i32* %13, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %13, align 4
  br label %175

163:                                              ; preds = %133
  %164 = load i32, i32* @CHANNEL_TYPE_AAL5, align 4
  %165 = load i32, i32* %12, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* @CHANNEL_TYPE_AAL5, align 4
  %168 = load i32, i32* %13, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %13, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 3
  %173 = load i32, i32* @INITIAL_CRC, align 4
  %174 = call i32 @wr_mem(%struct.TYPE_14__* %170, i32* %172, i32 %173)
  br label %175

175:                                              ; preds = %133, %163, %152, %141
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @wr_mem(%struct.TYPE_14__* %176, i32* %178, i32 %179)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %13, align 4
  %185 = call i32 @wr_mem(%struct.TYPE_14__* %181, i32* %183, i32 %184)
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @wr_mem(%struct.TYPE_14__* %186, i32* %188, i32 %189)
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  %193 = load i64, i64* %15, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  %195 = load i16, i16* %7, align 2
  store i16 %195, i16* %3, align 2
  br label %196

196:                                              ; preds = %175, %40
  %197 = load i16, i16* %3, align 2
  ret i16 %197
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local zeroext i16 @rd_regw(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_tx_channel_config(%struct.TYPE_14__*, i16 signext, i32, i64) #1

declare dso_local i32 @rd_mem(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @wr_mem(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
