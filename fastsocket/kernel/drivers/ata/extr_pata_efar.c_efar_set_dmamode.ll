; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_efar.c_efar_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_efar.c_efar_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@efar_set_dmamode.timings = internal constant [5 x [2 x i64]] [[2 x i64] zeroinitializer, [2 x i64] zeroinitializer, [2 x i64] [i64 1, i64 0], [2 x i64] [i64 2, i64 1], [2 x i64] [i64 2, i64 3]], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i32 0, align 4
@XFER_PIO_3 = common dso_local global i32 0, align 4
@XFER_PIO_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @efar_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efar_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
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
  %15 = alloca i64, align 8
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %18 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %19 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.pci_dev* @to_pci_dev(i32 %22)
  store %struct.pci_dev* %23, %struct.pci_dev** %5, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 66, i32 64
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %6, align 8
  %31 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %32 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %35 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %38 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @pci_read_config_word(%struct.pci_dev* %42, i32 %44, i32* %7)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %47 = call i32 @pci_read_config_byte(%struct.pci_dev* %46, i32 72, i64* %10)
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @XFER_UDMA_0, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %2
  %52 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @XFER_UDMA_0, align 8
  %56 = sub nsw i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 1, %58
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %10, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %64 = call i32 @pci_read_config_word(%struct.pci_dev* %63, i32 74, i32* %12)
  %65 = load i32, i32* %9, align 4
  %66 = mul nsw i32 4, %65
  %67 = shl i32 7, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = mul nsw i32 4, %72
  %74 = shl i32 %71, %73
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @pci_write_config_word(%struct.pci_dev* %77, i64 74, i32 %78)
  br label %192

80:                                               ; preds = %2
  %81 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %82 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @XFER_MW_DMA_0, align 4
  %85 = zext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %89 = load i32, i32* @XFER_PIO_0, align 4
  store i32 %89, i32* %88, align 4
  %90 = getelementptr inbounds i32, i32* %88, i64 1
  %91 = load i32, i32* @XFER_PIO_3, align 4
  store i32 %91, i32* %90, align 4
  %92 = getelementptr inbounds i32, i32* %90, i64 1
  %93 = load i32, i32* @XFER_PIO_4, align 4
  store i32 %93, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @XFER_PIO_0, align 4
  %99 = sub i32 %97, %98
  store i32 %99, i32* %17, align 4
  store i32 3, i32* %14, align 4
  %100 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %101 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ult i32 %102, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %80
  %109 = load i32, i32* %14, align 4
  %110 = or i32 %109, 8
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %108, %80
  %112 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %113 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %158

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, 65359
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %14, align 4
  %120 = shl i32 %119, 4
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %124 = call i32 @pci_read_config_byte(%struct.pci_dev* %123, i32 68, i64* %15)
  %125 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %126 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = mul nsw i32 225, %127
  %129 = add nsw i32 15, %128
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %15, align 8
  %132 = and i64 %131, %130
  store i64 %132, i64* %15, align 8
  %133 = load i32, i32* %17, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @efar_set_dmamode.timings, i64 0, i64 %134
  %136 = getelementptr inbounds [2 x i64], [2 x i64]* %135, i64 0, i64 0
  %137 = load i64, i64* %136, align 16
  %138 = shl i64 %137, 2
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @efar_set_dmamode.timings, i64 0, i64 %140
  %142 = getelementptr inbounds [2 x i64], [2 x i64]* %141, i64 0, i64 1
  %143 = load i64, i64* %142, align 8
  %144 = or i64 %138, %143
  %145 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %146 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 4, i32 0
  %151 = zext i32 %150 to i64
  %152 = shl i64 %144, %151
  %153 = load i64, i64* %15, align 8
  %154 = or i64 %153, %152
  store i64 %154, i64* %15, align 8
  %155 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %156 = load i64, i64* %15, align 8
  %157 = call i32 @pci_write_config_byte(%struct.pci_dev* %155, i32 68, i64 %156)
  br label %181

158:                                              ; preds = %111
  %159 = load i32, i32* %7, align 4
  %160 = and i32 %159, 52468
  store i32 %160, i32* %7, align 4
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @efar_set_dmamode.timings, i64 0, i64 %165
  %167 = getelementptr inbounds [2 x i64], [2 x i64]* %166, i64 0, i64 0
  %168 = load i64, i64* %167, align 16
  %169 = shl i64 %168, 12
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @efar_set_dmamode.timings, i64 0, i64 %171
  %173 = getelementptr inbounds [2 x i64], [2 x i64]* %172, i64 0, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = shl i64 %174, 8
  %176 = or i64 %169, %175
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = or i64 %178, %176
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %158, %116
  %182 = load i32, i32* %9, align 4
  %183 = shl i32 1, %182
  %184 = xor i32 %183, -1
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %10, align 8
  %187 = and i64 %186, %185
  store i64 %187, i64* %10, align 8
  %188 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %189 = load i64, i64* %6, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @pci_write_config_word(%struct.pci_dev* %188, i64 %189, i32 %190)
  br label %192

192:                                              ; preds = %181, %51
  %193 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %194 = load i64, i64* %10, align 8
  %195 = call i32 @pci_write_config_byte(%struct.pci_dev* %193, i32 72, i64 %194)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
