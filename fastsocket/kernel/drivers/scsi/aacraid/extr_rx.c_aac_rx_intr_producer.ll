; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_intr_producer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_rx.c_aac_rx_intr_producer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.aac_dev = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@MUnit = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@OutboundDoorbellReg = common dso_local global i32 0, align 4
@DoorBellPrintfReady = common dso_local global i64 0, align 8
@InboundDoorbellReg = common dso_local global i32 0, align 4
@DoorBellPrintfDone = common dso_local global i64 0, align 8
@DoorBellAdapterNormCmdReady = common dso_local global i64 0, align 8
@HostNormCmdQueue = common dso_local global i64 0, align 8
@DoorBellAdapterNormRespReady = common dso_local global i64 0, align 8
@HostNormRespQueue = common dso_local global i64 0, align 8
@DoorBellAdapterNormCmdNotFull = common dso_local global i64 0, align 8
@DoorBellAdapterNormRespNotFull = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aac_rx_intr_producer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_rx_intr_producer(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aac_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.aac_dev*
  store %struct.aac_dev* %10, %struct.aac_dev** %6, align 8
  %11 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 1), align 4
  %13 = call i64 @rx_readb(%struct.aac_dev* %11, i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %16 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = xor i64 %17, -1
  %19 = and i64 %14, %18
  %20 = call i64 @likely(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %119

22:                                               ; preds = %2
  %23 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %24 = load i32, i32* @OutboundDoorbellReg, align 4
  %25 = call i64 @rx_readl(%struct.aac_dev* %23, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @DoorBellPrintfReady, align 8
  %28 = and i64 %26, %27
  %29 = call i64 @unlikely(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %33 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %34 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 5
  %39 = call i32 @readl(i32* %38)
  %40 = call i32 @aac_printf(%struct.aac_dev* %32, i32 %39)
  %41 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 0), align 4
  %43 = load i64, i64* @DoorBellPrintfReady, align 8
  %44 = call i32 @rx_writel(%struct.aac_dev* %41, i32 %42, i64 %43)
  %45 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %46 = load i32, i32* @InboundDoorbellReg, align 4
  %47 = load i64, i64* @DoorBellPrintfDone, align 8
  %48 = call i32 @rx_writel(%struct.aac_dev* %45, i32 %46, i64 %47)
  br label %117

49:                                               ; preds = %22
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @DoorBellAdapterNormCmdReady, align 8
  %52 = and i64 %50, %51
  %53 = call i64 @unlikely(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 0), align 4
  %58 = load i64, i64* @DoorBellAdapterNormCmdReady, align 8
  %59 = call i32 @rx_writel(%struct.aac_dev* %56, i32 %57, i64 %58)
  %60 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %61 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @HostNormCmdQueue, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = call i32 @aac_command_normal(i32* %66)
  br label %116

68:                                               ; preds = %49
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* @DoorBellAdapterNormRespReady, align 8
  %71 = and i64 %69, %70
  %72 = call i64 @likely(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 0), align 4
  %77 = load i64, i64* @DoorBellAdapterNormRespReady, align 8
  %78 = call i32 @rx_writel(%struct.aac_dev* %75, i32 %76, i64 %77)
  %79 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %80 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @HostNormRespQueue, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = call i32 @aac_response_normal(i32* %85)
  br label %115

87:                                               ; preds = %68
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @DoorBellAdapterNormCmdNotFull, align 8
  %90 = and i64 %88, %89
  %91 = call i64 @unlikely(i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 0), align 4
  %96 = load i64, i64* @DoorBellAdapterNormCmdNotFull, align 8
  %97 = call i32 @rx_writel(%struct.aac_dev* %94, i32 %95, i64 %96)
  br label %114

98:                                               ; preds = %87
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @DoorBellAdapterNormRespNotFull, align 8
  %101 = and i64 %99, %100
  %102 = call i64 @unlikely(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 0), align 4
  %107 = load i64, i64* @DoorBellAdapterNormCmdNotFull, align 8
  %108 = call i32 @rx_writel(%struct.aac_dev* %105, i32 %106, i64 %107)
  %109 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @MUnit, i32 0, i32 0), align 4
  %111 = load i64, i64* @DoorBellAdapterNormRespNotFull, align 8
  %112 = call i32 @rx_writel(%struct.aac_dev* %109, i32 %110, i64 %111)
  br label %113

113:                                              ; preds = %104, %98
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %74
  br label %116

116:                                              ; preds = %115, %55
  br label %117

117:                                              ; preds = %116, %31
  %118 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %118, i32* %3, align 4
  br label %121

119:                                              ; preds = %2
  %120 = load i32, i32* @IRQ_NONE, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @rx_readb(%struct.aac_dev*, i32) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i64 @rx_readl(%struct.aac_dev*, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @aac_printf(%struct.aac_dev*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @rx_writel(%struct.aac_dev*, i32, i64) #1

declare dso_local i32 @aac_command_normal(i32*) #1

declare dso_local i32 @aac_response_normal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
