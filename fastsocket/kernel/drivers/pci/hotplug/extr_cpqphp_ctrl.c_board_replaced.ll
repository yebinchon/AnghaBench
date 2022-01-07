; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_board_replaced.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_cpqphp_ctrl.c_board_replaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_func = type { i32, i32 }
%struct.controller = type { i32, i32, i32, i64 }

@INT_INPUT_CLEAR = common dso_local global i64 0, align 8
@INTERLOCK_OPEN = common dso_local global i32 0, align 4
@CARD_FUNCTIONING = common dso_local global i32 0, align 4
@SLOT_POWER = common dso_local global i64 0, align 8
@WRONG_BUS_FREQUENCY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@POWER_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_func*, %struct.controller*)* @board_replaced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @board_replaced(%struct.pci_func* %0, %struct.controller* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_func*, align 8
  %5 = alloca %struct.controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_func* %0, %struct.pci_func** %4, align 8
  store %struct.controller* %1, %struct.controller** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %11 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.controller*, %struct.controller** %5, align 8
  %14 = getelementptr inbounds %struct.controller, %struct.controller* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.controller*, %struct.controller** %5, align 8
  %18 = getelementptr inbounds %struct.controller, %struct.controller* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @INT_INPUT_CLEAR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = shl i64 1, %25
  %27 = and i64 %23, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @INTERLOCK_OPEN, align 4
  store i32 %30, i32* %9, align 4
  br label %192

31:                                               ; preds = %2
  %32 = load %struct.controller*, %struct.controller** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @is_slot_enabled(%struct.controller* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @CARD_FUNCTIONING, align 4
  store i32 %37, i32* %9, align 4
  br label %191

38:                                               ; preds = %31
  %39 = load %struct.controller*, %struct.controller** %5, align 8
  %40 = getelementptr inbounds %struct.controller, %struct.controller* %39, i32 0, i32 2
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.controller*, %struct.controller** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @enable_slot_power(%struct.controller* %42, i32 %43)
  %45 = load %struct.controller*, %struct.controller** %5, align 8
  %46 = call i32 @set_SOGO(%struct.controller* %45)
  %47 = load %struct.controller*, %struct.controller** %5, align 8
  %48 = call i32 @wait_for_ctrl_irq(%struct.controller* %47)
  %49 = load %struct.controller*, %struct.controller** %5, align 8
  %50 = getelementptr inbounds %struct.controller, %struct.controller* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SLOT_POWER, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readb(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.controller*, %struct.controller** %5, align 8
  %56 = getelementptr inbounds %struct.controller, %struct.controller* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SLOT_POWER, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writeb(i32 0, i64 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.controller*, %struct.controller** %5, align 8
  %63 = getelementptr inbounds %struct.controller, %struct.controller* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SLOT_POWER, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writeb(i32 %61, i64 %66)
  %68 = load %struct.controller*, %struct.controller** %5, align 8
  %69 = call i32 @set_SOGO(%struct.controller* %68)
  %70 = load %struct.controller*, %struct.controller** %5, align 8
  %71 = call i32 @wait_for_ctrl_irq(%struct.controller* %70)
  %72 = load %struct.controller*, %struct.controller** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @get_adapter_speed(%struct.controller* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.controller*, %struct.controller** %5, align 8
  %76 = getelementptr inbounds %struct.controller, %struct.controller* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %38
  %81 = load %struct.controller*, %struct.controller** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @set_controller_speed(%struct.controller* %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @WRONG_BUS_FREQUENCY, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %80
  br label %89

89:                                               ; preds = %88, %38
  %90 = load %struct.controller*, %struct.controller** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @disable_slot_power(%struct.controller* %90, i32 %91)
  %93 = load %struct.controller*, %struct.controller** %5, align 8
  %94 = call i32 @set_SOGO(%struct.controller* %93)
  %95 = load %struct.controller*, %struct.controller** %5, align 8
  %96 = call i32 @wait_for_ctrl_irq(%struct.controller* %95)
  %97 = load %struct.controller*, %struct.controller** %5, align 8
  %98 = getelementptr inbounds %struct.controller, %struct.controller* %97, i32 0, i32 2
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %194

104:                                              ; preds = %89
  %105 = load %struct.controller*, %struct.controller** %5, align 8
  %106 = getelementptr inbounds %struct.controller, %struct.controller* %105, i32 0, i32 2
  %107 = call i32 @mutex_lock(i32* %106)
  %108 = load %struct.controller*, %struct.controller** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @slot_enable(%struct.controller* %108, i32 %109)
  %111 = load %struct.controller*, %struct.controller** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @green_LED_blink(%struct.controller* %111, i32 %112)
  %114 = load %struct.controller*, %struct.controller** %5, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @amber_LED_off(%struct.controller* %114, i32 %115)
  %117 = load %struct.controller*, %struct.controller** %5, align 8
  %118 = call i32 @set_SOGO(%struct.controller* %117)
  %119 = load %struct.controller*, %struct.controller** %5, align 8
  %120 = call i32 @wait_for_ctrl_irq(%struct.controller* %119)
  %121 = load %struct.controller*, %struct.controller** %5, align 8
  %122 = getelementptr inbounds %struct.controller, %struct.controller* %121, i32 0, i32 2
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* @HZ, align 4
  %125 = mul nsw i32 1, %124
  %126 = call i32 @long_delay(i32 %125)
  %127 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %128 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 255
  br i1 %130, label %131, label %135

131:                                              ; preds = %104
  %132 = load i32, i32* @POWER_FAILURE, align 4
  store i32 %132, i32* %9, align 4
  %133 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %134 = getelementptr inbounds %struct.pci_func, %struct.pci_func* %133, i32 0, i32 1
  store i32 0, i32* %134, align 4
  br label %139

135:                                              ; preds = %104
  %136 = load %struct.controller*, %struct.controller** %5, align 8
  %137 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %138 = call i32 @cpqhp_valid_replace(%struct.controller* %136, %struct.pci_func* %137)
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %170, label %142

142:                                              ; preds = %139
  %143 = load %struct.controller*, %struct.controller** %5, align 8
  %144 = load %struct.pci_func*, %struct.pci_func** %4, align 8
  %145 = call i32 @cpqhp_configure_board(%struct.controller* %143, %struct.pci_func* %144)
  store i32 %145, i32* %9, align 4
  %146 = load %struct.controller*, %struct.controller** %5, align 8
  %147 = getelementptr inbounds %struct.controller, %struct.controller* %146, i32 0, i32 2
  %148 = call i32 @mutex_lock(i32* %147)
  %149 = load %struct.controller*, %struct.controller** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @amber_LED_on(%struct.controller* %149, i32 %150)
  %152 = load %struct.controller*, %struct.controller** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @green_LED_off(%struct.controller* %152, i32 %153)
  %155 = load %struct.controller*, %struct.controller** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @slot_disable(%struct.controller* %155, i32 %156)
  %158 = load %struct.controller*, %struct.controller** %5, align 8
  %159 = call i32 @set_SOGO(%struct.controller* %158)
  %160 = load %struct.controller*, %struct.controller** %5, align 8
  %161 = call i32 @wait_for_ctrl_irq(%struct.controller* %160)
  %162 = load %struct.controller*, %struct.controller** %5, align 8
  %163 = getelementptr inbounds %struct.controller, %struct.controller* %162, i32 0, i32 2
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %142
  %168 = load i32, i32* %9, align 4
  store i32 %168, i32* %3, align 4
  br label %194

169:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %194

170:                                              ; preds = %139
  %171 = load %struct.controller*, %struct.controller** %5, align 8
  %172 = getelementptr inbounds %struct.controller, %struct.controller* %171, i32 0, i32 2
  %173 = call i32 @mutex_lock(i32* %172)
  %174 = load %struct.controller*, %struct.controller** %5, align 8
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @amber_LED_on(%struct.controller* %174, i32 %175)
  %177 = load %struct.controller*, %struct.controller** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @green_LED_off(%struct.controller* %177, i32 %178)
  %180 = load %struct.controller*, %struct.controller** %5, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @slot_disable(%struct.controller* %180, i32 %181)
  %183 = load %struct.controller*, %struct.controller** %5, align 8
  %184 = call i32 @set_SOGO(%struct.controller* %183)
  %185 = load %struct.controller*, %struct.controller** %5, align 8
  %186 = call i32 @wait_for_ctrl_irq(%struct.controller* %185)
  %187 = load %struct.controller*, %struct.controller** %5, align 8
  %188 = getelementptr inbounds %struct.controller, %struct.controller* %187, i32 0, i32 2
  %189 = call i32 @mutex_unlock(i32* %188)
  br label %190

190:                                              ; preds = %170
  br label %191

191:                                              ; preds = %190, %36
  br label %192

192:                                              ; preds = %191, %29
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %192, %169, %167, %102
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @is_slot_enabled(%struct.controller*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @enable_slot_power(%struct.controller*, i32) #1

declare dso_local i32 @set_SOGO(%struct.controller*) #1

declare dso_local i32 @wait_for_ctrl_irq(%struct.controller*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @get_adapter_speed(%struct.controller*, i32) #1

declare dso_local i64 @set_controller_speed(%struct.controller*, i32, i32) #1

declare dso_local i32 @disable_slot_power(%struct.controller*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @slot_enable(%struct.controller*, i32) #1

declare dso_local i32 @green_LED_blink(%struct.controller*, i32) #1

declare dso_local i32 @amber_LED_off(%struct.controller*, i32) #1

declare dso_local i32 @long_delay(i32) #1

declare dso_local i32 @cpqhp_valid_replace(%struct.controller*, %struct.pci_func*) #1

declare dso_local i32 @cpqhp_configure_board(%struct.controller*, %struct.pci_func*) #1

declare dso_local i32 @amber_LED_on(%struct.controller*, i32) #1

declare dso_local i32 @green_LED_off(%struct.controller*, i32) #1

declare dso_local i32 @slot_disable(%struct.controller*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
