; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_sn_dma_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_dma.c_sn_dma_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubdev_info = type { %struct.sn_flush_nasid_entry }
%struct.sn_flush_nasid_entry = type { i64*, %struct.sn_flush_device_kernel** }
%struct.sn_flush_device_kernel = type { i32, %struct.sn_flush_device_common* }
%struct.sn_flush_device_common = type { i32*, i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.hubdev_info* }

@sn_ioif_inited = common dso_local global i32 0, align 4
@DEV_PER_WIDGET = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i32 0, align 4
@TIO_NODE_ID = common dso_local global i32 0, align 4
@PV907516 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sn_dma_flush(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hubdev_info*, align 8
  %11 = alloca %struct.sn_flush_device_kernel*, align 8
  %12 = alloca %struct.sn_flush_device_common*, align 8
  %13 = alloca %struct.sn_flush_nasid_entry*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %17 = load i32, i32* @sn_ioif_inited, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %252

20:                                               ; preds = %1
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @NASID_GET(i64 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @nasid_to_cnodeid(i32 %23)
  %25 = icmp eq i32 -1, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %252

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @nasid_to_cnodeid(i32 %28)
  %30 = call %struct.TYPE_4__* @NODEPDA(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.hubdev_info*, %struct.hubdev_info** %31, align 8
  store %struct.hubdev_info* %32, %struct.hubdev_info** %10, align 8
  %33 = load %struct.hubdev_info*, %struct.hubdev_info** %10, align 8
  %34 = icmp ne %struct.hubdev_info* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.hubdev_info*, %struct.hubdev_info** %10, align 8
  %39 = getelementptr inbounds %struct.hubdev_info, %struct.hubdev_info* %38, i32 0, i32 0
  store %struct.sn_flush_nasid_entry* %39, %struct.sn_flush_nasid_entry** %13, align 8
  %40 = load %struct.sn_flush_nasid_entry*, %struct.sn_flush_nasid_entry** %13, align 8
  %41 = getelementptr inbounds %struct.sn_flush_nasid_entry, %struct.sn_flush_nasid_entry* %40, i32 0, i32 1
  %42 = load %struct.sn_flush_device_kernel**, %struct.sn_flush_device_kernel*** %41, align 8
  %43 = icmp eq %struct.sn_flush_device_kernel** %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %27
  br label %252

45:                                               ; preds = %27
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %45
  %51 = load i64, i64* %2, align 8
  %52 = call i64 @TIO_HWIN(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %64

55:                                               ; preds = %50
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @TIO_BWIN_WINDOWNUM(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %2, align 8
  %61 = call i32 @TIO_BWIN_WINDOWNUM(i64 %60)
  store i32 %61, i32* %14, align 4
  br label %63

62:                                               ; preds = %55
  store i32 -1, i32* %14, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %64

64:                                               ; preds = %63, %54
  %65 = load i32, i32* %14, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.sn_flush_nasid_entry*, %struct.sn_flush_nasid_entry** %13, align 8
  %69 = getelementptr inbounds %struct.sn_flush_nasid_entry, %struct.sn_flush_nasid_entry* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @TIO_ITTE_VALID(i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %67
  br label %252

79:                                               ; preds = %67
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @TIO_ITTE_WIDGET(i64 %80)
  store i32 %81, i32* %5, align 4
  br label %85

82:                                               ; preds = %64
  %83 = load i64, i64* %2, align 8
  %84 = call i32 @TIO_SWIN_WIDGETNUM(i64 %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %82, %79
  br label %104

86:                                               ; preds = %45
  %87 = load i64, i64* %2, align 8
  %88 = call i64 @BWIN_WINDOWNUM(i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.sn_flush_nasid_entry*, %struct.sn_flush_nasid_entry** %13, align 8
  %92 = getelementptr inbounds %struct.sn_flush_nasid_entry, %struct.sn_flush_nasid_entry* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* %2, align 8
  %95 = call i64 @BWIN_WINDOWNUM(i64 %94)
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @IIO_ITTE_WIDGET(i64 %98)
  store i32 %99, i32* %5, align 4
  br label %103

100:                                              ; preds = %86
  %101 = load i64, i64* %2, align 8
  %102 = call i32 @SWIN_WIDGETNUM(i64 %101)
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %100, %90
  br label %104

104:                                              ; preds = %103, %85
  %105 = load %struct.sn_flush_nasid_entry*, %struct.sn_flush_nasid_entry** %13, align 8
  %106 = getelementptr inbounds %struct.sn_flush_nasid_entry, %struct.sn_flush_nasid_entry* %105, i32 0, i32 1
  %107 = load %struct.sn_flush_device_kernel**, %struct.sn_flush_device_kernel*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.sn_flush_device_kernel*, %struct.sn_flush_device_kernel** %107, i64 %109
  %111 = load %struct.sn_flush_device_kernel*, %struct.sn_flush_device_kernel** %110, align 8
  %112 = icmp eq %struct.sn_flush_device_kernel* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %252

114:                                              ; preds = %104
  %115 = load %struct.sn_flush_nasid_entry*, %struct.sn_flush_nasid_entry** %13, align 8
  %116 = getelementptr inbounds %struct.sn_flush_nasid_entry, %struct.sn_flush_nasid_entry* %115, i32 0, i32 1
  %117 = load %struct.sn_flush_device_kernel**, %struct.sn_flush_device_kernel*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sn_flush_device_kernel*, %struct.sn_flush_device_kernel** %117, i64 %119
  %121 = load %struct.sn_flush_device_kernel*, %struct.sn_flush_device_kernel** %120, align 8
  %122 = getelementptr inbounds %struct.sn_flush_device_kernel, %struct.sn_flush_device_kernel* %121, i64 0
  store %struct.sn_flush_device_kernel* %122, %struct.sn_flush_device_kernel** %11, align 8
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %189, %114
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @DEV_PER_WIDGET, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %194

127:                                              ; preds = %123
  %128 = load %struct.sn_flush_device_kernel*, %struct.sn_flush_device_kernel** %11, align 8
  %129 = getelementptr inbounds %struct.sn_flush_device_kernel, %struct.sn_flush_device_kernel* %128, i32 0, i32 1
  %130 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %129, align 8
  store %struct.sn_flush_device_common* %130, %struct.sn_flush_device_common** %12, align 8
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %170, %127
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %173

135:                                              ; preds = %131
  %136 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %137 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %136, i32 0, i32 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %173

146:                                              ; preds = %135
  %147 = load i64, i64* %2, align 8
  %148 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %149 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %148, i32 0, i32 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sge i64 %147, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %146
  %158 = load i64, i64* %2, align 8
  %159 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %160 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %159, i32 0, i32 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp sle i64 %158, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %173

169:                                              ; preds = %157, %146
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %131

173:                                              ; preds = %168, %145, %131
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @PCI_ROM_RESOURCE, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %179 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %178, i32 0, i32 4
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %194

188:                                              ; preds = %177, %173
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %6, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %6, align 4
  %192 = load %struct.sn_flush_device_kernel*, %struct.sn_flush_device_kernel** %11, align 8
  %193 = getelementptr inbounds %struct.sn_flush_device_kernel, %struct.sn_flush_device_kernel* %192, i32 1
  store %struct.sn_flush_device_kernel* %193, %struct.sn_flush_device_kernel** %11, align 8
  br label %123

194:                                              ; preds = %187, %123
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @DEV_PER_WIDGET, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %252

199:                                              ; preds = %194
  %200 = load i32, i32* %4, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %226

202:                                              ; preds = %199
  %203 = load i32, i32* %3, align 4
  %204 = load i32, i32* @TIO_NODE_ID, align 4
  %205 = call i32 @TIO_IOSPACE_ADDR(i32 %203, i32 %204)
  %206 = call i32 @HUB_L(i32 %205)
  store i32 %206, i32* %15, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @XWIDGET_PART_REV_NUM(i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @XWIDGET_PART_REV_NUM_REV(i32 %209)
  %211 = shl i32 1, %210
  %212 = load i32, i32* @PV907516, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %202
  br label %252

216:                                              ; preds = %202
  %217 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %218 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %221 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = sub nsw i64 %222, 1
  %224 = call i32 @pcireg_wrb_flush_get(i32 %219, i64 %223)
  br label %225

225:                                              ; preds = %216
  br label %251

226:                                              ; preds = %199
  %227 = load %struct.sn_flush_device_kernel*, %struct.sn_flush_device_kernel** %11, align 8
  %228 = getelementptr inbounds %struct.sn_flush_device_kernel, %struct.sn_flush_device_kernel* %227, i32 0, i32 0
  %229 = load i64, i64* %8, align 8
  %230 = call i32 @spin_lock_irqsave(i32* %228, i64 %229)
  %231 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %232 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  store i32 0, i32* %233, align 4
  %234 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %235 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to i32*
  store volatile i32 1, i32* %237, align 4
  br label %238

238:                                              ; preds = %244, %226
  %239 = load %struct.sn_flush_device_common*, %struct.sn_flush_device_common** %12, align 8
  %240 = getelementptr inbounds %struct.sn_flush_device_common, %struct.sn_flush_device_common* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 271
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = call i32 (...) @cpu_relax()
  br label %238

246:                                              ; preds = %238
  %247 = load %struct.sn_flush_device_kernel*, %struct.sn_flush_device_kernel** %11, align 8
  %248 = getelementptr inbounds %struct.sn_flush_device_kernel, %struct.sn_flush_device_kernel* %247, i32 0, i32 0
  %249 = load i64, i64* %8, align 8
  %250 = call i32 @spin_unlock_irqrestore(i32* %248, i64 %249)
  br label %251

251:                                              ; preds = %246, %225
  br label %252

252:                                              ; preds = %251, %215, %198, %113, %78, %44, %26, %19
  ret void
}

declare dso_local i32 @NASID_GET(i64) #1

declare dso_local i32 @nasid_to_cnodeid(i32) #1

declare dso_local %struct.TYPE_4__* @NODEPDA(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @TIO_HWIN(i64) #1

declare dso_local i32 @TIO_BWIN_WINDOWNUM(i64) #1

declare dso_local i32 @TIO_ITTE_VALID(i64) #1

declare dso_local i32 @TIO_ITTE_WIDGET(i64) #1

declare dso_local i32 @TIO_SWIN_WIDGETNUM(i64) #1

declare dso_local i64 @BWIN_WINDOWNUM(i64) #1

declare dso_local i32 @IIO_ITTE_WIDGET(i64) #1

declare dso_local i32 @SWIN_WIDGETNUM(i64) #1

declare dso_local i32 @HUB_L(i32) #1

declare dso_local i32 @TIO_IOSPACE_ADDR(i32, i32) #1

declare dso_local i32 @XWIDGET_PART_REV_NUM(i32) #1

declare dso_local i32 @XWIDGET_PART_REV_NUM_REV(i32) #1

declare dso_local i32 @pcireg_wrb_flush_get(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
