; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2811.c_dt2811_ai_insn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_dt2811.c_dt2811_ai_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@DT2811_TIMEOUT = common dso_local global i32 0, align 4
@DT2811_ADGCR = common dso_local global i64 0, align 8
@DT2811_ADCSR = common dso_local global i64 0, align 8
@DT2811_ADBUSY = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@DT2811_ADDATLO = common dso_local global i64 0, align 8
@DT2811_ADDATHI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @dt2811_ai_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt2811_ai_insn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @DT2811_TIMEOUT, align 4
  store i32 %17, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %86, %4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %89

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DT2811_ADGCR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outb(i32 %25, i64 %30)
  br label %32

32:                                               ; preds = %47, %24
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DT2811_ADCSR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @inb(i64 %40)
  %42 = load i32, i32* @DT2811_ADBUSY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %35, %32
  %46 = phi i1 [ false, %32 ], [ %44, %35 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %11, align 4
  br label %32

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ETIME, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %91

56:                                               ; preds = %50
  %57 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DT2811_ADDATLO, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @inb(i64 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DT2811_ADDATHI, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @inb(i64 %71)
  %73 = shl i32 %72, 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 4095
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %56
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %18

89:                                               ; preds = %18
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %53
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
