; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@DAC_CONTROL0_REG = common dso_local global i64 0, align 8
@PLX_DESC_IN_PCI_BIT = common dso_local global i32 0, align 4
@PLX_INTR_TERM_COUNT = common dso_local global i32 0, align 4
@ao_inttrig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store %struct.comedi_cmd* %10, %struct.comedi_cmd** %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = call i64 @external_ai_queue_in_use(%struct.comedi_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = call i32 @warn_external_queue(%struct.comedi_device* %15)
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %21 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DAC_CONTROL0_REG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writew(i32 0, i64 %25)
  %27 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %28 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %41 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %42 = call i32 @set_dac_select_reg(%struct.comedi_device* %40, %struct.comedi_cmd* %41)
  %43 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %44 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %45 = call i32 @set_dac_interval_regs(%struct.comedi_device* %43, %struct.comedi_cmd* %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %47 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %48 = call %struct.TYPE_4__* @priv(%struct.comedi_device* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PLX_DESC_IN_PCI_BIT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PLX_INTR_TERM_COUNT, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @load_first_dma_descriptor(%struct.comedi_device* %46, i32 0, i32 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %57 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %58 = call i32 @set_dac_control1_reg(%struct.comedi_device* %56, %struct.comedi_cmd* %57)
  %59 = load i32, i32* @ao_inttrig, align 4
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %19, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @external_ai_queue_in_use(%struct.comedi_device*) #1

declare dso_local i32 @warn_external_queue(%struct.comedi_device*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local %struct.TYPE_4__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @set_dac_select_reg(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @set_dac_interval_regs(%struct.comedi_device*, %struct.comedi_cmd*) #1

declare dso_local i32 @load_first_dma_descriptor(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @set_dac_control1_reg(%struct.comedi_device*, %struct.comedi_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
