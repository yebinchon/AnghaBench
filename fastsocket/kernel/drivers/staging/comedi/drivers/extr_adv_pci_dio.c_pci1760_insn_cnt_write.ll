; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci1760_insn_cnt_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci1760_insn_cnt_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i8 }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@CMD_SetIDI0CntResetValue = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@CMD_ResetIDICounters = common dso_local global i8 0, align 1
@CMD_EnableIDICounters = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci1760_insn_cnt_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1760_insn_cnt_write(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca [4 x i8], align 1
  %14 = alloca [4 x i8], align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CR_CHAN(i32 %17)
  %19 = and i32 %18, 7
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %11, align 1
  %21 = load i8, i8* %11, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 1, %22
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %12, align 1
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %25, align 1
  %31 = getelementptr inbounds i8, i8* %25, i64 1
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = lshr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %31, align 1
  %38 = getelementptr inbounds i8, i8* %31, i64 1
  %39 = load i32, i32* @CMD_SetIDI0CntResetValue, align 4
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %39, %41
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %38, align 1
  %44 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 0, i8* %44, align 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i8, i8* %11, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 65535
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %4
  %58 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %61 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %58, i8* %59, i8* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %5, align 4
  br label %122

66:                                               ; preds = %57
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 65535
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %66, %4
  %78 = load i8, i8* %12, align 1
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %78, i8* %79, align 1
  %80 = load i8, i8* @CMD_ResetIDICounters, align 1
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  store i8 %80, i8* %81, align 1
  %82 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %83 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %85 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %82, i8* %83, i8* %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %122

90:                                               ; preds = %77
  %91 = load i8, i8* %12, align 1
  %92 = zext i8 %91 to i32
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i8, i8* %94, align 8
  %96 = zext i8 %95 to i32
  %97 = and i32 %92, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %90
  %100 = load i8, i8* %12, align 1
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %100, i8* %101, align 1
  %102 = load i8, i8* @CMD_EnableIDICounters, align 1
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  store i8 %102, i8* %103, align 1
  %104 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i64 0, i64 0
  %107 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %104, i8* %105, i8* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %122

112:                                              ; preds = %99
  %113 = load i8, i8* %12, align 1
  %114 = zext i8 %113 to i32
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i8, i8* %116, align 8
  %118 = zext i8 %117 to i32
  %119 = or i32 %118, %114
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 8
  br label %121

121:                                              ; preds = %112, %90
  store i32 1, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %110, %88, %64
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @pci1760_mbxrequest(%struct.comedi_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
