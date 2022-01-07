; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_rdc.c_rdc_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_rdc.c_rdc_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@rdc_set_dmamode.timings = internal constant [5 x [2 x i64]] [[2 x i64] zeroinitializer, [2 x i64] zeroinitializer, [2 x i64] [i64 1, i64 0], [2 x i64] [i64 2, i64 1], [2 x i64] [i64 2, i64 3]], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_3 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @rdc_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdc_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca [3 x i32], align 4
  %20 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.pci_dev* @to_pci_dev(i32 %25)
  store %struct.pci_dev* %26, %struct.pci_dev** %5, align 8
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 66, i32 64
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %6, align 8
  %34 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %35 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %38 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %41 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @pci_read_config_word(%struct.pci_dev* %45, i32 %47, i32* %7)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = call i32 @pci_read_config_byte(%struct.pci_dev* %49, i32 72, i64* %10)
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @XFER_UDMA_0, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %113

54:                                               ; preds = %2
  %55 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %56 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XFER_UDMA_0, align 8
  %59 = sub nsw i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, 1
  %63 = sub i32 2, %62
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @min(i32 %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 5
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32 4096, i32* %14, align 4
  br label %75

69:                                               ; preds = %54
  %70 = load i32, i32* %11, align 4
  %71 = icmp ugt i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %14, align 4
  br label %74

73:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 1, %76
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %10, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %10, align 8
  %81 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %82 = call i32 @pci_read_config_word(%struct.pci_dev* %81, i32 74, i32* %12)
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 4, %83
  %85 = shl i32 3, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %12, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 4, %90
  %92 = shl i32 %89, %91
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @pci_write_config_word(%struct.pci_dev* %95, i64 74, i32 %96)
  %98 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %99 = call i32 @pci_read_config_word(%struct.pci_dev* %98, i32 84, i32* %13)
  %100 = load i32, i32* %9, align 4
  %101 = shl i32 4097, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %13, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %9, align 4
  %107 = shl i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %111 = load i32, i32* %13, align 4
  %112 = call i32 @pci_write_config_word(%struct.pci_dev* %110, i64 84, i32 %111)
  br label %226

113:                                              ; preds = %2
  %114 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %115 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @XFER_MW_DMA_0, align 4
  %118 = zext i32 %117 to i64
  %119 = sub nsw i64 %116, %118
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %16, align 4
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %122 = load i32, i32* @XFER_PIO_0, align 4
  store i32 %122, i32* %121, align 4
  %123 = getelementptr inbounds i32, i32* %121, i64 1
  %124 = load i32, i32* @XFER_PIO_3, align 4
  store i32 %124, i32* %123, align 4
  %125 = getelementptr inbounds i32, i32* %123, i64 1
  %126 = load i32, i32* @XFER_PIO_4, align 4
  store i32 %126, i32* %125, align 4
  %127 = load i32, i32* %16, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @XFER_PIO_0, align 4
  %132 = sub i32 %130, %131
  store i32 %132, i32* %20, align 4
  store i32 3, i32* %17, align 4
  %133 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %134 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %16, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ult i32 %135, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %113
  %142 = load i32, i32* %17, align 4
  %143 = or i32 %142, 8
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %141, %113
  %145 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %146 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %192

149:                                              ; preds = %144
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 65359
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %17, align 4
  %153 = shl i32 %152, 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  %156 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %157 = call i32 @pci_read_config_byte(%struct.pci_dev* %156, i32 68, i64* %18)
  %158 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %159 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 15, i32 240
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %18, align 8
  %166 = and i64 %165, %164
  store i64 %166, i64* %18, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @rdc_set_dmamode.timings, i64 0, i64 %168
  %170 = getelementptr inbounds [2 x i64], [2 x i64]* %169, i64 0, i64 0
  %171 = load i64, i64* %170, align 16
  %172 = shl i64 %171, 2
  %173 = load i32, i32* %20, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @rdc_set_dmamode.timings, i64 0, i64 %174
  %176 = getelementptr inbounds [2 x i64], [2 x i64]* %175, i64 0, i64 1
  %177 = load i64, i64* %176, align 8
  %178 = or i64 %172, %177
  %179 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %180 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 4, i32 0
  %185 = zext i32 %184 to i64
  %186 = shl i64 %178, %185
  %187 = load i64, i64* %18, align 8
  %188 = or i64 %187, %186
  store i64 %188, i64* %18, align 8
  %189 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %190 = load i64, i64* %18, align 8
  %191 = call i32 @pci_write_config_byte(%struct.pci_dev* %189, i32 68, i64 %190)
  br label %215

192:                                              ; preds = %144
  %193 = load i32, i32* %7, align 4
  %194 = and i32 %193, 52468
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %7, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %7, align 4
  %198 = load i32, i32* %20, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @rdc_set_dmamode.timings, i64 0, i64 %199
  %201 = getelementptr inbounds [2 x i64], [2 x i64]* %200, i64 0, i64 0
  %202 = load i64, i64* %201, align 16
  %203 = shl i64 %202, 12
  %204 = load i32, i32* %20, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @rdc_set_dmamode.timings, i64 0, i64 %205
  %207 = getelementptr inbounds [2 x i64], [2 x i64]* %206, i64 0, i64 1
  %208 = load i64, i64* %207, align 8
  %209 = shl i64 %208, 8
  %210 = or i64 %203, %209
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = or i64 %212, %210
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %192, %149
  %216 = load i32, i32* %9, align 4
  %217 = shl i32 1, %216
  %218 = xor i32 %217, -1
  %219 = sext i32 %218 to i64
  %220 = load i64, i64* %10, align 8
  %221 = and i64 %220, %219
  store i64 %221, i64* %10, align 8
  %222 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %223 = load i64, i64* %6, align 8
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @pci_write_config_word(%struct.pci_dev* %222, i64 %223, i32 %224)
  br label %226

226:                                              ; preds = %215, %75
  %227 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %228 = load i64, i64* %10, align 8
  %229 = call i32 @pci_write_config_byte(%struct.pci_dev* %227, i32 72, i64 %228)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
