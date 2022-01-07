; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_set_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i16, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCI224_DACCEN = common dso_local global i64 0, align 8
@PCI224_DACCON_POLAR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_VREF_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFORESET = common dso_local global i16 0, align 2
@PCI224_DACCON = common dso_local global i64 0, align 8
@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@PCI224_DACCON_POLAR_BI = common dso_local global i32 0, align 4
@PCI224_DACDATA = common dso_local global i64 0, align 8
@PCI224_SOFTTRIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @pci224_ao_set_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_ao_set_data(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %10, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = shl i32 1, %17
  %19 = trunc i32 %18 to i16
  %20 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI224_DACCEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outw(i16 zeroext %19, i64 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PCI224_DACCON_POLAR_MASK, align 4
  %37 = load i32, i32* @PCI224_DACCON_VREF_MASK, align 4
  %38 = or i32 %36, %37
  %39 = call zeroext i16 @COMBINE(i16 zeroext %28, i32 %35, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i16 %39, i16* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i16, i16* %43, align 8
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* @PCI224_DACCON_FIFORESET, align 2
  %47 = zext i16 %46 to i32
  %48 = or i32 %45, %47
  %49 = trunc i32 %48 to i16
  %50 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCI224_DACCON, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outw(i16 zeroext %49, i64 %54)
  %56 = load i32, i32* %8, align 4
  %57 = trunc i32 %56 to i16
  %58 = zext i16 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 16, %61
  %63 = shl i32 %58, %62
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %9, align 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i16, i16* %66, align 8
  %68 = zext i16 %67 to i32
  %69 = load i32, i32* @PCI224_DACCON_POLAR_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @PCI224_DACCON_POLAR_BI, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %4
  %74 = load i16, i16* %9, align 2
  %75 = zext i16 %74 to i32
  %76 = xor i32 %75, 32768
  %77 = trunc i32 %76 to i16
  store i16 %77, i16* %9, align 2
  br label %78

78:                                               ; preds = %73, %4
  %79 = load i16, i16* %9, align 2
  %80 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCI224_DACDATA, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outw(i16 zeroext %79, i64 %84)
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PCI224_SOFTTRIG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @inw(i64 %90)
  ret void
}

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local zeroext i16 @COMBINE(i16 zeroext, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
