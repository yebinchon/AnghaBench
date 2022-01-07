; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it8213.c_it8213_set_dmamode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_it8213.c_it8213_set_dmamode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@it8213_set_dmamode.timings = internal constant [5 x [2 x i64]] [[2 x i64] zeroinitializer, [2 x i64] zeroinitializer, [2 x i64] [i64 1, i64 0], [2 x i64] [i64 2, i64 1], [2 x i64] [i64 2, i64 3]], align 16
@XFER_UDMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@it8213_set_dmamode.needed_pio = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*)* @it8213_set_dmamode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @it8213_set_dmamode(%struct.ata_port* %0, %struct.ata_device* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_device* %1, %struct.ata_device** %4, align 8
  %19 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %20 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.pci_dev* @to_pci_dev(i32 %23)
  store %struct.pci_dev* %24, %struct.pci_dev** %5, align 8
  %25 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %26 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %29 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = call i32 @pci_read_config_word(%struct.pci_dev* %31, i32 64, i32* %6)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = call i32 @pci_read_config_byte(%struct.pci_dev* %33, i32 72, i64* %9)
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @XFER_UDMA_0, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %98

38:                                               ; preds = %2
  %39 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %40 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XFER_UDMA_0, align 8
  %43 = sub nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 1
  %47 = sub i32 2, %46
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 5
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  store i32 4096, i32* %13, align 4
  br label %59

53:                                               ; preds = %38
  %54 = load i32, i32* %10, align 4
  %55 = icmp ugt i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* %13, align 4
  br label %58

57:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 1, %60
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %9, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = call i32 @pci_read_config_word(%struct.pci_dev* %65, i32 74, i32* %11)
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 4, %67
  %69 = shl i32 3, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %10, align 4
  %74 = and i32 %73, 3
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 4, %75
  %77 = shl i32 %74, %76
  %78 = load i32, i32* %11, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @pci_write_config_word(%struct.pci_dev* %80, i32 74, i32 %81)
  %83 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %84 = call i32 @pci_read_config_word(%struct.pci_dev* %83, i32 84, i32* %12)
  %85 = load i32, i32* %8, align 4
  %86 = shl i32 4097, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %8, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  %95 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @pci_write_config_word(%struct.pci_dev* %95, i32 84, i32 %96)
  br label %200

98:                                               ; preds = %2
  %99 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %100 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @XFER_MW_DMA_0, align 4
  %103 = zext i32 %102 to i64
  %104 = sub nsw i64 %101, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* @it8213_set_dmamode.needed_pio, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %109, 130
  store i32 %110, i32* %18, align 4
  store i32 3, i32* %16, align 4
  %111 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %112 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* @it8213_set_dmamode.needed_pio, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ult i32 %113, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %98
  %120 = load i32, i32* %16, align 4
  %121 = or i32 %120, 8
  store i32 %121, i32* %16, align 4
  br label %122

122:                                              ; preds = %119, %98
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %167

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, 65359
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %16, align 4
  %129 = shl i32 %128, 4
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  %132 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %133 = call i32 @pci_read_config_byte(%struct.pci_dev* %132, i32 68, i64* %17)
  %134 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %135 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 225, %136
  %138 = add nsw i32 15, %137
  %139 = sext i32 %138 to i64
  %140 = load i64, i64* %17, align 8
  %141 = and i64 %140, %139
  store i64 %141, i64* %17, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @it8213_set_dmamode.timings, i64 0, i64 %143
  %145 = getelementptr inbounds [2 x i64], [2 x i64]* %144, i64 0, i64 0
  %146 = load i64, i64* %145, align 16
  %147 = shl i64 %146, 2
  %148 = load i32, i32* %18, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @it8213_set_dmamode.timings, i64 0, i64 %149
  %151 = getelementptr inbounds [2 x i64], [2 x i64]* %150, i64 0, i64 1
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %147, %152
  %154 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %155 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 4, i32 0
  %160 = zext i32 %159 to i64
  %161 = shl i64 %153, %160
  %162 = load i64, i64* %17, align 8
  %163 = or i64 %162, %161
  store i64 %163, i64* %17, align 8
  %164 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %165 = load i64, i64* %17, align 8
  %166 = call i32 @pci_write_config_byte(%struct.pci_dev* %164, i32 68, i64 %165)
  br label %190

167:                                              ; preds = %122
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, 52468
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %6, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %18, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @it8213_set_dmamode.timings, i64 0, i64 %174
  %176 = getelementptr inbounds [2 x i64], [2 x i64]* %175, i64 0, i64 0
  %177 = load i64, i64* %176, align 16
  %178 = shl i64 %177, 12
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [5 x [2 x i64]], [5 x [2 x i64]]* @it8213_set_dmamode.timings, i64 0, i64 %180
  %182 = getelementptr inbounds [2 x i64], [2 x i64]* %181, i64 0, i64 1
  %183 = load i64, i64* %182, align 8
  %184 = shl i64 %183, 8
  %185 = or i64 %178, %184
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = or i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %167, %125
  %191 = load i32, i32* %8, align 4
  %192 = shl i32 1, %191
  %193 = xor i32 %192, -1
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* %9, align 8
  %196 = and i64 %195, %194
  store i64 %196, i64* %9, align 8
  %197 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @pci_write_config_word(%struct.pci_dev* %197, i32 64, i32 %198)
  br label %200

200:                                              ; preds = %190, %59
  %201 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %202 = load i64, i64* %9, align 8
  %203 = call i32 @pci_write_config_byte(%struct.pci_dev* %201, i32 72, i64 %202)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
