; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_dio_insn_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_dio_insn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.BondedDevice** }
%struct.BondedDevice = type { i32, i32, i64 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@COMEDI_OUTPUT = common dso_local global i32 0, align 4
@COMEDI_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @bonding_dio_insn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_dio_insn_config(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.BondedDevice*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %106

33:                                               ; preds = %24
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.BondedDevice**, %struct.BondedDevice*** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.BondedDevice*, %struct.BondedDevice** %36, i64 %38
  %40 = load %struct.BondedDevice*, %struct.BondedDevice** %39, align 8
  store %struct.BondedDevice* %40, %struct.BondedDevice** %14, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %74 [
    i32 129, label %44
    i32 130, label %50
    i32 128, label %57
  ]

44:                                               ; preds = %33
  %45 = load i32, i32* @COMEDI_OUTPUT, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* %12, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %12, align 4
  br label %77

50:                                               ; preds = %33
  %51 = load i32, i32* @COMEDI_INPUT, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 1, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %77

57:                                               ; preds = %33
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @COMEDI_OUTPUT, align 4
  br label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @COMEDI_INPUT, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %72 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  br label %106

74:                                               ; preds = %33
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %106

77:                                               ; preds = %50, %44
  %78 = load %struct.BondedDevice*, %struct.BondedDevice** %14, align 8
  %79 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %10, align 4
  %85 = load %struct.BondedDevice*, %struct.BondedDevice** %14, align 8
  %86 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.BondedDevice*, %struct.BondedDevice** %14, align 8
  %89 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @comedi_dio_config(i32 %87, i32 %90, i32 %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %77
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  br label %106

99:                                               ; preds = %77
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %102 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %104 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %99, %96, %74, %67, %30
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_dio_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
