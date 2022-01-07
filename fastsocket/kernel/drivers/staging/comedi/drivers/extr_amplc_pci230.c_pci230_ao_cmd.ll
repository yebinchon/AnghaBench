; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i16, i64, i64, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32, i32, i32, i32*, i64 }

@TRIG_TIMER = common dso_local global i64 0, align 8
@RES_Z2CT1 = common dso_local global i32 0, align 4
@OWNER_AOCMD = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@pci230_ao_bipolar = common dso_local global i64* null, align 8
@PCI230_DAC_OR_BIP = common dso_local global i16 0, align 2
@PCI230_DAC_OR_UNI = common dso_local global i16 0, align 2
@PCI230P2_DACEN = common dso_local global i64 0, align 8
@PCI230P2_DAC_FIFO_EN = common dso_local global i16 0, align 2
@PCI230P2_DAC_FIFO_RESET = common dso_local global i16 0, align 2
@PCI230P2_DAC_FIFO_UNDERRUN_CLEAR = common dso_local global i16 0, align 2
@PCI230P2_DAC_TRIG_NONE = common dso_local global i16 0, align 2
@PCI230P2_DAC_INT_FIFO_NHALF = common dso_local global i16 0, align 2
@PCI230_DACCON = common dso_local global i64 0, align 8
@GAT_GND = common dso_local global i32 0, align 4
@PCI230_ZGAT_SCE = common dso_local global i64 0, align 8
@I8254_MODE3 = common dso_local global i32 0, align 4
@TRIG_ROUND_MASK = common dso_local global i32 0, align 4
@pci230_ao_inttrig_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_ao_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_ao_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_cmd*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %8, align 8
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TRIG_TIMER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = load i32, i32* @RES_Z2CT1, align 4
  %23 = load i32, i32* @OWNER_AOCMD, align 4
  %24 = call i32 @get_one_resource(%struct.comedi_device* %21, i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %181

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %2
  %31 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TRIG_COUNT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %49

44:                                               ; preds = %30
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  br label %49

49:                                               ; preds = %44, %36
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CR_RANGE(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i64*, i64** @pci230_ao_bipolar, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i16, i16* @PCI230_DAC_OR_BIP, align 2
  %69 = zext i16 %68 to i32
  br label %73

70:                                               ; preds = %49
  %71 = load i16, i16* @PCI230_DAC_OR_UNI, align 2
  %72 = zext i16 %71 to i32
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i32 [ %69, %67 ], [ %72, %70 ]
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %6, align 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 2
  br i1 %79, label %80, label %130

80:                                               ; preds = %73
  store i16 0, i16* %9, align 2
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %101, %80
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %84 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %81
  %88 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %89 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @CR_CHAN(i32 %94)
  %96 = shl i32 1, %95
  %97 = load i16, i16* %9, align 2
  %98 = zext i16 %97 to i32
  %99 = or i32 %98, %96
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %9, align 2
  br label %101

101:                                              ; preds = %87
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %81

104:                                              ; preds = %81
  %105 = load i16, i16* %9, align 2
  %106 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %107 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PCI230P2_DACEN, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @outw(i16 zeroext %105, i64 %110)
  %112 = load i16, i16* @PCI230P2_DAC_FIFO_EN, align 2
  %113 = zext i16 %112 to i32
  %114 = load i16, i16* @PCI230P2_DAC_FIFO_RESET, align 2
  %115 = zext i16 %114 to i32
  %116 = or i32 %113, %115
  %117 = load i16, i16* @PCI230P2_DAC_FIFO_UNDERRUN_CLEAR, align 2
  %118 = zext i16 %117 to i32
  %119 = or i32 %116, %118
  %120 = load i16, i16* @PCI230P2_DAC_TRIG_NONE, align 2
  %121 = zext i16 %120 to i32
  %122 = or i32 %119, %121
  %123 = load i16, i16* @PCI230P2_DAC_INT_FIFO_NHALF, align 2
  %124 = zext i16 %123 to i32
  %125 = or i32 %122, %124
  %126 = load i16, i16* %6, align 2
  %127 = zext i16 %126 to i32
  %128 = or i32 %127, %125
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %6, align 2
  br label %130

130:                                              ; preds = %104, %73
  %131 = load i16, i16* %6, align 2
  %132 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %133 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PCI230_DACCON, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @outw(i16 zeroext %131, i64 %136)
  %138 = load i16, i16* %6, align 2
  %139 = zext i16 %138 to i32
  %140 = load i16, i16* @PCI230P2_DAC_FIFO_RESET, align 2
  %141 = zext i16 %140 to i32
  %142 = load i16, i16* @PCI230P2_DAC_FIFO_UNDERRUN_CLEAR, align 2
  %143 = zext i16 %142 to i32
  %144 = or i32 %141, %143
  %145 = xor i32 %144, -1
  %146 = and i32 %139, %145
  %147 = trunc i32 %146 to i16
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  store i16 %147, i16* %149, align 8
  %150 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %151 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TRIG_TIMER, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %130
  %156 = load i32, i32* @GAT_GND, align 4
  %157 = call i32 @GAT_CONFIG(i32 1, i32 %156)
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @PCI230_ZGAT_SCE, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @outb(i32 %157, i64 %162)
  %164 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %165 = load i32, i32* @I8254_MODE3, align 4
  %166 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %167 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.comedi_cmd*, %struct.comedi_cmd** %8, align 8
  %170 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @TRIG_ROUND_MASK, align 4
  %173 = and i32 %171, %172
  %174 = call i32 @pci230_ct_setup_ns_mode(%struct.comedi_device* %164, i32 1, i32 %165, i32 %168, i32 %173)
  br label %175

175:                                              ; preds = %155, %130
  %176 = load i32, i32* @pci230_ao_inttrig_start, align 4
  %177 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %178 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %177, i32 0, i32 0
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 %176, i32* %180, align 8
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %175, %26
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @get_one_resource(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @GAT_CONFIG(i32, i32) #1

declare dso_local i32 @pci230_ct_setup_ns_mode(%struct.comedi_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
