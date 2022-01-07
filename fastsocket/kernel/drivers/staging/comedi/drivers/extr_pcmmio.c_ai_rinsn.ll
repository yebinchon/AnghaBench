; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@subpriv = common dso_local global %struct.TYPE_2__* null, align 8
@AREF_DIFF = common dso_local global i32 0, align 4
@AREF_GROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @subpriv, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %138, %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %141

27:                                               ; preds = %21
  %28 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %29 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CR_CHAN(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %33 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CR_RANGE(i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CR_AREF(i32 %38)
  store i32 %39, i32* %13, align 4
  store i8 0, i8* %14, align 1
  store i32 0, i32* %15, align 4
  store i16 0, i16* %17, align 2
  %40 = load i32, i32* %11, align 4
  %41 = icmp ugt i32 %40, 7
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load i32, i32* %11, align 4
  %44 = sub i32 %43, 8
  store i32 %44, i32* %11, align 4
  store i32 4, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %27
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @AREF_DIFF, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load i32, i32* @AREF_GROUND, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i8, i8* %14, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %52, 128
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %14, align 1
  br label %55

55:                                               ; preds = %49, %45
  %56 = load i32, i32* %12, align 4
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i16 -32768, i16* %17, align 2
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %11, align 4
  %61 = urem i32 %60, 2
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8, i8* %14, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, 64
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %14, align 1
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, i32* %11, align 4
  %70 = udiv i32 %69, 2
  %71 = and i32 %70, 3
  %72 = shl i32 %71, 4
  %73 = load i8, i8* %14, align 1
  %74 = zext i8 %73 to i32
  %75 = or i32 %74, %72
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %14, align 1
  %77 = load i32, i32* %12, align 4
  %78 = and i32 %77, 3
  %79 = shl i32 %78, 2
  %80 = load i8, i8* %14, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %81, %79
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %14, align 1
  %84 = load i8, i8* %14, align 1
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = add i64 %85, %87
  %89 = add i64 %88, 2
  %90 = call i32 @outb(i8 zeroext %84, i64 %89)
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* %15, align 4
  %93 = zext i32 %92 to i64
  %94 = add i64 %91, %93
  %95 = call i32 @adc_wait_ready(i64 %94)
  %96 = load i8, i8* %14, align 1
  %97 = load i64, i64* %10, align 8
  %98 = load i32, i32* %15, align 4
  %99 = zext i32 %98 to i64
  %100 = add i64 %97, %99
  %101 = add i64 %100, 2
  %102 = call i32 @outb(i8 zeroext %96, i64 %101)
  %103 = load i64, i64* %10, align 8
  %104 = load i32, i32* %15, align 4
  %105 = zext i32 %104 to i64
  %106 = add i64 %103, %105
  %107 = call i32 @adc_wait_ready(i64 %106)
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %15, align 4
  %110 = zext i32 %109 to i64
  %111 = add i64 %108, %110
  %112 = add i64 %111, 0
  %113 = call i32 @inb(i64 %112)
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %16, align 2
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* %15, align 4
  %117 = zext i32 %116 to i64
  %118 = add i64 %115, %117
  %119 = add i64 %118, 1
  %120 = call i32 @inb(i64 %119)
  %121 = shl i32 %120, 8
  %122 = load i16, i16* %16, align 2
  %123 = sext i16 %122 to i32
  %124 = or i32 %123, %121
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %16, align 2
  %126 = load i16, i16* %17, align 2
  %127 = sext i16 %126 to i32
  %128 = load i16, i16* %16, align 2
  %129 = sext i16 %128 to i32
  %130 = add nsw i32 %129, %127
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* %16, align 2
  %132 = load i16, i16* %16, align 2
  %133 = sext i16 %132 to i32
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %68
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %21

141:                                              ; preds = %21
  %142 = load i32, i32* %9, align 4
  ret i32 %142
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_AREF(i32) #1

declare dso_local i32 @outb(i8 zeroext, i64) #1

declare dso_local i32 @adc_wait_ready(i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
