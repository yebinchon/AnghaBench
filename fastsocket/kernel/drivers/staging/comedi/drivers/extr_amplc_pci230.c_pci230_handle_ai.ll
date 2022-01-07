; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ai.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.comedi_device = type { i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@PCI230_ADC_FIFOLEVEL_HALFFULL = common dso_local global i32 0, align 4
@PCI230_ADCCON = common dso_local global i64 0, align 8
@PCI230_ADC_FIFO_FULL_LATCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"AI FIFO overrun\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@PCI230_ADC_FIFO_EMPTY = common dso_local global i32 0, align 4
@PCI230_ADC_FIFO_HALF = common dso_local global i32 0, align 4
@PCI230P_ADCFFLEV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"AI buffer overflow\00", align 1
@COMEDI_CB_EOS = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_handle_ai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_handle_ai(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.comedi_async*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load %struct.comedi_async*, %struct.comedi_async** %13, align 8
  store %struct.comedi_async* %14, %struct.comedi_async** %10, align 8
  %15 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %16 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  store i32 %24, i32* %8, align 4
  br label %61

25:                                               ; preds = %2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %60

31:                                               ; preds = %25
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %31
  %42 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  store i32 %42, i32* %8, align 4
  br label %59

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = mul i32 %46, %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %48, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %43
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %30
  br label %61

61:                                               ; preds = %60, %23
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %210

65:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %165, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %168

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %70
  %74 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %75 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCI230_ADCCON, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inw(i64 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @PCI230_ADC_FIFO_FULL_LATCHED, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %86 = call i32 @comedi_error(%struct.comedi_device* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %87 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %88 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  br label %168

92:                                               ; preds = %73
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @PCI230_ADC_FIFO_EMPTY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %168

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @PCI230_ADC_FIFO_HALF, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @PCI230_ADC_FIFOLEVEL_HALFFULL, align 4
  store i32 %104, i32* %9, align 4
  br label %123

105:                                              ; preds = %98
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %105
  %111 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %112 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PCI230P_ADCFFLEV, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @inw(i64 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %168

120:                                              ; preds = %110
  br label %122

121:                                              ; preds = %105
  store i32 1, i32* %9, align 4
  br label %122

122:                                              ; preds = %121, %120
  br label %123

123:                                              ; preds = %122, %103
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125, %70
  %127 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %128 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %129 = call i32 @pci230_ai_read(%struct.comedi_device* %128)
  %130 = call i64 @comedi_buf_put(%struct.comedi_async* %127, i32 %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %134 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %139 = call i32 @comedi_error(%struct.comedi_device* %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %168

140:                                              ; preds = %126
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, -1
  store i32 %142, i32* %9, align 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %11, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %164

152:                                              ; preds = %140
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add i32 %157, -1
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* @COMEDI_CB_EOS, align 4
  %160 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %161 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %152, %140
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %7, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %66

168:                                              ; preds = %132, %119, %97, %84, %66
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i32, i32* @COMEDI_CB_EOA, align 4
  %180 = load i32, i32* %5, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %5, align 4
  br label %186

182:                                              ; preds = %173, %168
  %183 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %184 = load i32, i32* %5, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %182, %178
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %189 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  %192 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  %193 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @COMEDI_CB_EOA, align 4
  %196 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %199 = or i32 %197, %198
  %200 = and i32 %194, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %186
  %203 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %204 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %205 = call i32 @pci230_ai_stop(%struct.comedi_device* %203, %struct.comedi_subdevice* %204)
  br label %210

206:                                              ; preds = %186
  %207 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %208 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %209 = call i32 @pci230_ai_update_fifo_trigger_level(%struct.comedi_device* %207, %struct.comedi_subdevice* %208)
  br label %210

210:                                              ; preds = %64, %206, %202
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i64 @comedi_buf_put(%struct.comedi_async*, i32) #1

declare dso_local i32 @pci230_ai_read(%struct.comedi_device*) #1

declare dso_local i32 @pci230_ai_stop(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @pci230_ai_update_fifo_trigger_level(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
