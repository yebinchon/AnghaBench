; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_pwrsrc_switch_to_vaux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_pwrsrc_switch_to_vaux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IS_NIC = common dso_local global i32 0, align 4
@ASIC_REV_5700 = common dso_local global i64 0, align 8
@ASIC_REV_5701 = common dso_local global i64 0, align 8
@GRC_LOCAL_CTRL = common dso_local global i32 0, align 4
@GRC_LCLCTRL_GPIO_OE0 = common dso_local global i32 0, align 4
@GRC_LCLCTRL_GPIO_OE1 = common dso_local global i32 0, align 4
@GRC_LCLCTRL_GPIO_OE2 = common dso_local global i32 0, align 4
@GRC_LCLCTRL_GPIO_OUTPUT0 = common dso_local global i32 0, align 4
@GRC_LCLCTRL_GPIO_OUTPUT1 = common dso_local global i32 0, align 4
@TG3_GRC_LCLCTL_PWRSW_DELAY = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_TIGON3_5761 = common dso_local global i64 0, align 8
@TG3PCI_DEVICE_TIGON3_5761S = common dso_local global i64 0, align 8
@GRC_LCLCTRL_GPIO_OUTPUT2 = common dso_local global i32 0, align 4
@ASIC_REV_5714 = common dso_local global i64 0, align 8
@GRC_LCLCTRL_GPIO_OE3 = common dso_local global i32 0, align 4
@NIC_SRAM_DATA_CFG_NO_GPIO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_pwrsrc_switch_to_vaux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_pwrsrc_switch_to_vaux(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %6 = load %struct.tg3*, %struct.tg3** %2, align 8
  %7 = load i32, i32* @IS_NIC, align 4
  %8 = call i32 @tg3_flag(%struct.tg3* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %167

11:                                               ; preds = %1
  %12 = load %struct.tg3*, %struct.tg3** %2, align 8
  %13 = call i64 @tg3_asic_rev(%struct.tg3* %12)
  %14 = load i64, i64* @ASIC_REV_5700, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.tg3*, %struct.tg3** %2, align 8
  %18 = call i64 @tg3_asic_rev(%struct.tg3* %17)
  %19 = load i64, i64* @ASIC_REV_5701, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %16, %11
  %22 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GRC_LCLCTRL_GPIO_OE0, align 4
  %27 = load i32, i32* @GRC_LCLCTRL_GPIO_OE1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GRC_LCLCTRL_GPIO_OE2, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT0, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT1, align 4
  %34 = or i32 %32, %33
  %35 = or i32 %25, %34
  %36 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %37 = call i32 @tw32_wait_f(i32 %22, i32 %35, i32 %36)
  br label %167

38:                                               ; preds = %16
  %39 = load %struct.tg3*, %struct.tg3** %2, align 8
  %40 = getelementptr inbounds %struct.tg3, %struct.tg3* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCI_DEVICE_ID_TIGON3_5761, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load %struct.tg3*, %struct.tg3** %2, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TG3PCI_DEVICE_TIGON3_5761S, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %87

54:                                               ; preds = %46, %38
  %55 = load i32, i32* @GRC_LCLCTRL_GPIO_OE0, align 4
  %56 = load i32, i32* @GRC_LCLCTRL_GPIO_OE1, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @GRC_LCLCTRL_GPIO_OE2, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT0, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT1, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.tg3*, %struct.tg3** %2, align 8
  %65 = getelementptr inbounds %struct.tg3, %struct.tg3* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %63, %66
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %71 = call i32 @tw32_wait_f(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT2, align 4
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  %75 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %78 = call i32 @tw32_wait_f(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT0, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %86 = call i32 @tw32_wait_f(i32 %83, i32 %84, i32 %85)
  br label %166

87:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  %88 = load %struct.tg3*, %struct.tg3** %2, align 8
  %89 = call i64 @tg3_asic_rev(%struct.tg3* %88)
  %90 = load i64, i64* @ASIC_REV_5714, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load i32, i32* @GRC_LCLCTRL_GPIO_OE3, align 4
  %94 = load i32, i32* %5, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %97 = load %struct.tg3*, %struct.tg3** %2, align 8
  %98 = getelementptr inbounds %struct.tg3, %struct.tg3* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %103 = call i32 @tw32_wait_f(i32 %96, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %92, %87
  %105 = load %struct.tg3*, %struct.tg3** %2, align 8
  %106 = getelementptr inbounds %struct.tg3, %struct.tg3* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NIC_SRAM_DATA_CFG_NO_GPIO2, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* @GRC_LCLCTRL_GPIO_OE0, align 4
  %111 = load i32, i32* @GRC_LCLCTRL_GPIO_OE1, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @GRC_LCLCTRL_GPIO_OE2, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT1, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT2, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %104
  %124 = load i32, i32* @GRC_LCLCTRL_GPIO_OE2, align 4
  %125 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT2, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %5, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %123, %104
  %131 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %132 = load %struct.tg3*, %struct.tg3** %2, align 8
  %133 = getelementptr inbounds %struct.tg3, %struct.tg3* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %138 = call i32 @tw32_wait_f(i32 %131, i32 %136, i32 %137)
  %139 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT0, align 4
  %140 = load i32, i32* %5, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %143 = load %struct.tg3*, %struct.tg3** %2, align 8
  %144 = getelementptr inbounds %struct.tg3, %struct.tg3* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %149 = call i32 @tw32_wait_f(i32 %142, i32 %147, i32 %148)
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %165, label %152

152:                                              ; preds = %130
  %153 = load i32, i32* @GRC_LCLCTRL_GPIO_OUTPUT2, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %5, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %158 = load %struct.tg3*, %struct.tg3** %2, align 8
  %159 = getelementptr inbounds %struct.tg3, %struct.tg3* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %164 = call i32 @tw32_wait_f(i32 %157, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %152, %130
  br label %166

166:                                              ; preds = %165, %54
  br label %167

167:                                              ; preds = %10, %166, %21
  ret void
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @tw32_wait_f(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
