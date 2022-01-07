; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_timing_compute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_timing_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32*, i16 }
%struct.ata_timing = type { i32, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i16 0, align 2
@XFER_SW_DMA_0 = common dso_local global i16 0, align 2
@XFER_PIO_2 = common dso_local global i16 0, align 2
@ATA_ID_EIDE_PIO = common dso_local global i64 0, align 8
@ATA_ID_EIDE_PIO_IORDY = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i16 0, align 2
@XFER_MW_DMA_2 = common dso_local global i16 0, align 2
@ATA_ID_EIDE_DMA_MIN = common dso_local global i64 0, align 8
@ATA_TIMING_CYCLE = common dso_local global i32 0, align 4
@ATA_TIMING_CYC8B = common dso_local global i32 0, align 4
@XFER_PIO_6 = common dso_local global i16 0, align 2
@ATA_TIMING_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_timing_compute(%struct.ata_device* %0, i16 zeroext %1, %struct.ata_timing* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_device*, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.ata_timing*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ata_timing*, align 8
  %13 = alloca %struct.ata_timing, align 8
  store %struct.ata_device* %0, %struct.ata_device** %7, align 8
  store i16 %1, i16* %8, align 2
  store %struct.ata_timing* %2, %struct.ata_timing** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i16, i16* %8, align 2
  %15 = call %struct.ata_timing* @ata_timing_find_mode(i16 zeroext %14)
  store %struct.ata_timing* %15, %struct.ata_timing** %12, align 8
  %16 = icmp ne %struct.ata_timing* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %228

20:                                               ; preds = %5
  %21 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %22 = load %struct.ata_timing*, %struct.ata_timing** %12, align 8
  %23 = call i32 @memcpy(%struct.ata_timing* %21, %struct.ata_timing* %22, i32 40)
  %24 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %25 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %98

32:                                               ; preds = %20
  %33 = call i32 @memset(%struct.ata_timing* %13, i32 0, i32 40)
  %34 = load i16, i16* %8, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @XFER_PIO_0, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %32
  %40 = load i16, i16* %8, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @XFER_SW_DMA_0, align 2
  %43 = zext i16 %42 to i32
  %44 = icmp sle i32 %41, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %39
  %46 = load i16, i16* %8, align 2
  %47 = zext i16 %46 to i32
  %48 = load i16, i16* @XFER_PIO_2, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp sle i32 %47, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %53 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @ATA_ID_EIDE_PIO, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %69

60:                                               ; preds = %45
  %61 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %62 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @ATA_ID_EIDE_PIO_IORDY, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %51
  br label %91

70:                                               ; preds = %39, %32
  %71 = load i16, i16* %8, align 2
  %72 = zext i16 %71 to i32
  %73 = load i16, i16* @XFER_MW_DMA_0, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load i16, i16* %8, align 2
  %78 = zext i16 %77 to i32
  %79 = load i16, i16* @XFER_MW_DMA_2, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp sle i32 %78, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %84 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* @ATA_ID_EIDE_DMA_MIN, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %13, i32 0, i32 0
  store i32 %88, i32* %89, align 8
  br label %90

90:                                               ; preds = %82, %76, %70
  br label %91

91:                                               ; preds = %90, %69
  %92 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %93 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %94 = load i32, i32* @ATA_TIMING_CYCLE, align 4
  %95 = load i32, i32* @ATA_TIMING_CYC8B, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @ata_timing_merge(%struct.ata_timing* %13, %struct.ata_timing* %92, %struct.ata_timing* %93, i32 %96)
  br label %98

98:                                               ; preds = %91, %20
  %99 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %100 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @ata_timing_quantize(%struct.ata_timing* %99, %struct.ata_timing* %100, i32 %101, i32 %102)
  %104 = load i16, i16* %8, align 2
  %105 = zext i16 %104 to i32
  %106 = load i16, i16* @XFER_PIO_6, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp sgt i32 %105, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %98
  %110 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %111 = load %struct.ata_device*, %struct.ata_device** %7, align 8
  %112 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %111, i32 0, i32 1
  %113 = load i16, i16* %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @ata_timing_compute(%struct.ata_device* %110, i16 zeroext %113, %struct.ata_timing* %13, i32 %114, i32 %115)
  %117 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %118 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %119 = load i32, i32* @ATA_TIMING_ALL, align 4
  %120 = call i32 @ata_timing_merge(%struct.ata_timing* %13, %struct.ata_timing* %117, %struct.ata_timing* %118, i32 %119)
  br label %121

121:                                              ; preds = %109, %98
  %122 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %123 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %126 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %124, %127
  %129 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %130 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp slt i64 %128, %132
  br i1 %133, label %134, label %162

134:                                              ; preds = %121
  %135 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %136 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %140 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %143 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = sub nsw i64 %138, %145
  %147 = sdiv i64 %146, 2
  %148 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %149 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %153 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %157 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %155, %158
  %160 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %161 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %160, i32 0, i32 3
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %134, %121
  %163 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %164 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %167 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %165, %168
  %170 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %171 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %169, %173
  br i1 %174, label %175, label %203

175:                                              ; preds = %162
  %176 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %177 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %181 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %184 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %182, %185
  %187 = sub nsw i64 %179, %186
  %188 = sdiv i64 %187, 2
  %189 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %190 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, %188
  store i64 %192, i64* %190, align 8
  %193 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %194 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %198 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %197, i32 0, i32 4
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %196, %199
  %201 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %202 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %201, i32 0, i32 5
  store i64 %200, i64* %202, align 8
  br label %203

203:                                              ; preds = %175, %162
  %204 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %205 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %208 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %207, i32 0, i32 5
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %206, %209
  %211 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %212 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = icmp sgt i64 %210, %214
  br i1 %215, label %216, label %227

216:                                              ; preds = %203
  %217 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %218 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %221 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %219, %222
  %224 = trunc i64 %223 to i32
  %225 = load %struct.ata_timing*, %struct.ata_timing** %9, align 8
  %226 = getelementptr inbounds %struct.ata_timing, %struct.ata_timing* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %216, %203
  store i32 0, i32* %6, align 4
  br label %228

228:                                              ; preds = %227, %17
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local %struct.ata_timing* @ata_timing_find_mode(i16 zeroext) #1

declare dso_local i32 @memcpy(%struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @memset(%struct.ata_timing*, i32, i32) #1

declare dso_local i32 @ata_timing_merge(%struct.ata_timing*, %struct.ata_timing*, %struct.ata_timing*, i32) #1

declare dso_local i32 @ata_timing_quantize(%struct.ata_timing*, %struct.ata_timing*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
