; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_munge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt282x.c_dt282x_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.comedi_device = type { i32 }

@boardtype = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@devpriv = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"bug! odd number of bytes from dma xfer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16*, i32)* @dt282x_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt282x_munge(%struct.comedi_device* %0, i16* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i16* %1, i16** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %12 = shl i32 1, %11
  %13 = sub nsw i32 %12, 1
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %8, align 2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %16 = sub nsw i32 %15, 1
  %17 = shl i32 1, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %9, align 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boardtype, i32 0, i32 0), align 4
  %25 = sub nsw i32 %24, 1
  %26 = shl i32 1, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %9, align 2
  br label %29

28:                                               ; preds = %3
  store i16 0, i16* %9, align 2
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %6, align 4
  %31 = urem i32 %30, 2
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = call i32 @comedi_error(%struct.comedi_device* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %29
  %37 = load i32, i32* %6, align 4
  %38 = udiv i32 %37, 2
  store i32 %38, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %61, %36
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load i16*, i16** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %44, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = sext i16 %48 to i32
  %50 = load i16, i16* %8, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = load i16, i16* %9, align 2
  %54 = zext i16 %53 to i32
  %55 = xor i32 %52, %54
  %56 = trunc i32 %55 to i16
  %57 = load i16*, i16** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i16, i16* %57, i64 %59
  store i16 %56, i16* %60, align 2
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %7, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %39

64:                                               ; preds = %39
  ret void
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
