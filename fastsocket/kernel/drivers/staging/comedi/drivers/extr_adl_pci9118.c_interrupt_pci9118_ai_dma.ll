; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_interrupt_pci9118_ai_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_adl_pci9118.c_interrupt_pci9118_ai_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16, i32*, i64, i32*, i32*, i32, i32, i64, i64, i64, i64, i32, i32* }
%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MASTER_ABORT_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"AMCC IRQ - MASTER DMA ABORT!\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@TARGET_ABORT_INT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"AMCC IRQ - TARGET DMA ABORT!\00", align 1
@devpriv = common dso_local global %struct.TYPE_4__* null, align 8
@AMCC_OP_REG_MWAR = common dso_local global i64 0, align 8
@AMCC_OP_REG_MWTC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i16, i32, i16)* @interrupt_pci9118_ai_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interrupt_pci9118_ai_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i16 zeroext %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  store i16 %4, i16* %10, align 2
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MASTER_ABORT_INT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %5
  %20 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %21 = call i32 @comedi_error(%struct.comedi_device* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %23 = load i32, i32* @COMEDI_CB_EOA, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %33 = call i32 @pci9118_ai_cancel(%struct.comedi_device* %31, %struct.comedi_subdevice* %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %36 = call i32 @comedi_event(%struct.comedi_device* %34, %struct.comedi_subdevice* %35)
  br label %240

37:                                               ; preds = %5
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @TARGET_ABORT_INT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %44 = call i32 @comedi_error(%struct.comedi_device* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %46 = load i32, i32* @COMEDI_CB_EOA, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %56 = call i32 @pci9118_ai_cancel(%struct.comedi_device* %54, %struct.comedi_subdevice* %55)
  %57 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %59 = call i32 @comedi_event(%struct.comedi_device* %57, %struct.comedi_subdevice* %58)
  br label %240

60:                                               ; preds = %37
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i16, i16* %64, align 8
  %66 = zext i16 %65 to i32
  %67 = and i32 %62, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %71 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %72 = load i16, i16* %8, align 2
  %73 = call i64 @pci9118_decode_error_status(%struct.comedi_device* %70, %struct.comedi_subdevice* %71, i16 zeroext %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %240

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %60
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 1
  store i32 %86, i32* %12, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 10
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %144

91:                                               ; preds = %77
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 1, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %11, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AMCC_OP_REG_MWAR, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @outl(i32 %103, i64 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @AMCC_OP_REG_MWTC, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @outl(i32 %116, i64 %121)
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %11, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %129, i32* %135, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 4
  br i1 %139, label %140, label %143

140:                                              ; preds = %91
  %141 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %142 = call i32 @interrupt_pci9118_ai_mode4_switch(%struct.comedi_device* %141)
  br label %143

143:                                              ; preds = %140, %91
  br label %144

144:                                              ; preds = %143, %77
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 1
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  store i32 %152, i32* %13, align 4
  %153 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %154 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 12
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @move_block_from_dma(%struct.comedi_device* %153, %struct.comedi_subdevice* %154, i32 %162, i32 %163)
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sub i32 %165, %166
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %147, %144
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %193, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 8
  %179 = load i64, i64* %178, align 8
  %180 = icmp sge i64 %176, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %173
  %182 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %183 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %184 = call i32 @pci9118_ai_cancel(%struct.comedi_device* %182, %struct.comedi_subdevice* %183)
  %185 = load i32, i32* @COMEDI_CB_EOA, align 4
  %186 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %187 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %186, i32 0, i32 0
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %185
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %181, %173
  br label %193

193:                                              ; preds = %192, %168
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 10
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = sub i64 1, %201
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  store i64 %202, i64* %204, align 8
  br label %236

205:                                              ; preds = %193
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 9
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @AMCC_OP_REG_MWAR, align 8
  %215 = add nsw i64 %213, %214
  %216 = call i32 @outl(i32 %210, i64 %215)
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 9
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @AMCC_OP_REG_MWTC, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @outl(i32 %221, i64 %226)
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devpriv, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = icmp eq i32 %230, 4
  br i1 %231, label %232, label %235

232:                                              ; preds = %205
  %233 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %234 = call i32 @interrupt_pci9118_ai_mode4_switch(%struct.comedi_device* %233)
  br label %235

235:                                              ; preds = %232, %205
  br label %236

236:                                              ; preds = %235, %198
  %237 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %238 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %239 = call i32 @comedi_event(%struct.comedi_device* %237, %struct.comedi_subdevice* %238)
  br label %240

240:                                              ; preds = %236, %75, %42, %19
  ret void
}

declare dso_local i32 @comedi_error(%struct.comedi_device*, i8*) #1

declare dso_local i32 @pci9118_ai_cancel(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_event(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i64 @pci9118_decode_error_status(%struct.comedi_device*, %struct.comedi_subdevice*, i16 zeroext) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @interrupt_pci9118_ai_mode4_switch(%struct.comedi_device*) #1

declare dso_local i32 @move_block_from_dma(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
