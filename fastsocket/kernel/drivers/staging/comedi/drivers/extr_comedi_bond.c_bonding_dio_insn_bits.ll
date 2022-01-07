; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_dio_insn_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_comedi_bond.c_bonding_dio_insn_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.BondedDevice** }
%struct.BondedDevice = type { i32, i32, i32 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@LSAMPL_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @bonding_dio_insn_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bonding_dio_insn_bits(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.BondedDevice*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %128

24:                                               ; preds = %4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %24
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %121, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %40, %43
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i1 [ false, %35 ], [ %44, %39 ]
  br i1 %46, label %47, label %124

47:                                               ; preds = %45
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load %struct.BondedDevice**, %struct.BondedDevice*** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.BondedDevice*, %struct.BondedDevice** %50, i64 %52
  %54 = load %struct.BondedDevice*, %struct.BondedDevice** %53, align 8
  store %struct.BondedDevice* %54, %struct.BondedDevice** %13, align 8
  %55 = load %struct.BondedDevice*, %struct.BondedDevice** %13, align 8
  %56 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  %60 = load %struct.BondedDevice*, %struct.BondedDevice** %13, align 8
  %61 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp uge i64 %63, 32
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  store i32 -1, i32* %14, align 4
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = lshr i32 %69, %70
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %15, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = lshr i32 %76, %77
  %79 = load i32, i32* %14, align 4
  %80 = and i32 %78, %79
  store i32 %80, i32* %16, align 4
  %81 = load %struct.BondedDevice*, %struct.BondedDevice** %13, align 8
  %82 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.BondedDevice*, %struct.BondedDevice** %13, align 8
  %85 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @comedi_dio_bitfield(i32 %83, i32 %86, i32 %87, i32* %16)
  %89 = icmp ne i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %66
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %128

93:                                               ; preds = %66
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %11, align 4
  %96 = shl i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %14, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = shl i32 %104, %105
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %115 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.BondedDevice*, %struct.BondedDevice** %13, align 8
  %117 = getelementptr inbounds %struct.BondedDevice, %struct.BondedDevice* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %93
  %122 = load i32, i32* %12, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %35

124:                                              ; preds = %45
  %125 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %126 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %90, %21
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @comedi_dio_bitfield(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
