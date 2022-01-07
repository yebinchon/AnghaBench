; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, %struct.net_device_stats }
%struct.TYPE_2__ = type { i32 }
%struct.net_device_stats = type { i32, i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)* }

@REG_IER = common dso_local global i32 0, align 4
@IRQ_OFF = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@REG_IR = common dso_local global i32 0, align 4
@SJA1000_MAX_IRQ = common dso_local global i32 0, align 4
@REG_SR = common dso_local global i32 0, align 4
@IRQ_WUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wakeup interrupt\0A\00", align 1
@IRQ_TI = common dso_local global i32 0, align 4
@REG_FI = common dso_local global i32 0, align 4
@IRQ_RI = common dso_local global i32 0, align 4
@SR_RBS = common dso_local global i32 0, align 4
@IRQ_DOI = common dso_local global i32 0, align 4
@IRQ_EI = common dso_local global i32 0, align 4
@IRQ_BEI = common dso_local global i32 0, align 4
@IRQ_EPI = common dso_local global i32 0, align 4
@IRQ_ALI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%d messages handled in ISR\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1000_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sja1000_priv*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.sja1000_priv* %15, %struct.sja1000_priv** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 1
  store %struct.net_device_stats* %17, %struct.net_device_stats** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %19 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %18, i32 0, i32 0
  %20 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %19, align 8
  %21 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %22 = load i32, i32* @REG_IER, align 4
  %23 = call i32 %20(%struct.sja1000_priv* %21, i32 %22)
  %24 = load i32, i32* @IRQ_OFF, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %172

28:                                               ; preds = %2
  %29 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %30 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %29, i32 0, i32 2
  %31 = load i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)** %30, align 8
  %32 = icmp ne i32 (%struct.sja1000_priv*)* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %35 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %34, i32 0, i32 2
  %36 = load i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)** %35, align 8
  %37 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %38 = call i32 %36(%struct.sja1000_priv* %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %140, %39
  %41 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %42 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %41, i32 0, i32 0
  %43 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %42, align 8
  %44 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %45 = load i32, i32* @REG_IR, align 4
  %46 = call i32 %43(%struct.sja1000_priv* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @SJA1000_MAX_IRQ, align 4
  %51 = icmp slt i32 %49, %50
  br label %52

52:                                               ; preds = %48, %40
  %53 = phi i1 [ false, %40 ], [ %51, %48 ]
  br i1 %53, label %54, label %141

54:                                               ; preds = %52
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %58 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %57, i32 0, i32 0
  %59 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %58, align 8
  %60 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %61 = load i32, i32* @REG_SR, align 4
  %62 = call i32 %59(%struct.sja1000_priv* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @IRQ_WUI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %54
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_warn(i32 %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %67, %54
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @IRQ_TI, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %73
  %79 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %80 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %79, i32 0, i32 0
  %81 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %80, align 8
  %82 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %83 = load i32, i32* @REG_FI, align 4
  %84 = call i32 %81(%struct.sja1000_priv* %82, i32 %83)
  %85 = and i32 %84, 15
  %86 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %87 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %91 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.net_device*, %struct.net_device** %6, align 8
  %95 = call i32 @can_get_echo_skb(%struct.net_device* %94, i32 0)
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = call i32 @netif_wake_queue(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %78, %73
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @IRQ_RI, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %109, %103
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @SR_RBS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.net_device*, %struct.net_device** %6, align 8
  %111 = call i32 @sja1000_rx(%struct.net_device* %110)
  %112 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %113 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %112, i32 0, i32 0
  %114 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %113, align 8
  %115 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %116 = load i32, i32* @REG_SR, align 4
  %117 = call i32 %114(%struct.sja1000_priv* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  br label %104

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %98
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @IRQ_DOI, align 4
  %122 = load i32, i32* @IRQ_EI, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @IRQ_BEI, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @IRQ_EPI, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @IRQ_ALI, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %120, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %119
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i64 @sja1000_err(%struct.net_device* %133, i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %141

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %119
  br label %40

141:                                              ; preds = %138, %52
  %142 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %143 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %142, i32 0, i32 1
  %144 = load i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)** %143, align 8
  %145 = icmp ne i32 (%struct.sja1000_priv*)* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %148 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %147, i32 0, i32 1
  %149 = load i32 (%struct.sja1000_priv*)*, i32 (%struct.sja1000_priv*)** %148, align 8
  %150 = load %struct.sja1000_priv*, %struct.sja1000_priv** %7, align 8
  %151 = call i32 %149(%struct.sja1000_priv* %150)
  br label %152

152:                                              ; preds = %146, %141
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @SJA1000_MAX_IRQ, align 4
  %155 = icmp sge i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load %struct.net_device*, %struct.net_device** %6, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @dev_dbg(i32 %160, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %156, %152
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i32, i32* @IRQ_HANDLED, align 4
  br label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @IRQ_NONE, align 4
  br label %170

170:                                              ; preds = %168, %166
  %171 = phi i32 [ %167, %166 ], [ %169, %168 ]
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %26
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @sja1000_rx(%struct.net_device*) #1

declare dso_local i64 @sja1000_err(%struct.net_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
