; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_chipco_bcm4331_ext_pa_lines_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_driver_chipcommon_pmu.c_bcma_chipco_bcm4331_ext_pa_lines_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.bcma_bus* }
%struct.bcma_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@BCMA_CC_CHIPCTL = common dso_local global i32 0, align 4
@BCMA_CHIPCTL_4331_EXTPA_EN = common dso_local global i32 0, align 4
@BCMA_CHIPCTL_4331_EXTPA_ON_GPIO2_5 = common dso_local global i32 0, align 4
@BCMA_CHIPCTL_4331_EXTPA_EN2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_chipco_bcm4331_ext_pa_lines_ctl(%struct.bcma_drv_cc* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_bus*, align 8
  %6 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_drv_cc, %struct.bcma_drv_cc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.bcma_bus*, %struct.bcma_bus** %10, align 8
  store %struct.bcma_bus* %11, %struct.bcma_bus** %5, align 8
  %12 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %13 = load i32, i32* @BCMA_CC_CHIPCTL, align 4
  %14 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load i32, i32* @BCMA_CHIPCTL_4331_EXTPA_EN, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 9
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %28 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 11
  br i1 %31, label %32, label %36

32:                                               ; preds = %26, %17
  %33 = load i32, i32* @BCMA_CHIPCTL_4331_EXTPA_ON_GPIO2_5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %47

36:                                               ; preds = %26
  %37 = load %struct.bcma_bus*, %struct.bcma_bus** %5, align 8
  %38 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @BCMA_CHIPCTL_4331_EXTPA_EN2, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %32
  br label %61

48:                                               ; preds = %2
  %49 = load i32, i32* @BCMA_CHIPCTL_4331_EXTPA_EN, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @BCMA_CHIPCTL_4331_EXTPA_EN2, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @BCMA_CHIPCTL_4331_EXTPA_ON_GPIO2_5, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %6, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %48, %47
  %62 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %63 = load i32, i32* @BCMA_CC_CHIPCTL, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %62, i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_cc_write32(%struct.bcma_drv_cc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
