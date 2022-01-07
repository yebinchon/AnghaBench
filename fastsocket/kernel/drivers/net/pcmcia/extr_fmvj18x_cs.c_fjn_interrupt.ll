; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_fmvj18x_cs.c_fjn_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_fmvj18x_cs.c_fjn_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i16, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i16 }
%struct.TYPE_5__ = type { i16, i32, i32*, i64, i64 }

@TX_INTR = common dso_local global i64 0, align 8
@TX_STATUS = common dso_local global i64 0, align 8
@RX_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"%s: interrupt, rx_status %02x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"               tx_status %02x.\0A\00", align 1
@RX_MODE = common dso_local global i64 0, align 8
@F_BUF_EMP = common dso_local global i16 0, align 2
@F_TMT_RDY = common dso_local global i16 0, align 2
@DO_TX = common dso_local global i16 0, align 2
@TX_START = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: exiting interrupt,\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"    tx_status %02x, rx_status %02x.\0A\00", align 1
@D_TX_INTR = common dso_local global i16 0, align 2
@D_RX_INTR = common dso_local global i16 0, align 2
@RX_INTR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fjn_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjn_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %12)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* @TX_INTR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outw(i32 0, i64 %20)
  %22 = call i32 @udelay(i32 1)
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @TX_STATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i16 @inb(i64 %26)
  store i16 %27, i16* %8, align 2
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @RX_STATUS, align 8
  %31 = add nsw i64 %29, %30
  %32 = call zeroext i16 @inb(i64 %31)
  store i16 %32, i16* %9, align 2
  %33 = load i16, i16* %8, align 2
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @TX_STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb(i16 zeroext %33, i64 %37)
  %39 = load i16, i16* %9, align 2
  %40 = load i32, i32* %7, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* @RX_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @outb(i16 zeroext %39, i64 %43)
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i16, i16* %46, align 4
  %48 = load i16, i16* %9, align 2
  %49 = zext i16 %48 to i32
  %50 = call i32 (i32, i8*, i16, ...) @DEBUG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i16 zeroext %47, i32 %49)
  %51 = load i16, i16* %8, align 2
  %52 = call i32 (i32, i8*, i16, ...) @DEBUG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %51)
  %53 = load i16, i16* %9, align 2
  %54 = zext i16 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %2
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = load i64, i64* @RX_MODE, align 8
  %60 = add nsw i64 %58, %59
  %61 = call zeroext i16 @inb(i64 %60)
  %62 = zext i16 %61 to i32
  %63 = load i16, i16* @F_BUF_EMP, align 2
  %64 = zext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56, %2
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @fjn_rx(%struct.net_device* %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = load i16, i16* %8, align 2
  %72 = zext i16 %71 to i32
  %73 = load i16, i16* @F_TMT_RDY, align 2
  %74 = zext i16 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %127

77:                                               ; preds = %70
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i16, i16* %79, align 8
  %81 = zext i16 %80 to i32
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i16, i16* %84, align 4
  %86 = zext i16 %85 to i32
  %87 = add nsw i32 %86, %81
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %84, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i16 0, i16* %90, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %77
  %96 = load i16, i16* @DO_TX, align 2
  %97 = zext i16 %96 to i32
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  %102 = trunc i32 %101 to i16
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* @TX_START, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i16 zeroext %102, i64 %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = trunc i32 %110 to i16
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i16 %111, i16* %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store i64 0, i64* %117, align 8
  %118 = load i32, i32* @jiffies, align 4
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  br label %124

121:                                              ; preds = %77
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %95
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = call i32 @netif_wake_queue(%struct.net_device* %125)
  br label %127

127:                                              ; preds = %124, %70
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 1
  %130 = load i16, i16* %129, align 4
  %131 = call i32 (i32, i8*, i16, ...) @DEBUG(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %130)
  %132 = load i16, i16* %8, align 2
  %133 = load i16, i16* %9, align 2
  %134 = zext i16 %133 to i32
  %135 = call i32 (i32, i8*, i16, ...) @DEBUG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %132, i32 %134)
  %136 = load i16, i16* @D_TX_INTR, align 2
  %137 = load i32, i32* %7, align 4
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* @TX_INTR, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @outb(i16 zeroext %136, i64 %140)
  %142 = load i16, i16* @D_RX_INTR, align 2
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* @RX_INTR, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @outb(i16 zeroext %142, i64 %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %127
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2050
  %157 = call i32 @writeb(i32 1, i32* %156)
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2082
  %162 = call i32 @writeb(i32 9, i32* %161)
  br label %163

163:                                              ; preds = %152, %127
  %164 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %164
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i16 @inb(i64) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i32 @DEBUG(i32, i8*, i16 zeroext, ...) #1

declare dso_local i32 @fjn_rx(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
