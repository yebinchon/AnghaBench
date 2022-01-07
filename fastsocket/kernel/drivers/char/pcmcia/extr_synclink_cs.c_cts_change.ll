; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_cts_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_cts_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.tty_struct = type { i32 }

@IO_PIN_SHUTDOWN_LIMIT = common dso_local global i64 0, align 8
@CHB = common dso_local global i32 0, align 4
@IRQ_CTS = common dso_local global i32 0, align 4
@SerialSignal_CTS = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@debug_level = common dso_local global i64 0, align 8
@DEBUG_LEVEL_ISR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"CTS tx start...\00", align 1
@BH_TRANSMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"CTS tx stop...\00", align 1
@BH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.tty_struct*)* @cts_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cts_change(%struct.TYPE_13__* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = call i32 @get_signals(%struct.TYPE_13__* %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = sext i32 %9 to i64
  %12 = load i64, i64* @IO_PIN_SHUTDOWN_LIMIT, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = load i32, i32* @CHB, align 4
  %17 = load i32, i32* @IRQ_CTS, align 4
  %18 = call i32 @irq_disable(%struct.TYPE_13__* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SerialSignal_CTS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %43

37:                                               ; preds = %19
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = call i32 @wake_up_interruptible(i32* %45)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = call i32 @wake_up_interruptible(i32* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %115

57:                                               ; preds = %43
  %58 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SerialSignal_CTS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %62
  %70 = load i64, i64* @debug_level, align 8
  %71 = load i64, i64* @DEBUG_LEVEL_ISR, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %77 = icmp ne %struct.tty_struct* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %80 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %79, i32 0, i32 0
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %83 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %84 = call i32 @tx_start(%struct.TYPE_13__* %82, %struct.tty_struct* %83)
  %85 = load i32, i32* @BH_TRANSMIT, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %121

90:                                               ; preds = %62
  br label %114

91:                                               ; preds = %57
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SerialSignal_CTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %91
  %99 = load i64, i64* @debug_level, align 8
  %100 = load i64, i64* @DEBUG_LEVEL_ISR, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %98
  %105 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %106 = icmp ne %struct.tty_struct* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %109 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %112 = call i32 @tx_stop(%struct.TYPE_13__* %111)
  br label %113

113:                                              ; preds = %110, %91
  br label %114

114:                                              ; preds = %113, %90
  br label %115

115:                                              ; preds = %114, %43
  %116 = load i32, i32* @BH_STATUS, align 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %81
  ret void
}

declare dso_local i32 @get_signals(%struct.TYPE_13__*) #1

declare dso_local i32 @irq_disable(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @tx_start(%struct.TYPE_13__*, %struct.tty_struct*) #1

declare dso_local i32 @tx_stop(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
