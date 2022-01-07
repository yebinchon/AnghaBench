; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_irq_err_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_irq_err_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.can_frame = type { i32, i32* }
%struct.at91_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@AT91_ECR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error Warning IRQ\0A\00", align 1
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Error Passive IRQ\0A\00", align 1
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_RESTARTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"restarted\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Error Active\0A\00", align 1
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_ACTIVE = common dso_local global i32 0, align 4
@AT91_IRQ_ERRA = common dso_local global i32 0, align 4
@AT91_IRQ_WARN = common dso_local global i32 0, align 4
@AT91_IRQ_BOFF = common dso_local global i32 0, align 4
@AT91_IRQ_ERRP = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"bus-off\0A\00", align 1
@AT91_IDR = common dso_local global i32 0, align 4
@AT91_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.can_frame*, i32)* @at91_irq_err_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_irq_err_state(%struct.net_device* %0, %struct.can_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.at91_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.can_frame* %1, %struct.can_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.at91_priv* %14, %struct.at91_priv** %7, align 8
  %15 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %16 = load i32, i32* @AT91_ECR, align 4
  %17 = call i32 @at91_read(%struct.at91_priv* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = ashr i32 %20, 16
  store i32 %21, i32* %11, align 4
  %22 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %23 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %125 [
    i32 130, label %26
    i32 128, label %63
    i32 131, label %100
  ]

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp uge i32 %27, 128
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp ule i32 %30, 131
  br i1 %31, label %32, label %62

32:                                               ; preds = %29
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %39 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @CAN_ERR_CRTL, align 4
  %45 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %59 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %29, %26
  br label %63

63:                                               ; preds = %3, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp uge i32 %64, 129
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp ule i32 %67, 131
  br i1 %68, label %69, label %99

69:                                               ; preds = %66
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(i32 %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %76 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* @CAN_ERR_CRTL, align 4
  %82 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %83 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %69
  %90 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  br label %93

91:                                               ; preds = %69
  %92 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %96 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %66, %63
  br label %126

100:                                              ; preds = %3
  %101 = load i32, i32* %6, align 4
  %102 = icmp ule i32 %101, 129
  br i1 %102, label %103, label %124

103:                                              ; preds = %100
  %104 = load i32, i32* @CAN_ERR_RESTARTED, align 4
  %105 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %106 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_dbg(i32 %112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %115 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = call i32 @netif_carrier_on(%struct.net_device* %120)
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = call i32 @netif_wake_queue(%struct.net_device* %122)
  br label %124

124:                                              ; preds = %103, %100
  br label %126

125:                                              ; preds = %3
  br label %126

126:                                              ; preds = %125, %124, %99
  %127 = load i32, i32* %6, align 4
  switch i32 %127, label %193 [
    i32 130, label %128
    i32 128, label %144
    i32 129, label %151
    i32 131, label %158
  ]

128:                                              ; preds = %126
  %129 = load %struct.net_device*, %struct.net_device** %4, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_dbg(i32 %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %134 = load i32, i32* @CAN_ERR_PROT, align 4
  %135 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @CAN_ERR_PROT_ACTIVE, align 4
  %140 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %141 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32 %139, i32* %143, align 4
  br label %144

144:                                              ; preds = %126, %128
  %145 = load i32, i32* @AT91_IRQ_ERRA, align 4
  %146 = load i32, i32* @AT91_IRQ_WARN, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @AT91_IRQ_BOFF, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @AT91_IRQ_ERRP, align 4
  store i32 %150, i32* %9, align 4
  br label %194

151:                                              ; preds = %126
  %152 = load i32, i32* @AT91_IRQ_ERRA, align 4
  %153 = load i32, i32* @AT91_IRQ_WARN, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @AT91_IRQ_ERRP, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* @AT91_IRQ_BOFF, align 4
  store i32 %157, i32* %9, align 4
  br label %194

158:                                              ; preds = %126
  %159 = load i32, i32* @AT91_IRQ_ERRA, align 4
  %160 = load i32, i32* @AT91_IRQ_ERRP, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @AT91_IRQ_WARN, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @AT91_IRQ_BOFF, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %166 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %167 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %168 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.net_device*, %struct.net_device** %4, align 8
  %172 = getelementptr inbounds %struct.net_device, %struct.net_device* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @dev_dbg(i32 %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %176 = load %struct.net_device*, %struct.net_device** %4, align 8
  %177 = call i32 @netif_carrier_off(%struct.net_device* %176)
  %178 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %179 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %185 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %158
  %190 = load %struct.net_device*, %struct.net_device** %4, align 8
  %191 = call i32 @at91_chip_stop(%struct.net_device* %190, i32 131)
  br label %203

192:                                              ; preds = %158
  br label %194

193:                                              ; preds = %126
  br label %194

194:                                              ; preds = %193, %192, %151, %144
  %195 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %196 = load i32, i32* @AT91_IDR, align 4
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @at91_write(%struct.at91_priv* %195, i32 %196, i32 %197)
  %199 = load %struct.at91_priv*, %struct.at91_priv** %7, align 8
  %200 = load i32, i32* @AT91_IER, align 4
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @at91_write(%struct.at91_priv* %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %194, %189
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @at91_chip_stop(%struct.net_device*, i32) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
