; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i64, i64, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }

@AO_CMD_STARTED = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@PCI224_INT_SCE = common dso_local global i64 0, align 8
@THISCPU = common dso_local global i64 0, align 8
@PCI224_DACCEN = common dso_local global i64 0, align 8
@PCI224_DACCON_TRIG_SW = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFOINTR_EMPTY = common dso_local global i32 0, align 4
@PCI224_DACCON_TRIG_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFOINTR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFORESET = common dso_local global i32 0, align 4
@PCI224_DACCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci224_ao_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_ao_stop(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %6 = load i32, i32* @AO_CMD_STARTED, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 6
  %9 = call i32 @test_and_clear_bit(i32 %6, i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %81

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI224_INT_SCE, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 0, i64 %23)
  br label %25

25:                                               ; preds = %38, %12
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @THISCPU, align 8
  %35 = icmp ne i64 %33, %34
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i1 [ false, %25 ], [ %35, %30 ]
  br i1 %37, label %38, label %47

38:                                               ; preds = %36
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  br label %25

47:                                               ; preds = %36
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCI224_DACCEN, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i32 0, i64 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PCI224_DACCON_TRIG_SW, align 4
  %62 = load i32, i32* @PCI224_DACCON_FIFOINTR_EMPTY, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @PCI224_DACCON_TRIG_MASK, align 4
  %65 = load i32, i32* @PCI224_DACCON_FIFOINTR_MASK, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @COMBINE(i32 %60, i32 %63, i32 %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PCI224_DACCON_FIFORESET, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI224_DACCON, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @outw(i32 %74, i64 %79)
  br label %81

81:                                               ; preds = %47, %11
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @COMBINE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
