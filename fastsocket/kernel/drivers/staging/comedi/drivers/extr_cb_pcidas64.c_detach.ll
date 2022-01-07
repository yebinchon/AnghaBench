; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_detach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i64, i64, i32, i64, i32, i64, i32*, i64*, i32*, i64*, i64, i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"comedi%d: cb_pcidas: remove\0A\00", align 1
@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@AO_DMA_RING_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detach(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %17 = call i32 @free_irq(i64 %15, %struct.comedi_device* %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %20 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %19)
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %224

22:                                               ; preds = %18
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %223

28:                                               ; preds = %22
  %29 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %30 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 12
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %36 = call i32 @disable_plx_interrupts(%struct.comedi_device* %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %38 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @iounmap(i8* %41)
  br label %43

43:                                               ; preds = %34, %28
  %44 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %45 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 11
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %51 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 11
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @iounmap(i8* %54)
  br label %56

56:                                               ; preds = %49, %43
  %57 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %58 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %64 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @iounmap(i8* %67)
  br label %69

69:                                               ; preds = %62, %56
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %110, %69
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %73 = call i32 @board(%struct.comedi_device* %72)
  %74 = call i32 @ai_dma_ring_count(i32 %73)
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %70
  %77 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %78 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 9
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %76
  %87 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %88 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %87)
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %92 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %93 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 9
  %95 = load i64*, i64** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %101 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 8
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @pci_free_consistent(i64 %90, i32 %91, i64 %99, i32 %107)
  br label %109

109:                                              ; preds = %86, %76
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %3, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %70

113:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %152, %113
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %118, label %155

118:                                              ; preds = %114
  %119 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %120 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %119)
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 7
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %3, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %118
  %129 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %130 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %134 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %135 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %134)
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 7
  %137 = load i64*, i64** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %143 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %142)
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 6
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %3, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @pci_free_consistent(i64 %132, i32 %133, i64 %141, i32 %149)
  br label %151

151:                                              ; preds = %128, %118
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %3, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %3, align 4
  br label %114

155:                                              ; preds = %114
  %156 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %157 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %156)
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 5
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %155
  %162 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %163 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %162)
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %167 = call i32 @board(%struct.comedi_device* %166)
  %168 = call i32 @ai_dma_ring_count(i32 %167)
  %169 = sext i32 %168 to i64
  %170 = mul i64 4, %169
  %171 = trunc i64 %170 to i32
  %172 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %173 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %172)
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %177 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %176)
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @pci_free_consistent(i64 %165, i32 %171, i64 %175, i32 %179)
  br label %181

181:                                              ; preds = %161, %155
  %182 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %183 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %182)
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %205

187:                                              ; preds = %181
  %188 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %189 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %188)
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i32, i32* @AO_DMA_RING_COUNT, align 4
  %193 = zext i32 %192 to i64
  %194 = mul i64 4, %193
  %195 = trunc i64 %194 to i32
  %196 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %197 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %196)
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %201 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %200)
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @pci_free_consistent(i64 %191, i32 %195, i64 %199, i32 %203)
  br label %205

205:                                              ; preds = %187, %181
  %206 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %207 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %206)
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %213 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %212)
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @comedi_pci_disable(i64 %215)
  br label %217

217:                                              ; preds = %211, %205
  %218 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %219 = call %struct.TYPE_2__* @priv(%struct.comedi_device* %218)
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @pci_dev_put(i64 %221)
  br label %223

223:                                              ; preds = %217, %22
  br label %224

224:                                              ; preds = %223, %18
  %225 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %226 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %224
  %230 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %231 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %232 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 4
  %235 = call i32 @subdev_8255_cleanup(%struct.comedi_device* %230, i64 %234)
  br label %236

236:                                              ; preds = %229, %224
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.comedi_device*) #1

declare dso_local %struct.TYPE_2__* @priv(%struct.comedi_device*) #1

declare dso_local i32 @disable_plx_interrupts(%struct.comedi_device*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @ai_dma_ring_count(i32) #1

declare dso_local i32 @board(%struct.comedi_device*) #1

declare dso_local i32 @pci_free_consistent(i64, i32, i64, i32) #1

declare dso_local i32 @comedi_pci_disable(i64) #1

declare dso_local i32 @pci_dev_put(i64) #1

declare dso_local i32 @subdev_8255_cleanup(%struct.comedi_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
