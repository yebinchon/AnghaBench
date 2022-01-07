; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_hrz_close_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_hrz_close_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64*, i32, i32*, i32*, i32*, i32 }

@memmap = common dso_local global %struct.TYPE_14__* null, align 8
@BUFFER_PTR_MASK = common dso_local global i32 0, align 4
@RX_CHANNEL_DISABLED = common dso_local global i32 0, align 4
@DBG_VCC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"closing VC: RX channel %u already disabled\00", align 1
@RX_CHANNEL_IDLE = common dso_local global i32 0, align 4
@RX_CHANS = common dso_local global i32 0, align 4
@DBG_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"r1 = %u, r2 = %u\00", align 1
@DBG_WARN = common dso_local global i32 0, align 4
@RX_QUEUE_WR_PTR_OFF = common dso_local global i32 0, align 4
@SIMONS_DODGEY_MARKER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i64)* @hrz_close_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hrz_close_rx(%struct.TYPE_13__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** @memmap, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i64 %15
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = call i32 @rd_mem(%struct.TYPE_13__* %21, i32* %23)
  %25 = load i32, i32* @BUFFER_PTR_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RX_CHANNEL_DISABLED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @DBG_VCC, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 (i32, i8*, ...) @PRINTD(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %36)
  br label %136

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @RX_CHANNEL_IDLE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  br label %48

48:                                               ; preds = %63, %43
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* @RX_CHANNEL_DISABLED, align 4
  %53 = call i32 @wr_mem(%struct.TYPE_13__* %49, i32* %51, i32 %52)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = call i32 @rd_mem(%struct.TYPE_13__* %54, i32* %56)
  %58 = load i32, i32* @BUFFER_PTR_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @RX_CHANNEL_DISABLED, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %48
  br label %64

63:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %48

64:                                               ; preds = %62
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  br label %136

72:                                               ; preds = %64
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = call i32 @WAIT_FLUSH_RX_COMPLETE(%struct.TYPE_13__* %73)
  br label %75

75:                                               ; preds = %130, %72
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* @RX_CHANS, align 4
  %78 = sdiv i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = xor i64 %76, %79
  store i64 %80, i64* %11, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @SELECT_RX_CHANNEL(%struct.TYPE_13__* %81, i64 %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = call i32 @WAIT_UPDATE_COMPLETE(%struct.TYPE_13__* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = call i32 @rd_mem(%struct.TYPE_13__* %86, i32* %88)
  store i32 %89, i32* %7, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @SELECT_RX_CHANNEL(%struct.TYPE_13__* %90, i64 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %94 = call i32 @WAIT_UPDATE_COMPLETE(%struct.TYPE_13__* %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @FLUSH_RX_CHANNEL(%struct.TYPE_13__* %95, i64 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = call i32 @WAIT_FLUSH_RX_COMPLETE(%struct.TYPE_13__* %98)
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @SELECT_RX_CHANNEL(%struct.TYPE_13__* %100, i64 %101)
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = call i32 @WAIT_UPDATE_COMPLETE(%struct.TYPE_13__* %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = call i32 @rd_mem(%struct.TYPE_13__* %105, i32* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @DBG_VCC, align 4
  %110 = load i32, i32* @DBG_RX, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i32, i8*, ...) @PRINTD(i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %75
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i64, i64* %123, i64 %128
  store i64 %120, i64* %129, align 8
  br label %131

130:                                              ; preds = %75
  br label %75

131:                                              ; preds = %118
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32* %133, i64 %134)
  br label %136

136:                                              ; preds = %131, %67, %34
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rd_mem(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i32 @wr_mem(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @WAIT_FLUSH_RX_COMPLETE(%struct.TYPE_13__*) #1

declare dso_local i32 @SELECT_RX_CHANNEL(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @WAIT_UPDATE_COMPLETE(%struct.TYPE_13__*) #1

declare dso_local i32 @FLUSH_RX_CHANNEL(%struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
