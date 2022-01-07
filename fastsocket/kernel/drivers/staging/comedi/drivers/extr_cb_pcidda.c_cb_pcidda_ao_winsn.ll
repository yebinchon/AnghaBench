; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_ao_winsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidda.c_cb_pcidda_ao_winsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@NOSU = common dso_local global i32 0, align 4
@ENABLEDAC = common dso_local global i32 0, align 4
@BIP = common dso_local global i32 0, align 4
@RANGE10V = common dso_local global i32 0, align 4
@RANGE5V = common dso_local global i32 0, align 4
@RANGE2V5 = common dso_local global i32 0, align 4
@UNIP = common dso_local global i32 0, align 4
@DACONTROL = common dso_local global i64 0, align 8
@DADATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @cb_pcidda_ao_winsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidda_ao_winsn(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
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
  %13 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @CR_CHAN(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.comedi_insn*, %struct.comedi_insn** %7, align 8
  %17 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CR_RANGE(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %20, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @cb_pcidda_calibrate(%struct.comedi_device* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %4
  %35 = load i32, i32* @NOSU, align 4
  %36 = load i32, i32* @ENABLEDAC, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %75 [
    i32 0, label %39
    i32 1, label %45
    i32 2, label %51
    i32 3, label %57
    i32 4, label %63
    i32 5, label %69
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* @BIP, align 4
  %41 = load i32, i32* @RANGE10V, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %75

45:                                               ; preds = %34
  %46 = load i32, i32* @BIP, align 4
  %47 = load i32, i32* @RANGE5V, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %75

51:                                               ; preds = %34
  %52 = load i32, i32* @BIP, align 4
  %53 = load i32, i32* @RANGE2V5, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %75

57:                                               ; preds = %34
  %58 = load i32, i32* @UNIP, align 4
  %59 = load i32, i32* @RANGE10V, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %75

63:                                               ; preds = %34
  %64 = load i32, i32* @UNIP, align 4
  %65 = load i32, i32* @RANGE5V, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %75

69:                                               ; preds = %34
  %70 = load i32, i32* @UNIP, align 4
  %71 = load i32, i32* @RANGE2V5, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %34, %69, %63, %57, %51, %45, %39
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 %76, 2
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DACONTROL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outw(i32 %80, i64 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DADATA, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* %10, align 4
  %96 = mul i32 %95, 2
  %97 = zext i32 %96 to i64
  %98 = add nsw i64 %94, %97
  %99 = call i32 @outw(i32 %89, i64 %98)
  ret i32 1
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @cb_pcidda_calibrate(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
