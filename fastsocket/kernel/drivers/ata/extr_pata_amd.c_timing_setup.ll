; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_amd.c_timing_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_amd.c_timing_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_device = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.ata_timing = type { i32, i32, i32, i32, i32, i32 }

@timing_setup.amd_cyc2udma = internal constant [16 x i8] c"\06\06\05\04\00\01\01\02\02\03\03\03\03\03\03\07", align 16
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown mode %d.\0A\00", align 1
@ATA_TIMING_8BIT = common dso_local global i32 0, align 4
@XFER_UDMA_5 = common dso_local global i32 0, align 4
@XFER_UDMA_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_device*, i32, i32, i32)* @timing_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timing_setup(%struct.ata_port* %0, %struct.ata_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.ata_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ata_timing, align 4
  %15 = alloca %struct.ata_timing, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %6, align 8
  store %struct.ata_device* %1, %struct.ata_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %21 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.pci_dev* @to_pci_dev(i32 %24)
  store %struct.pci_dev* %25, %struct.pci_dev** %11, align 8
  %26 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %27 = call %struct.ata_device* @ata_dev_pair(%struct.ata_device* %26)
  store %struct.ata_device* %27, %struct.ata_device** %12, align 8
  %28 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %29 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 2
  %32 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %33 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %13, align 4
  store i32 33333, i32* %18, align 4
  store i32 30000, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %5
  %40 = load i32, i32* %16, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %39, %5
  %43 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i64 @ata_timing_compute(%struct.ata_device* %43, i32 %44, %struct.ata_timing* %14, i32 %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @dev_printk(i32 %50, i32* %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %235

55:                                               ; preds = %42
  %56 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %57 = icmp ne %struct.ata_device* %56, null
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %60 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %65 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %66 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %17, align 4
  %70 = call i64 @ata_timing_compute(%struct.ata_device* %64, i32 %67, %struct.ata_timing* %15, i32 %68, i32 %69)
  %71 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %72 = call i32 @ata_timing_merge(%struct.ata_timing* %15, %struct.ata_timing* %14, %struct.ata_timing* %14, i32 %71)
  br label %73

73:                                               ; preds = %63, %58
  %74 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %75 = load %struct.ata_device*, %struct.ata_device** %12, align 8
  %76 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = call i64 @ata_timing_compute(%struct.ata_device* %74, i32 %77, %struct.ata_timing* %15, i32 %78, i32 %79)
  %81 = load i32, i32* @ATA_TIMING_8BIT, align 4
  %82 = call i32 @ata_timing_merge(%struct.ata_timing* %15, %struct.ata_timing* %14, %struct.ata_timing* %14, i32 %81)
  br label %83

83:                                               ; preds = %73, %55
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @XFER_UDMA_5, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @XFER_UDMA_6, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  store i32 15, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 12
  %99 = call i32 @pci_read_config_byte(%struct.pci_dev* %96, i32 %98, i32* %19)
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 3, %101
  %103 = shl i32 %102, 1
  %104 = shl i32 3, %103
  %105 = xor i32 %104, -1
  %106 = and i32 %100, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @clamp_val(i32 %109, i32 1, i32 4)
  %111 = sub i64 %110, 1
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 3, %112
  %114 = shl i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = shl i64 %111, %115
  %117 = or i64 %107, %116
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %19, align 4
  %119 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 12
  %122 = load i32, i32* %19, align 4
  %123 = call i32 @pci_write_config_byte(%struct.pci_dev* %119, i32 %121, i32 %122)
  %124 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 14
  %127 = load i32, i32* %13, align 4
  %128 = ashr i32 %127, 1
  %129 = sub nsw i32 1, %128
  %130 = add nsw i32 %126, %129
  %131 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @clamp_val(i32 %132, i32 1, i32 16)
  %134 = sub i64 %133, 1
  %135 = shl i64 %134, 4
  %136 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @clamp_val(i32 %137, i32 1, i32 16)
  %139 = sub i64 %138, 1
  %140 = or i64 %135, %139
  %141 = trunc i64 %140 to i32
  %142 = call i32 @pci_write_config_byte(%struct.pci_dev* %124, i32 %130, i32 %141)
  %143 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 8
  %146 = load i32, i32* %13, align 4
  %147 = sub nsw i32 3, %146
  %148 = add nsw i32 %145, %147
  %149 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @clamp_val(i32 %150, i32 1, i32 16)
  %152 = sub i64 %151, 1
  %153 = shl i64 %152, 4
  %154 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @clamp_val(i32 %155, i32 1, i32 16)
  %157 = sub i64 %156, 1
  %158 = or i64 %153, %157
  %159 = trunc i64 %158 to i32
  %160 = call i32 @pci_write_config_byte(%struct.pci_dev* %143, i32 %148, i32 %159)
  %161 = load i32, i32* %10, align 4
  switch i32 %161, label %221 [
    i32 1, label %162
    i32 2, label %176
    i32 3, label %191
    i32 4, label %206
  ]

162:                                              ; preds = %95
  %163 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @clamp_val(i32 %168, i32 2, i32 5)
  %170 = sub i64 %169, 2
  %171 = or i64 192, %170
  br label %173

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %172, %166
  %174 = phi i64 [ %171, %166 ], [ 3, %172 ]
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %19, align 4
  br label %222

176:                                              ; preds = %95
  %177 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @clamp_val(i32 %182, i32 2, i32 10)
  %184 = getelementptr inbounds [16 x i8], [16 x i8]* @timing_setup.amd_cyc2udma, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = or i32 192, %186
  br label %189

188:                                              ; preds = %176
  br label %189

189:                                              ; preds = %188, %180
  %190 = phi i32 [ %187, %180 ], [ 3, %188 ]
  store i32 %190, i32* %19, align 4
  br label %222

191:                                              ; preds = %95
  %192 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @clamp_val(i32 %197, i32 1, i32 10)
  %199 = getelementptr inbounds [16 x i8], [16 x i8]* @timing_setup.amd_cyc2udma, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = or i32 192, %201
  br label %204

203:                                              ; preds = %191
  br label %204

204:                                              ; preds = %203, %195
  %205 = phi i32 [ %202, %195 ], [ 3, %203 ]
  store i32 %205, i32* %19, align 4
  br label %222

206:                                              ; preds = %95
  %207 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @clamp_val(i32 %212, i32 1, i32 15)
  %214 = getelementptr inbounds [16 x i8], [16 x i8]* @timing_setup.amd_cyc2udma, i64 0, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = or i32 192, %216
  br label %219

218:                                              ; preds = %206
  br label %219

219:                                              ; preds = %218, %210
  %220 = phi i32 [ %217, %210 ], [ 3, %218 ]
  store i32 %220, i32* %19, align 4
  br label %222

221:                                              ; preds = %95
  br label %235

222:                                              ; preds = %219, %204, %189, %173
  %223 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %14, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %222
  %227 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %228 = load i32, i32* %8, align 4
  %229 = add nsw i32 %228, 16
  %230 = load i32, i32* %13, align 4
  %231 = sub nsw i32 3, %230
  %232 = add nsw i32 %229, %231
  %233 = load i32, i32* %19, align 4
  %234 = call i32 @pci_write_config_byte(%struct.pci_dev* %227, i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %49, %221, %226, %222
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ata_device* @ata_dev_pair(%struct.ata_device*) #1

declare dso_local i64 @ata_timing_compute(%struct.ata_device*, i32, %struct.ata_timing*, i32, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
