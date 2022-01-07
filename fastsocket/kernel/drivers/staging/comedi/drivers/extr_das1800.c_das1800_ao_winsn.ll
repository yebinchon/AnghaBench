; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ao_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ao_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i16 }
%struct.comedi_device = type { i32, i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@thisboard = common dso_local global %struct.TYPE_3__* null, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@DAS1800_SELECT = common dso_local global i64 0, align 8
@DAS1800_DAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @das1800_ao_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das1800_ao_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca %struct.comedi_insn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %14 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CR_CHAN(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @thisboard, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 1, %27
  %29 = sub i32 %23, %28
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %11, align 2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i16, i16* %11, align 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i16 %35, i16* %37, align 2
  br label %38

38:                                               ; preds = %34, %4
  %39 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @DAC(i32 %43)
  %45 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DAS1800_SELECT, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  %51 = load i16, i16* %11, align 2
  %52 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DAS1800_DAC, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outw(i16 signext %51, i64 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %38
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @DAC(i32 %62)
  %64 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @DAS1800_SELECT, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i32 %63, i64 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i16, i16* %71, align 2
  %73 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %74 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @DAS1800_DAC, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outw(i16 signext %72, i64 %77)
  br label %79

79:                                               ; preds = %61, %38
  %80 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %81 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %80, i32 0, i32 0
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  ret i32 1
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @DAC(i32) #1

declare dso_local i32 @outw(i16 signext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
