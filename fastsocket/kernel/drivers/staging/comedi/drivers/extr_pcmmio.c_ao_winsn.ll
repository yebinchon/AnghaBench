; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_ao_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_pcmmio.c_ao_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@subpriv = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @ao_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ao_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subpriv, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %128, %4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %131

25:                                               ; preds = %19
  %26 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %27 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CR_CHAN(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %31 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CR_RANGE(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %36 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %127

39:                                               ; preds = %25
  store i8 0, i8* %14, align 1
  %40 = load i32, i32* %13, align 4
  %41 = and i32 %40, 15
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %15, align 1
  %43 = load i32, i32* %12, align 4
  %44 = icmp uge i32 %43, 4
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = sub i32 %46, 4
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add i32 %48, 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i8, i8* %15, align 1
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %52, %53
  %55 = add i32 %54, 0
  %56 = call i32 @outb(i8 zeroext %51, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %57, %58
  %60 = add i32 %59, 1
  %61 = call i32 @outb(i8 zeroext 0, i32 %60)
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 %62, 1
  %64 = or i32 %63, 96
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %14, align 1
  %66 = load i8, i8* %14, align 1
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %67, %68
  %70 = add i32 %69, 2
  %71 = call i32 @outb(i8 zeroext %66, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %72, %73
  %75 = call i32 @wait_dac_ready(i32 %74)
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 255
  %82 = trunc i32 %81 to i8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %83, %84
  %86 = add i32 %85, 0
  %87 = call i32 @outb(i8 zeroext %82, i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = lshr i32 %92, 8
  %94 = and i32 %93, 255
  %95 = trunc i32 %94 to i8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add i32 %96, %97
  %99 = add i32 %98, 1
  %100 = call i32 @outb(i8 zeroext %95, i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = shl i32 %101, 1
  %103 = or i32 112, %102
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %14, align 1
  %105 = load i8, i8* %14, align 1
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %106, %107
  %109 = add i32 %108, 2
  %110 = call i32 @outb(i8 zeroext %105, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = add i32 %111, %112
  %114 = call i32 @wait_dac_ready(i32 %113)
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @subpriv, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %119, i32* %126, align 4
  br label %127

127:                                              ; preds = %50, %25
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %19

131:                                              ; preds = %19
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @wait_dac_ready(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
