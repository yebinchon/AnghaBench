; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_encoder_insn_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_multiq3.c_multiq3_encoder_insn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@MULTIQ3_CONTROL_MUST = common dso_local global i32 0, align 4
@MULTIQ3_AD_MUX_EN = common dso_local global i32 0, align 4
@MULTIQ3_CONTROL = common dso_local global i64 0, align 8
@MULTIQ3_BP_RESET = common dso_local global i32 0, align 4
@MULTIQ3_ENC_CONTROL = common dso_local global i64 0, align 8
@MULTIQ3_TRSFRCNTR_OL = common dso_local global i32 0, align 4
@MULTIQ3_ENC_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @multiq3_encoder_insn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multiq3_encoder_insn_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @MULTIQ3_CONTROL_MUST, align 4
  %18 = load i32, i32* @MULTIQ3_AD_MUX_EN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %10, align 4
  %21 = shl i32 %20, 3
  %22 = or i32 %19, %21
  store i32 %22, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %82, %4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MULTIQ3_CONTROL, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outw(i32 %30, i64 %35)
  %37 = load i32, i32* @MULTIQ3_BP_RESET, align 4
  %38 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MULTIQ3_ENC_CONTROL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  %44 = load i32, i32* @MULTIQ3_TRSFRCNTR_OL, align 4
  %45 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MULTIQ3_ENC_CONTROL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MULTIQ3_ENC_DATA, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @inb(i64 %55)
  store i32 %56, i32* %12, align 4
  %57 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MULTIQ3_ENC_DATA, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @inb(i64 %61)
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MULTIQ3_ENC_DATA, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inb(i64 %70)
  %72 = shl i32 %71, 16
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 8388608
  %77 = and i32 %76, 16777215
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %29
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %23

85:                                               ; preds = %23
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
