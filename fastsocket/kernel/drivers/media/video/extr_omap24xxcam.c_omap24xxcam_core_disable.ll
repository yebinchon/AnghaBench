; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_core_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_omap24xxcam.c_omap24xxcam_core_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap24xxcam_device = type { i64 }

@CC_REG_OFFSET = common dso_local global i64 0, align 8
@CC_CTRL = common dso_local global i32 0, align 4
@CC_CTRL_CC_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap24xxcam_device*)* @omap24xxcam_core_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap24xxcam_core_disable(%struct.omap24xxcam_device* %0) #0 {
  %2 = alloca %struct.omap24xxcam_device*, align 8
  store %struct.omap24xxcam_device* %0, %struct.omap24xxcam_device** %2, align 8
  %3 = load %struct.omap24xxcam_device*, %struct.omap24xxcam_device** %2, align 8
  %4 = getelementptr inbounds %struct.omap24xxcam_device, %struct.omap24xxcam_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CC_REG_OFFSET, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i32, i32* @CC_CTRL, align 4
  %9 = load i32, i32* @CC_CTRL_CC_RST, align 4
  %10 = call i32 @omap24xxcam_reg_out(i64 %7, i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @omap24xxcam_reg_out(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
