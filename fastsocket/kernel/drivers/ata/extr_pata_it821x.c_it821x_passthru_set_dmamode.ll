; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it821x.c_it821x_passthru_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it821x.c_it821x_passthru_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.it821x_dev*, %struct.TYPE_2__* }
%struct.it821x_dev = type { i32**, i32*, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i64 }
%struct.pci_dev = type { i32 }

@it821x_passthru_set_dmamode.dma = internal constant [3 x i32] [i32 34918, i32 12834, i32 12577], align 4
@it821x_passthru_set_dmamode.mwdma_want = internal constant [3 x i32] [i32 128, i32 129, i32 128], align 4
@it821x_passthru_set_dmamode.udma = internal constant [7 x i32] [i32 17459, i32 16945, i32 12577, i32 8481, i32 4369, i32 8721, i32 4369], align 16
@it821x_passthru_set_dmamode.udma_want = internal constant [7 x i32] [i32 128, i32 130, i32 128, i32 129, i32 129, i32 130, i32 129], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@MWDMA_OFF = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@UDMA_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @it821x_passthru_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it821x_passthru_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.it821x_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pci_dev* @to_pci_dev(i32 %16)
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 1
  %20 = load %struct.it821x_dev*, %struct.it821x_dev** %19, align 8
  store %struct.it821x_dev* %20, %struct.it821x_dev** %6, align 8
  %21 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %22 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %28 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @XFER_UDMA_0, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %128

32:                                               ; preds = %2
  %33 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %34 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @XFER_UDMA_0, align 8
  %37 = sub nsw i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [7 x i32], [7 x i32]* @it821x_passthru_set_dmamode.udma_want, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %44 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %42, i32* %50, align 4
  %51 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %52 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 3, i32* %58, align 4
  %59 = load i32, i32* @MWDMA_OFF, align 4
  %60 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %61 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [7 x i32], [7 x i32]* @it821x_passthru_set_dmamode.udma, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %71 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 5
  br i1 %77, label %78, label %87

78:                                               ; preds = %32
  %79 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %80 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, 32896
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %78, %32
  %88 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %89 = call i32 @pci_read_config_byte(%struct.pci_dev* %88, i32 80, i32* %9)
  %90 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %91 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 159, i32 231
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %111

101:                                              ; preds = %87
  %102 = load i32, i32* %7, align 4
  %103 = mul nsw i32 2, %102
  %104 = add nsw i32 3, %103
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %104, %105
  %107 = shl i32 1, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %101, %94
  %112 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @pci_write_config_byte(%struct.pci_dev* %112, i32 80, i32 %113)
  %115 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %116 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %117 = call i32 @it821x_clock_strategy(%struct.ata_port* %115, %struct.ata_device* %116)
  %118 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %119 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %120 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %121 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @it821x_program_udma(%struct.ata_port* %118, %struct.ata_device* %119, i32 %126)
  br label %202

128:                                              ; preds = %2
  %129 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %130 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @XFER_MW_DMA_0, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %131, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* @it821x_passthru_set_dmamode.mwdma_want, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %141 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %140, i32 0, i32 0
  %142 = load i32**, i32*** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  store i32 %139, i32* %147, align 4
  %148 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %149 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %148, i32 0, i32 0
  %150 = load i32**, i32*** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %150, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  store i32 2, i32* %155, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [3 x i32], [3 x i32]* @it821x_passthru_set_dmamode.dma, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %161 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load i32, i32* @UDMA_OFF, align 4
  %167 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %168 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  %173 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %174 = call i32 @pci_read_config_byte(%struct.pci_dev* %173, i32 80, i32* %9)
  %175 = load %struct.it821x_dev*, %struct.it821x_dev** %6, align 8
  %176 = getelementptr inbounds %struct.it821x_dev, %struct.it821x_dev* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %128
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i32 96, i32 24
  %184 = load i32, i32* %9, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %9, align 4
  br label %195

186:                                              ; preds = %128
  %187 = load i32, i32* %7, align 4
  %188 = mul nsw i32 2, %187
  %189 = add nsw i32 3, %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %189, %190
  %192 = shl i32 1, %191
  %193 = load i32, i32* %9, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %186, %179
  %196 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @pci_write_config_byte(%struct.pci_dev* %196, i32 80, i32 %197)
  %199 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %200 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %201 = call i32 @it821x_clock_strategy(%struct.ata_port* %199, %struct.ata_device* %200)
  br label %202

202:                                              ; preds = %195, %111
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @it821x_clock_strategy(%struct.ata_port*, %struct.ata_device*) #1

declare dso_local i32 @it821x_program_udma(%struct.ata_port*, %struct.ata_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
