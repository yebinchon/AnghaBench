; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmad.c_pcmad_ai_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmad.c_pcmad_ai_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@PCMAD_CONVERT = common dso_local global i64 0, align 8
@TIMEOUT = common dso_local global i32 0, align 4
@PCMAD_STATUS = common dso_local global i64 0, align 8
@PCMAD_LSB = common dso_local global i64 0, align 8
@PCMAD_MSB = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pcmad_ai_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmad_ai_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %89, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %19 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %92

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCMAD_CONVERT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb(i32 %23, i64 %28)
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %45, %22
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @TIMEOUT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PCMAD_STATUS, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @inb(i64 %39)
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %48

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %30

48:                                               ; preds = %43, %30
  %49 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCMAD_LSB, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inb(i64 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %60 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PCMAD_MSB, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @inb(i64 %63)
  %65 = shl i32 %64, 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %48
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @this_board, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = shl i32 1, %80
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, %81
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %76, %48
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %16

92:                                               ; preds = %16
  %93 = load i32, i32* %11, align 4
  ret i32 %93
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
