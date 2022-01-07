; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_rx_schedule.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_horizon.c_rx_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, %struct.sk_buff*, %struct.TYPE_12__* }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.atm_vcc = type { i32 (%struct.atm_vcc*, %struct.sk_buff*)*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.atm_vcc* }

@MAX_PIO_COUNT = common dso_local global i32 0, align 4
@DBG_RX = common dso_local global i32 0, align 4
@DBG_BUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"(pio)\00", align 1
@MAX_TRANSFER_COUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"(simple or last multi)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"(continuing multi)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"<<<\00", align 1
@DBG_SKB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"push %p %u\00", align 1
@MASTER_RX_COUNT_REG_OFF = common dso_local global i32 0, align 4
@DATA_PORT_OFF = common dso_local global i32 0, align 4
@MASTER_RX_ADDR_REG_OFF = common dso_local global i32 0, align 4
@rx_busy = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"cleared rx_busy for dev %p\00", align 1
@DBG_ERR = common dso_local global i32 0, align 4
@DBG_WARN = common dso_local global i32 0, align 4
@spin_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32)* @rx_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_schedule(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.atm_vcc*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %6, align 4
  br label %10

10:                                               ; preds = %153, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %154

13:                                               ; preds = %10
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MAX_PIO_COUNT, align 4
  %22 = icmp ule i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @DBG_RX, align 4
  %25 = load i32, i32* @DBG_BUS, align 4
  %26 = or i32 %24, %25
  %27 = call i32 (i32, i8*, ...) @PRINTD(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @DBG_RX, align 4
  %34 = load i32, i32* @DBG_BUS, align 4
  %35 = or i32 %33, %34
  %36 = call i32 (i32, i8*, ...) @PRINTD(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %50

39:                                               ; preds = %28
  %40 = load i32, i32* @DBG_RX, align 4
  %41 = load i32, i32* @DBG_BUS, align 4
  %42 = or i32 %40, %41
  %43 = call i32 (i32, i8*, ...) @PRINTD(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  %46 = sub i32 %44, %45
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @MAX_TRANSFER_COUNT, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %39, %32
  br label %97

51:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %96

55:                                               ; preds = %51
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 5
  %58 = load %struct.sk_buff*, %struct.sk_buff** %57, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %8, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @FLUSH_RX_CHANNEL(%struct.TYPE_14__* %59, i32 %62)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = call i32 @dump_skb(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %66, %struct.sk_buff* %67)
  %69 = load i32, i32* @DBG_RX, align 4
  %70 = load i32, i32* @DBG_SKB, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @PRINTD(i32 %71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = call %struct.TYPE_11__* @ATM_SKB(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.atm_vcc*, %struct.atm_vcc** %81, align 8
  store %struct.atm_vcc* %82, %struct.atm_vcc** %9, align 8
  %83 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %84 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %83, i32 0, i32 1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = call i32 @atomic_inc(i32* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @__net_timestamp(%struct.sk_buff* %88)
  %90 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %91 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %90, i32 0, i32 0
  %92 = load i32 (%struct.atm_vcc*, %struct.sk_buff*)*, i32 (%struct.atm_vcc*, %struct.sk_buff*)** %91, align 8
  %93 = load %struct.atm_vcc*, %struct.atm_vcc** %9, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = call i32 %92(%struct.atm_vcc* %93, %struct.sk_buff* %94)
  br label %96

96:                                               ; preds = %55, %54
  br label %97

97:                                               ; preds = %96, %50
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %136

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = load i32, i32* @MASTER_RX_COUNT_REG_OFF, align 4
  %109 = call i32 @wr_regl(%struct.TYPE_14__* %107, i32 %108, i32 0)
  br label %110

110:                                              ; preds = %106, %103
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = load i32, i32* @DATA_PORT_OFF, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @rds_regb(%struct.TYPE_14__* %111, i32 %112, i32 %115, i32 %116)
  br label %130

118:                                              ; preds = %100
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %120 = load i32, i32* @MASTER_RX_ADDR_REG_OFF, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @virt_to_bus(i32 %123)
  %125 = call i32 @wr_regl(%struct.TYPE_14__* %119, i32 %120, i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = load i32, i32* @MASTER_RX_COUNT_REG_OFF, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @wr_regl(%struct.TYPE_14__* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %118, %110
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = add i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %153

136:                                              ; preds = %97
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %141 = load i32, i32* @MASTER_RX_COUNT_REG_OFF, align 4
  %142 = call i32 @wr_regl(%struct.TYPE_14__* %140, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %139, %136
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = call i32 @YELLOW_LED_ON(%struct.TYPE_14__* %144)
  %146 = load i32, i32* @rx_busy, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 3
  %149 = call i32 @clear_bit(i32 %146, i32* %148)
  %150 = load i32, i32* @DBG_RX, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = call i32 (i32, i8*, ...) @PRINTD(i32 %150, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_14__* %151)
  br label %153

153:                                              ; preds = %143, %130
  store i32 0, i32* %4, align 4
  br label %10

154:                                              ; preds = %10
  ret void
}

declare dso_local i32 @PRINTD(i32, i8*, ...) #1

declare dso_local i32 @FLUSH_RX_CHANNEL(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dump_skb(i8*, i32, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_11__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @wr_regl(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @rds_regb(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @virt_to_bus(i32) #1

declare dso_local i32 @YELLOW_LED_ON(%struct.TYPE_14__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
