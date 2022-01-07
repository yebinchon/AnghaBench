; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8, i64, i8, i32, i32, i64, i64, i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@AO_CMD_STARTED = common dso_local global i32 0, align 4
@TRIG_TIMER = common dso_local global i64 0, align 8
@PCI230_INT_ZCLK_CT1 = common dso_local global i8 0, align 1
@PCI230P2_INT_DAC = common dso_local global i8 0, align 1
@THISCPU = common dso_local global i64 0, align 8
@PCI230_INT_SCE = common dso_local global i64 0, align 8
@PCI230_DAC_OR_MASK = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_RESET = common dso_local global i32 0, align 4
@PCI230P2_DAC_FIFO_UNDERRUN_CLEAR = common dso_local global i32 0, align 4
@PCI230_DACCON = common dso_local global i64 0, align 8
@OWNER_AOCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ao_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ao_stop(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_cmd*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* @AO_CMD_STARTED, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 9
  %16 = call i32 @test_and_clear_bit(i32 %13, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %139

24:                                               ; preds = %2
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.comedi_cmd* %28, %struct.comedi_cmd** %8, align 8
  %29 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %30 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TRIG_TIMER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %36 = call i32 @pci230_cancel_ct(%struct.comedi_device* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %24
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %40, 2
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i8, i8* @PCI230_INT_ZCLK_CT1, align 1
  store i8 %43, i8* %6, align 1
  br label %46

44:                                               ; preds = %37
  %45 = load i8, i8* @PCI230P2_INT_DAC, align 1
  store i8 %45, i8* %6, align 1
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load i8, i8* %6, align 1
  %52 = zext i8 %51 to i32
  %53 = xor i32 %52, -1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i8, i8* %55, align 4
  %57 = zext i8 %56 to i32
  %58 = and i32 %57, %53
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 4
  br label %60

60:                                               ; preds = %73, %46
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @THISCPU, align 8
  %70 = icmp ne i64 %68, %69
  br label %71

71:                                               ; preds = %65, %60
  %72 = phi i1 [ false, %60 ], [ %70, %65 ]
  br i1 %72, label %73, label %82

73:                                               ; preds = %71
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 5
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 5
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  br label %60

82:                                               ; preds = %71
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i8, i8* %84, align 8
  %86 = zext i8 %85 to i32
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i8, i8* %88, align 4
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %86, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %82
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i8, i8* %94, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i8 %95, i8* %97, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  %100 = load i8, i8* %99, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCI230_INT_SCE, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @outb(i8 zeroext %100, i64 %105)
  br label %107

107:                                              ; preds = %92, %82
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 5
  %110 = load i64, i64* %5, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 2
  br i1 %115, label %116, label %135

116:                                              ; preds = %107
  %117 = load i32, i32* @PCI230_DAC_OR_MASK, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PCI230P2_DAC_FIFO_RESET, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @PCI230P2_DAC_FIFO_UNDERRUN_CLEAR, align 4
  %128 = or i32 %126, %127
  %129 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %130 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PCI230_DACCON, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @outw(i32 %128, i64 %133)
  br label %135

135:                                              ; preds = %116, %107
  %136 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %137 = load i32, i32* @OWNER_AOCMD, align 4
  %138 = call i32 @put_all_resources(%struct.comedi_device* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %23
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci230_cancel_ct(%struct.comedi_device*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @put_all_resources(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
