; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_munge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@thisboard = common dso_local global %struct.TYPE_5__* null, align 8
@devpriv = common dso_local global %struct.TYPE_6__* null, align 8
@PCI224_DACCON_POLAR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_POLAR_UNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @pci224_ao_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_ao_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_async*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.comedi_async*, %struct.comedi_async** %18, align 8
  store %struct.comedi_async* %19, %struct.comedi_async** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i16*
  store i16* %21, i16** %12, align 8
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = udiv i64 %23, 2
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @thisboard, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 16, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %34 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @CR_RANGE(i32 %38)
  %40 = getelementptr inbounds i32, i32* %32, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PCI224_DACCON_POLAR_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @PCI224_DACCON_POLAR_UNI, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %48

47:                                               ; preds = %5
  store i32 32768, i32* %14, align 4
  br label %48

48:                                               ; preds = %47, %46
  store i32 0, i32* %16, align 4
  br label %49

49:                                               ; preds = %69, %48
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i16*, i16** %12, align 8
  %55 = load i32, i32* %16, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = load i32, i32* %15, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %14, align 4
  %63 = sub i32 %61, %62
  %64 = trunc i32 %63 to i16
  %65 = load i16*, i16** %12, align 8
  %66 = load i32, i32* %16, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  store i16 %64, i16* %68, align 2
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %16, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %49

72:                                               ; preds = %49
  ret void
}

declare dso_local i64 @CR_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
