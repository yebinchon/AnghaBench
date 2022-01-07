; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adq12b.c_adq12b_ai_rinsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adq12b.c_adq12b_ai_rinsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@ADQ12B_CTREG = common dso_local global i64 0, align 8
@ADQ12B_ADLOW = common dso_local global i64 0, align 8
@ADQ12B_STINR = common dso_local global i64 0, align 8
@ADQ12B_EOC = common dso_local global i8 0, align 1
@TIMEOUT = common dso_local global i32 0, align 4
@ADQ12B_ADHIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @adq12b_ai_rinsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adq12b_ai_rinsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_RANGE(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %21 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CR_CHAN(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29, %4
  %36 = load i32, i32* %11, align 4
  %37 = shl i32 %36, 4
  %38 = load i32, i32* %12, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ADQ12B_CTREG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outb(i32 %39, i64 %44)
  %46 = call i32 @udelay(i32 50)
  br label %47

47:                                               ; preds = %35, %29
  %48 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ADQ12B_ADLOW, align 8
  %52 = add nsw i64 %50, %51
  %53 = call zeroext i8 @inb(i64 %52)
  store i8 %53, i8* %15, align 1
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %108, %47
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %57 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %111

60:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %83, %60
  %62 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ADQ12B_STINR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call zeroext i8 @inb(i64 %66)
  store i8 %67, i8* %15, align 1
  %68 = load i8, i8* %15, align 1
  %69 = zext i8 %68 to i32
  %70 = load i8, i8* @ADQ12B_EOC, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %69, %71
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %15, align 1
  br label %74

74:                                               ; preds = %61
  %75 = load i8, i8* %15, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* @TIMEOUT, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i1 [ false, %74 ], [ %82, %78 ]
  br i1 %84, label %61, label %85

85:                                               ; preds = %83
  %86 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ADQ12B_ADHIG, align 8
  %90 = add nsw i64 %88, %89
  %91 = call zeroext i8 @inb(i64 %90)
  store i8 %91, i8* %13, align 1
  %92 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %93 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @ADQ12B_ADLOW, align 8
  %96 = add nsw i64 %94, %95
  %97 = call zeroext i8 @inb(i64 %96)
  store i8 %97, i8* %14, align 1
  %98 = load i8, i8* %13, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 8
  %101 = load i8, i8* %14, align 1
  %102 = zext i8 %101 to i32
  %103 = or i32 %100, %102
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %85
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %54

111:                                              ; preds = %54
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
