; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_mchip_subsample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_mchip_subsample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MCHIP_MCC_R_SAMPLING = common dso_local global i32 0, align 4
@meye = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MCHIP_MCC_R_XRANGE = common dso_local global i32 0, align 4
@MCHIP_MCC_R_YRANGE = common dso_local global i32 0, align 4
@MCHIP_MCC_B_XRANGE = common dso_local global i32 0, align 4
@MCHIP_MCC_B_YRANGE = common dso_local global i32 0, align 4
@MCHIP_HIC_STATUS = common dso_local global i32 0, align 4
@MCHIP_HIC_STATUS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mchip_subsample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mchip_subsample() #0 {
  %1 = load i32, i32* @MCHIP_MCC_R_SAMPLING, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @meye, i32 0, i32 0, i32 0), align 4
  %3 = call i32 @mchip_set(i32 %1, i32 %2)
  %4 = load i32, i32* @MCHIP_MCC_R_XRANGE, align 4
  %5 = call i32 (...) @mchip_hsize()
  %6 = call i32 @mchip_set(i32 %4, i32 %5)
  %7 = load i32, i32* @MCHIP_MCC_R_YRANGE, align 4
  %8 = call i32 (...) @mchip_vsize()
  %9 = call i32 @mchip_set(i32 %7, i32 %8)
  %10 = load i32, i32* @MCHIP_MCC_B_XRANGE, align 4
  %11 = call i32 (...) @mchip_hsize()
  %12 = call i32 @mchip_set(i32 %10, i32 %11)
  %13 = load i32, i32* @MCHIP_MCC_B_YRANGE, align 4
  %14 = call i32 (...) @mchip_vsize()
  %15 = call i32 @mchip_set(i32 %13, i32 %14)
  %16 = load i32, i32* @MCHIP_HIC_STATUS, align 4
  %17 = load i32, i32* @MCHIP_HIC_STATUS_IDLE, align 4
  %18 = call i32 @mchip_delay(i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @mchip_set(i32, i32) #1

declare dso_local i32 @mchip_hsize(...) #1

declare dso_local i32 @mchip_vsize(...) #1

declare dso_local i32 @mchip_delay(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
