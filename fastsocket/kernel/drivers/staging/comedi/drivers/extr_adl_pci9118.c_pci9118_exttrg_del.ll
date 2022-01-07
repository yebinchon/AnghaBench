; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_exttrg_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_pci9118_exttrg_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@Int_DTrg = common dso_local global i32 0, align 4
@AMCC_OP_REG_INTCSR = common dso_local global i64 0, align 8
@PCI9118_INTCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i8)* @pci9118_exttrg_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci9118_exttrg_del(%struct.comedi_device* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp sgt i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %59

10:                                               ; preds = %2
  %11 = load i8, i8* %5, align 1
  %12 = zext i8 %11 to i32
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %58, label %23

23:                                               ; preds = %10
  %24 = load i32, i32* @Int_DTrg, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @inl(i64 %39)
  %41 = and i32 %40, -7937
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AMCC_OP_REG_INTCSR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outl(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %34, %23
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PCI9118_INTCTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outl(i32 %51, i64 %56)
  br label %58

58:                                               ; preds = %48, %10
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %9
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
