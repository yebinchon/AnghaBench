; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_test.c_fake_squarewave.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_test.c_fake_squarewave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.comedi_krange* }
%struct.comedi_krange = type { i64, i64 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*, i32, i64)* @fake_squarewave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @fake_squarewave(%struct.comedi_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_krange*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 0
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %12, align 8
  store %struct.comedi_subdevice* %13, %struct.comedi_subdevice** %7, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %8, align 4
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.comedi_krange*, %struct.comedi_krange** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %22, i64 %24
  store %struct.comedi_krange* %25, %struct.comedi_krange** %10, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = urem i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.comedi_krange*, %struct.comedi_krange** %10, align 8
  %41 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.comedi_krange*, %struct.comedi_krange** %10, align 8
  %44 = getelementptr inbounds %struct.comedi_krange, %struct.comedi_krange* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %42, %45
  %47 = call i32 @do_div(i32 %39, i64 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = udiv i64 %51, 2
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %3
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %55, -1
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %3
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add i32 %58, %59
  %61 = trunc i32 %60 to i16
  ret i16 %61
}

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
