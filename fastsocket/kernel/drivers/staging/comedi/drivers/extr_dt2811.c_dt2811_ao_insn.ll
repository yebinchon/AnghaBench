; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2811.c_dt2811_ao_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2811.c_dt2811_ao_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DT2811_DADAT0LO = common dso_local global i64 0, align 8
@DT2811_DADAT0HI = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt2811_ao_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2811_ao_insn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %12 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CR_CHAN(i32 %13)
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %66, %4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %15
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  %28 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DT2811_DADAT0LO, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = call i32 @outb(i32 %27, i64 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DT2811_DADAT0HI, align 8
  %49 = add nsw i64 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 2, %50
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = call i32 @outb(i32 %44, i64 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %21
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %15

69:                                               ; preds = %15
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
