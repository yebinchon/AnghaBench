; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-timings.c_ide_timing_compute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-timings.c_ide_timing_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.ide_timing = type { i32, i32, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@XFER_PIO_2 = common dso_local global i64 0, align 8
@ATA_ID_EIDE_PIO = common dso_local global i64 0, align 8
@XFER_PIO_4 = common dso_local global i64 0, align 8
@XFER_PIO_5 = common dso_local global i64 0, align 8
@ATA_ID_EIDE_PIO_IORDY = common dso_local global i64 0, align 8
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_MW_DMA_2 = common dso_local global i64 0, align 8
@ATA_ID_EIDE_DMA_MIN = common dso_local global i64 0, align 8
@IDE_TIMING_CYCLE = common dso_local global i32 0, align 4
@IDE_TIMING_CYC8B = common dso_local global i32 0, align 4
@XFER_SW_DMA_0 = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@IDE_TIMING_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_timing_compute(%struct.TYPE_4__* %0, i64 %1, %struct.ide_timing* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ide_timing*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ide_timing*, align 8
  %14 = alloca %struct.ide_timing, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.ide_timing* %2, %struct.ide_timing** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call %struct.ide_timing* @ide_timing_find_mode(i64 %19)
  store %struct.ide_timing* %20, %struct.ide_timing** %13, align 8
  %21 = load %struct.ide_timing*, %struct.ide_timing** %13, align 8
  %22 = icmp eq %struct.ide_timing* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %197

26:                                               ; preds = %5
  %27 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %28 = load %struct.ide_timing*, %struct.ide_timing** %13, align 8
  %29 = bitcast %struct.ide_timing* %27 to i8*
  %30 = bitcast %struct.ide_timing* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 40, i1 false)
  %31 = load i32*, i32** %12, align 8
  %32 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %91

37:                                               ; preds = %26
  %38 = call i32 @memset(%struct.ide_timing* %14, i32 0, i32 40)
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @XFER_PIO_2, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32*, i32** %12, align 8
  %44 = load i64, i64* @ATA_ID_EIDE_PIO, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %84

49:                                               ; preds = %37
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @XFER_PIO_4, align 8
  %52 = icmp sle i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @XFER_PIO_5, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @ata_id_is_cfa(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57, %49
  %62 = load i32*, i32** %12, align 8
  %63 = load i64, i64* @ATA_ID_EIDE_PIO_IORDY, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 1
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %83

68:                                               ; preds = %57, %53
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @XFER_MW_DMA_0, align 8
  %71 = icmp sge i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* @XFER_MW_DMA_2, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32*, i32** %12, align 8
  %78 = load i64, i64* @ATA_ID_EIDE_DMA_MIN, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %14, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  br label %82

82:                                               ; preds = %76, %72, %68
  br label %83

83:                                               ; preds = %82, %61
  br label %84

84:                                               ; preds = %83, %42
  %85 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %86 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %87 = load i32, i32* @IDE_TIMING_CYCLE, align 4
  %88 = load i32, i32* @IDE_TIMING_CYC8B, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @ide_timing_merge(%struct.ide_timing* %14, %struct.ide_timing* %85, %struct.ide_timing* %86, i32 %89)
  br label %91

91:                                               ; preds = %84, %26
  %92 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %93 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @ide_timing_quantize(%struct.ide_timing* %92, %struct.ide_timing* %93, i32 %94, i32 %95)
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @XFER_SW_DMA_0, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %91
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = call i64 @ide_get_best_pio_mode(%struct.TYPE_4__* %101, i32 255, i32 5)
  store i64 %102, i64* %15, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = load i64, i64* @XFER_PIO_0, align 8
  %105 = load i64, i64* %15, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @ide_timing_compute(%struct.TYPE_4__* %103, i64 %106, %struct.ide_timing* %14, i32 %107, i32 %108)
  %110 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %111 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %112 = load i32, i32* @IDE_TIMING_ALL, align 4
  %113 = call i32 @ide_timing_merge(%struct.ide_timing* %14, %struct.ide_timing* %110, %struct.ide_timing* %111, i32 %112)
  br label %114

114:                                              ; preds = %100, %91
  %115 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %116 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %119 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %123 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %121, %125
  br i1 %126, label %127, label %155

127:                                              ; preds = %114
  %128 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %129 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %133 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %136 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  %139 = sub nsw i64 %131, %138
  %140 = sdiv i64 %139, 2
  %141 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %142 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, %140
  store i64 %144, i64* %142, align 8
  %145 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %146 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %150 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  %153 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %154 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %153, i32 0, i32 3
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %127, %114
  %156 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %157 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %160 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %158, %161
  %163 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %164 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %162, %166
  br i1 %167, label %168, label %196

168:                                              ; preds = %155
  %169 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %170 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %174 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %177 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %175, %178
  %180 = sub nsw i64 %172, %179
  %181 = sdiv i64 %180, 2
  %182 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %183 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, %181
  store i64 %185, i64* %183, align 8
  %186 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %187 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %191 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %189, %192
  %194 = load %struct.ide_timing*, %struct.ide_timing** %9, align 8
  %195 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %194, i32 0, i32 5
  store i64 %193, i64* %195, align 8
  br label %196

196:                                              ; preds = %168, %155
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %196, %23
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local %struct.ide_timing* @ide_timing_find_mode(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.ide_timing*, i32, i32) #1

declare dso_local i32 @ata_id_is_cfa(i32*) #1

declare dso_local i32 @ide_timing_merge(%struct.ide_timing*, %struct.ide_timing*, %struct.ide_timing*, i32) #1

declare dso_local i32 @ide_timing_quantize(%struct.ide_timing*, %struct.ide_timing*, i32, i32) #1

declare dso_local i64 @ide_get_best_pio_mode(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
