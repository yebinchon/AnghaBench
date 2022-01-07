; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_ao_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_das16_cs.c_das16cs_ao_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i16 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das16cs_ao_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16cs_ao_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %125, %4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %128

25:                                               ; preds = %19
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %12, align 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i16, i16* %44, align 8
  %46 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 4
  %50 = call i32 @outw(i16 zeroext %45, i64 %49)
  %51 = call i32 @udelay(i32 1)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i16, i16* %53, align 8
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, -16
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %11, align 2
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %25
  %61 = load i16, i16* %11, align 2
  %62 = zext i16 %61 to i32
  %63 = or i32 %62, 1
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %11, align 2
  br label %70

65:                                               ; preds = %25
  %66 = load i16, i16* %11, align 2
  %67 = zext i16 %66 to i32
  %68 = or i32 %67, 8
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %11, align 2
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i16, i16* %11, align 2
  %72 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %73 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, 4
  %76 = call i32 @outw(i16 zeroext %71, i64 %75)
  %77 = call i32 @udelay(i32 1)
  store i32 15, i32* %13, align 4
  br label %78

78:                                               ; preds = %112, %70
  %79 = load i32, i32* %13, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %115

81:                                               ; preds = %78
  %82 = load i16, i16* %12, align 2
  %83 = zext i16 %82 to i32
  %84 = load i32, i32* %13, align 4
  %85 = ashr i32 %83, %84
  %86 = and i32 %85, 1
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = shl i32 %87, 1
  store i32 %88, i32* %14, align 4
  %89 = load i16, i16* %11, align 2
  %90 = zext i16 %89 to i32
  %91 = load i32, i32* %14, align 4
  %92 = or i32 %90, %91
  %93 = trunc i32 %92 to i16
  %94 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %95 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 4
  %98 = call i32 @outw(i16 zeroext %93, i64 %97)
  %99 = call i32 @udelay(i32 1)
  %100 = load i16, i16* %11, align 2
  %101 = zext i16 %100 to i32
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %101, %102
  %104 = or i32 %103, 4
  %105 = trunc i32 %104 to i16
  %106 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 4
  %110 = call i32 @outw(i16 zeroext %105, i64 %109)
  %111 = call i32 @udelay(i32 1)
  br label %112

112:                                              ; preds = %81
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %13, align 4
  br label %78

115:                                              ; preds = %78
  %116 = load i16, i16* %11, align 2
  %117 = zext i16 %116 to i32
  %118 = or i32 %117, 9
  %119 = trunc i32 %118 to i16
  %120 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %121 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 4
  %124 = call i32 @outw(i16 zeroext %119, i64 %123)
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %19

128:                                              ; preds = %19
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
