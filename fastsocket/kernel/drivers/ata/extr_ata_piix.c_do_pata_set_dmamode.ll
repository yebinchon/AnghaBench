; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_ata_piix.c_do_pata_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_ata_piix.c_do_pata_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@do_pata_set_dmamode.timings = internal constant [5 x [2 x i64]] [[2 x i64] zeroinitializer, [2 x i64] zeroinitializer, [2 x i64] [i64 1, i64 0], [2 x i64] [i64 2, i64 1], [2 x i64] [i64 2, i64 3]], align 16
@piix_lock = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_3 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32)* @do_pata_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pata_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca [3 x i32], align 4
  %23 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %4, align 8
  store %struct.ata_device* %1, %struct.ata_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.pci_dev* @to_pci_dev(i32 %28)
  store %struct.pci_dev* %29, %struct.pci_dev** %7, align 8
  %30 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %31 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 66, i32 64
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %9, align 8
  %37 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %38 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %11, align 8
  %40 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %41 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %44 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 2, %45
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @spin_lock_irqsave(i32* @piix_lock, i64 %48)
  %50 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @pci_read_config_word(%struct.pci_dev* %50, i32 %52, i32* %10)
  %54 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %55 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %3
  %59 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %60 = call i32 @pci_read_config_byte(%struct.pci_dev* %59, i32 72, i64* %13)
  br label %61

61:                                               ; preds = %58, %3
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* @XFER_UDMA_0, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %128

65:                                               ; preds = %61
  %66 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %67 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @XFER_UDMA_0, align 8
  %70 = sub nsw i64 %68, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = and i32 %72, 1
  %74 = sub i32 2, %73
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @min(i32 %74, i32 %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 5
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i32 4096, i32* %17, align 4
  br label %86

80:                                               ; preds = %65
  %81 = load i32, i32* %14, align 4
  %82 = icmp ugt i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 1, i32* %17, align 4
  br label %85

84:                                               ; preds = %80
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %12, align 4
  %88 = shl i32 1, %87
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* %13, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %13, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %93 = call i32 @pci_read_config_word(%struct.pci_dev* %92, i32 74, i32* %15)
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 4, %94
  %96 = shl i32 3, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %15, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %12, align 4
  %102 = mul nsw i32 4, %101
  %103 = shl i32 %100, %102
  %104 = load i32, i32* %15, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %15, align 4
  %106 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @pci_write_config_word(%struct.pci_dev* %106, i64 74, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %86
  %112 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %113 = call i32 @pci_read_config_word(%struct.pci_dev* %112, i32 84, i32* %16)
  %114 = load i32, i32* %12, align 4
  %115 = shl i32 4097, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %16, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i32, i32* %12, align 4
  %121 = shl i32 %119, %120
  %122 = load i32, i32* %16, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %16, align 4
  %124 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @pci_write_config_word(%struct.pci_dev* %124, i64 84, i32 %125)
  br label %127

127:                                              ; preds = %111, %86
  br label %247

128:                                              ; preds = %61
  %129 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %130 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @XFER_MW_DMA_0, align 4
  %133 = zext i32 %132 to i64
  %134 = sub nsw i64 %131, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %19, align 4
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %137 = load i32, i32* @XFER_PIO_0, align 4
  store i32 %137, i32* %136, align 4
  %138 = getelementptr inbounds i32, i32* %136, i64 1
  %139 = load i32, i32* @XFER_PIO_3, align 4
  store i32 %139, i32* %138, align 4
  %140 = getelementptr inbounds i32, i32* %138, i64 1
  %141 = load i32, i32* @XFER_PIO_4, align 4
  store i32 %141, i32* %140, align 4
  %142 = load i32, i32* %19, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @XFER_PIO_0, align 4
  %147 = sub i32 %145, %146
  store i32 %147, i32* %23, align 4
  store i32 3, i32* %20, align 4
  %148 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %149 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %19, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp ult i32 %150, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %128
  %157 = load i32, i32* %20, align 4
  %158 = or i32 %157, 8
  store i32 %158, i32* %20, align 4
  br label %159

159:                                              ; preds = %156, %128
  %160 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %161 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %207

164:                                              ; preds = %159
  %165 = load i32, i32* %10, align 4
  %166 = and i32 %165, 65359
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %20, align 4
  %168 = shl i32 %167, 4
  %169 = load i32, i32* %10, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %10, align 4
  %171 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %172 = call i32 @pci_read_config_byte(%struct.pci_dev* %171, i32 68, i64* %21)
  %173 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %174 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 15, i32 240
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %21, align 8
  %181 = and i64 %180, %179
  store i64 %181, i64* %21, align 8
  %182 = load i32, i32* %23, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @do_pata_set_dmamode.timings, i64 0, i64 %183
  %185 = getelementptr inbounds [2 x i64], [2 x i64]* %184, i64 0, i64 0
  %186 = load i64, i64* %185, align 16
  %187 = shl i64 %186, 2
  %188 = load i32, i32* %23, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @do_pata_set_dmamode.timings, i64 0, i64 %189
  %191 = getelementptr inbounds [2 x i64], [2 x i64]* %190, i64 0, i64 1
  %192 = load i64, i64* %191, align 8
  %193 = or i64 %187, %192
  %194 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %195 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 4, i32 0
  %200 = zext i32 %199 to i64
  %201 = shl i64 %193, %200
  %202 = load i64, i64* %21, align 8
  %203 = or i64 %202, %201
  store i64 %203, i64* %21, align 8
  %204 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %205 = load i64, i64* %21, align 8
  %206 = call i32 @pci_write_config_byte(%struct.pci_dev* %204, i32 68, i64 %205)
  br label %230

207:                                              ; preds = %159
  %208 = load i32, i32* %10, align 4
  %209 = and i32 %208, 52468
  store i32 %209, i32* %10, align 4
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* %10, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %10, align 4
  %213 = load i32, i32* %23, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @do_pata_set_dmamode.timings, i64 0, i64 %214
  %216 = getelementptr inbounds [2 x i64], [2 x i64]* %215, i64 0, i64 0
  %217 = load i64, i64* %216, align 16
  %218 = shl i64 %217, 12
  %219 = load i32, i32* %23, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @do_pata_set_dmamode.timings, i64 0, i64 %220
  %222 = getelementptr inbounds [2 x i64], [2 x i64]* %221, i64 0, i64 1
  %223 = load i64, i64* %222, align 8
  %224 = shl i64 %223, 8
  %225 = or i64 %218, %224
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = or i64 %227, %225
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %10, align 4
  br label %230

230:                                              ; preds = %207, %164
  %231 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %232 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %230
  %236 = load i32, i32* %12, align 4
  %237 = shl i32 1, %236
  %238 = xor i32 %237, -1
  %239 = sext i32 %238 to i64
  %240 = load i64, i64* %13, align 8
  %241 = and i64 %240, %239
  store i64 %241, i64* %13, align 8
  br label %242

242:                                              ; preds = %235, %230
  %243 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %244 = load i64, i64* %9, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 @pci_write_config_word(%struct.pci_dev* %243, i64 %244, i32 %245)
  br label %247

247:                                              ; preds = %242, %127
  %248 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %249 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %254 = load i64, i64* %13, align 8
  %255 = call i32 @pci_write_config_byte(%struct.pci_dev* %253, i32 72, i64 %254)
  br label %256

256:                                              ; preds = %252, %247
  %257 = load i64, i64* %8, align 8
  %258 = call i32 @spin_unlock_irqrestore(i32* @piix_lock, i64 %257)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
