; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscPutReadySgListQueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_advansys.c_AscPutReadySgListQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, i64, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, i32, i8* }

@QC_SG_HEAD = common dso_local global i32 0, align 4
@QCSG_SG_XFER_LIST = common dso_local global i32 0, align 4
@ASC_SG_LIST_PER_Q = common dso_local global i32 0, align 4
@QCSG_SG_XFER_END = common dso_local global i32 0, align 4
@ASC_SCSIQ_B_FWD = common dso_local global i32 0, align 4
@ASC_SCSIQ_SGHD_CPY_BEG = common dso_local global i32 0, align 4
@ASC_SGQ_LIST_BEG = common dso_local global i32 0, align 4
@ASC_MAX_SG_LIST = common dso_local global i64 0, align 8
@QCSG_SG_XFER_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*)* @AscPutReadySgListQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscPutReadySgListQueue(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %9, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %11, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %12, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 1
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %177

60:                                               ; preds = %3
  %61 = load i32, i32* @QC_SG_HEAD, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @ASC_QNO_TO_QADDR(i8* %67)
  store i32 %68, i32* %17, align 4
  store i32 1, i32* %15, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 5
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* @QCSG_SG_XFER_LIST, align 4
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  store i32 %77, i32* %78, align 8
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %173, %60
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %176

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %87, i32* %88, align 8
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %85
  %93 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %94 = mul nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %99 = load i32, i32* %16, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %92
  %104 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %106, i32* %107, align 8
  br label %115

108:                                              ; preds = %92
  %109 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %110 = sub nsw i32 %109, 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %113 = sub nsw i32 %112, 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %113, i32* %114, align 8
  br label %115

115:                                              ; preds = %108, %103
  br label %138

116:                                              ; preds = %85
  %117 = load i32, i32* @QCSG_SG_XFER_END, align 4
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 8
  %121 = load i32, i32* %16, align 4
  %122 = shl i32 %121, 1
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %116
  %126 = load i32, i32* %16, align 4
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %16, align 4
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %128, i32* %129, align 8
  br label %137

130:                                              ; preds = %116
  %131 = load i32, i32* %16, align 4
  %132 = sub nsw i32 %131, 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %16, align 4
  %135 = sub nsw i32 %134, 1
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %135, i32* %136, align 8
  br label %137

137:                                              ; preds = %130, %125
  store i32 0, i32* %16, align 4
  br label %138

138:                                              ; preds = %137, %115
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @ASC_SCSIQ_B_FWD, align 4
  %142 = add nsw i32 %140, %141
  %143 = call i8* @AscReadLramByte(i32 %139, i32 %142)
  store i8* %143, i8** %18, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  store i8* %144, i8** %145, align 8
  %146 = load i8*, i8** %18, align 8
  %147 = call i32 @ASC_QNO_TO_QADDR(i8* %146)
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* @ASC_SCSIQ_SGHD_CPY_BEG, align 4
  %151 = add nsw i32 %149, %150
  %152 = bitcast %struct.TYPE_13__* %10 to i8**
  %153 = call i32 @AscMemWordCopyPtrToLram(i32 %148, i32 %151, i8** %152, i32 20)
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* @ASC_SGQ_LIST_BEG, align 4
  %157 = add nsw i32 %155, %156
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i64 %162
  %164 = bitcast %struct.TYPE_11__* %163 to i8**
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @AscMemDWordCopyPtrToLram(i32 %154, i32 %157, i8** %164, i32 %165)
  %167 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %168 = load i32, i32* %15, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %138
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  br label %79

176:                                              ; preds = %79
  br label %185

177:                                              ; preds = %3
  %178 = load i32, i32* @QC_SG_HEAD, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = and i32 %183, %179
  store i32 %184, i32* %182, align 8
  br label %185

185:                                              ; preds = %177, %176
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = call i32 @AscPutReadyQueue(%struct.TYPE_16__* %186, %struct.TYPE_15__* %187, i8* %188)
  store i32 %189, i32* %7, align 4
  %190 = load i8*, i8** %11, align 8
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 2
  store i8* %190, i8** %193, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  %198 = load i32, i32* %7, align 4
  ret i32 %198
}

declare dso_local i32 @ASC_QNO_TO_QADDR(i8*) #1

declare dso_local i8* @AscReadLramByte(i32, i32) #1

declare dso_local i32 @AscMemWordCopyPtrToLram(i32, i32, i8**, i32) #1

declare dso_local i32 @AscMemDWordCopyPtrToLram(i32, i32, i8**, i32) #1

declare dso_local i32 @AscPutReadyQueue(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
