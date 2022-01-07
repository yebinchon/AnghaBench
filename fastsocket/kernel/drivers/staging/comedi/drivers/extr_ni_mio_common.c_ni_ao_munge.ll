; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_munge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ao_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }

@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @ni_ao_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ao_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.comedi_async*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i16*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %17, i32 0, i32 0
  %19 = load %struct.comedi_async*, %struct.comedi_async** %18, align 8
  store %struct.comedi_async* %19, %struct.comedi_async** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = zext i32 %20 to i64
  %22 = udiv i64 %21, 2
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to i16*
  store i16* %25, i16** %16, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 8
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 1, %27
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %68, %5
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %35 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CR_RANGE(i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 1), align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45, %33
  %50 = load i32, i32* %14, align 4
  %51 = load i16*, i16** %16, align 8
  %52 = load i32, i32* %13, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %51, i64 %53
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  %57 = sub i32 %56, %50
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %54, align 2
  br label %59

59:                                               ; preds = %49, %45
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  %62 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  %63 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = urem i32 %66, %65
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %13, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %29

71:                                               ; preds = %29
  ret void
}

declare dso_local i32 @CR_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
