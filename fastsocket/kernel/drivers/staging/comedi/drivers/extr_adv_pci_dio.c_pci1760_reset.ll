; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci1760_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci_dio.c_pci1760_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.comedi_device = type { i64 }

@INTCSR0 = common dso_local global i64 0, align 8
@INTCSR1 = common dso_local global i64 0, align 8
@INTCSR2 = common dso_local global i64 0, align 8
@INTCSR3 = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_2__* null, align 8
@CMD_SetRelaysOutput = common dso_local global i8 0, align 1
@CMD_EnableIDICounters = common dso_local global i8 0, align 1
@CMD_OverflowIDICounters = common dso_local global i8 0, align 1
@CMD_MatchIntIDICounters = common dso_local global i8 0, align 1
@CMD_SetIDI0CntMatchValue = common dso_local global i32 0, align 4
@CMD_SetIDI0CntResetValue = common dso_local global i32 0, align 4
@CMD_ResetIDICounters = common dso_local global i8 0, align 1
@CMD_EdgeIDICounters = common dso_local global i8 0, align 1
@CMD_EnableIDIFilters = common dso_local global i8 0, align 1
@CMD_EnableIDIPatternMatch = common dso_local global i8 0, align 1
@CMD_SetIDIPatternMatch = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @pci1760_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci1760_reset(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  %5 = alloca [4 x i8], align 1
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = bitcast [4 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 4, i1 false)
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INTCSR0, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb(i32 0, i64 %11)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @INTCSR1, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i32 0, i64 %17)
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INTCSR2, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb(i32 0, i64 %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INTCSR3, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 0, i64 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %33, align 1
  %34 = load i8, i8* @CMD_SetRelaysOutput, align 1
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %34, i8* %35, align 1
  %36 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %39 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %36, i8* %37, i8* %38)
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %40, align 1
  %41 = load i8, i8* @CMD_EnableIDICounters, align 1
  %42 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %41, i8* %42, align 1
  %43 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %44 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %46 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %43, i8* %44, i8* %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %49, align 1
  %50 = load i8, i8* @CMD_OverflowIDICounters, align 1
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %50, i8* %51, align 1
  %52 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %54 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %55 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %52, i8* %53, i8* %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %58, align 1
  %59 = load i8, i8* @CMD_MatchIntIDICounters, align 1
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %59, i8* %60, align 1
  %61 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %62 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %64 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %61, i8* %62, i8* %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 -128, i8* %68, align 1
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %88, %1
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 8
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i32, i32* @CMD_SetIDI0CntMatchValue, align 4
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %73, %74
  %76 = trunc i32 %75 to i8
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %76, i8* %77, align 1
  %78 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %81 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %78, i8* %79, i8* %80)
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 32768, i32* %87, align 4
  br label %88

88:                                               ; preds = %72
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %69

91:                                               ; preds = %69
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %92, align 1
  %93 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 1
  store i8 0, i8* %93, align 1
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %113, %91
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load i32, i32* @CMD_SetIDI0CntResetValue, align 4
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %98, %99
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %101, i8* %102, align 1
  %103 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %106 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %103, i8* %104, i8* %105)
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %3, align 4
  br label %94

116:                                              ; preds = %94
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 -1, i8* %117, align 1
  %118 = load i8, i8* @CMD_ResetIDICounters, align 1
  %119 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %118, i8* %119, align 1
  %120 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %123 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %120, i8* %121, i8* %122)
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %124, align 1
  %125 = load i8, i8* @CMD_EdgeIDICounters, align 1
  %126 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %125, i8* %126, align 1
  %127 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %130 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %127, i8* %128, i8* %129)
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 2
  store i32 0, i32* %132, align 8
  %133 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %133, align 1
  %134 = load i8, i8* @CMD_EnableIDIFilters, align 1
  %135 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %134, i8* %135, align 1
  %136 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %137 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %138 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %139 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %136, i8* %137, i8* %138)
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 3
  store i32 0, i32* %141, align 4
  %142 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %142, align 1
  %143 = load i8, i8* @CMD_EnableIDIPatternMatch, align 1
  %144 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %143, i8* %144, align 1
  %145 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %147 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %148 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %145, i8* %146, i8* %147)
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 4
  store i32 0, i32* %150, align 8
  %151 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %151, align 1
  %152 = load i8, i8* @CMD_SetIDIPatternMatch, align 1
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 2
  store i8 %152, i8* %153, align 1
  %154 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %155 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %156 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %157 = call i32 @pci1760_mbxrequest(%struct.comedi_device* %154, i8* %155, i8* %156)
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 5
  store i32 0, i32* %159, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @outb(i32, i64) #2

declare dso_local i32 @pci1760_mbxrequest(%struct.comedi_device*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
