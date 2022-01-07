; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_insn_read_ai.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adv_pci1710.c_pci171x_insn_read_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"adv_pci1710 EDBG: BGN: pci171x_insn_read_ai(...)\0A\00", align 1
@Control_CNT0 = common dso_local global i32 0, align 4
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@Control_SW = common dso_local global i32 0, align 4
@PCI171x_CONTROL = common dso_local global i64 0, align 8
@PCI171x_CLRFIFO = common dso_local global i64 0, align 8
@PCI171x_CLRINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"adv_pci1710 A ST=%4x IO=%x\0A\00", align 1
@PCI171x_STATUS = common dso_local global i64 0, align 8
@PCI171x_SOFTTRG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"adv_pci1710 B n=%d ST=%4x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"adv_pci1710 C n=%d ST=%4x\0A\00", align 1
@Status_FE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"adv_pci1710 D n=%d tm=%d ST=%4x\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"A/D insn timeout\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"adv_pci1710 EDBG: END: pci171x_insn_read_ai(...) n=%d\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@PCI171x_AD_DATA = common dso_local global i64 0, align 8
@TYPE_PCI1713 = common dso_local global i64 0, align 8
@this_board = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i32*)* @pci171x_insn_read_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci171x_insn_read_ai(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_insn*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @Control_CNT0, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load i32, i32* @Control_SW, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI171x_CONTROL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @outw(i32 %25, i64 %30)
  %32 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PCI171x_CLRFIFO, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outb(i32 0, i64 %36)
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCI171x_CLRINT, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 0, i64 %42)
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %46 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %47 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %46, i32 0, i32 1
  %48 = call i32 @setup_channel_list(%struct.comedi_device* %44, %struct.comedi_subdevice* %45, i32* %47, i32 1, i32 1)
  %49 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PCI171x_STATUS, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @inw(i64 %53)
  %55 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PCI171x_STATUS, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %59)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %155, %4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.comedi_insn*, %struct.comedi_insn** %8, align 8
  %64 = getelementptr inbounds %struct.comedi_insn, %struct.comedi_insn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %158

67:                                               ; preds = %61
  %68 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %69 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PCI171x_SOFTTRG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @outw(i32 0, i64 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %76 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCI171x_STATUS, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @inw(i64 %79)
  %81 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %84 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PCI171x_STATUS, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @inw(i64 %87)
  %89 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %88)
  store i32 100, i32* %11, align 4
  br label %90

90:                                               ; preds = %119, %67
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %11, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %90
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PCI171x_STATUS, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @inw(i64 %99)
  %101 = load i32, i32* @Status_FE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  br label %143

105:                                              ; preds = %94
  %106 = load i32, i32* %11, align 4
  %107 = srem i32 %106, 10
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %113 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PCI171x_STATUS, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @inw(i64 %116)
  %118 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %111, i32 %117)
  br label %119

119:                                              ; preds = %109, %105
  br label %90

120:                                              ; preds = %90
  %121 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %122 = call i32 @comedi_error(%struct.comedi_device* %121, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %124 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @PCI171x_CLRFIFO, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @outb(i32 0, i64 %127)
  %129 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %130 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @PCI171x_CLRINT, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @outb(i32 0, i64 %133)
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 0, i32* %138, align 4
  %139 = load i32, i32* %10, align 4
  %140 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @ETIME, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %5, align 4
  br label %174

143:                                              ; preds = %104
  %144 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %145 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PCI171x_AD_DATA, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @inw(i64 %148)
  %150 = and i32 %149, 4095
  %151 = load i32*, i32** %9, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %143
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %61

158:                                              ; preds = %61
  %159 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %160 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @PCI171x_CLRFIFO, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @outb(i32 0, i64 %163)
  %165 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %166 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @PCI171x_CLRINT, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @outb(i32 0, i64 %169)
  %171 = load i32, i32* %10, align 4
  %172 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %10, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %158, %120
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @setup_channel_list(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
