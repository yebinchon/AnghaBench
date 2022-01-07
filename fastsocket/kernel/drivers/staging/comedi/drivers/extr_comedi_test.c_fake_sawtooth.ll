; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_test.c_fake_sawtooth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_test.c_fake_sawtooth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_krange* }
%struct.comedi_krange = type { i64, i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*, i32, i64)* @fake_sawtooth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @fake_sawtooth(%struct.comedi_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_krange*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 0
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %7, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %8, align 4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.comedi_krange*, %struct.comedi_krange** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %23, i64 %25
  store %struct.comedi_krange* %26, %struct.comedi_krange** %10, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %28 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.comedi_krange*, %struct.comedi_krange** %10, align 8
  %37 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.comedi_krange*, %struct.comedi_krange** %10, align 8
  %40 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = call i32 @do_div(i32 %35, i64 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = urem i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %51, 2
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %53, %52
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @do_div(i32 %55, i64 %58)
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add i32 %63, %64
  %66 = trunc i32 %65 to i16
  ret i16 %66
}

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
