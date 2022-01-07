; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_iphase.c_ia_open_abr_vc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_iphase.c_ia_open_abr_vc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__**, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atm_vcc = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, i8* }

@ABR = common dso_local global i32 0, align 4
@MRM = common dso_local global i32 0, align 4
@REASS_TABLE = common dso_local global i32 0, align 4
@NO_AAL5_PKT = common dso_local global i32 0, align 4
@REASS_ABR = common dso_local global i32 0, align 4
@ABR_VC_TABLE = common dso_local global i32 0, align 4
@VC_ACTIVE = common dso_local global i32 0, align 4
@VC_ABR = common dso_local global i32 0, align 4
@INVALID_ADTF = common dso_local global i32 0, align 4
@INVALID_CDF = common dso_local global i32 0, align 4
@INVALID_FRTT = common dso_local global i32 0, align 4
@INVALID_ICR = common dso_local global i32 0, align 4
@INVALID_MCR = common dso_local global i32 0, align 4
@INVALID_NRM = common dso_local global i32 0, align 4
@INVALID_PCR = common dso_local global i32 0, align 4
@INVALID_RDF = common dso_local global i32 0, align 4
@INVALID_RIF = common dso_local global i32 0, align 4
@INVALID_TBE = common dso_local global i32 0, align 4
@INVALID_TRM = common dso_local global i32 0, align 4
@MAX_ADTF = common dso_local global i32 0, align 4
@MAX_CDF = common dso_local global i32 0, align 4
@MAX_FRTT = common dso_local global i32 0, align 4
@MAX_NRM = common dso_local global i32 0, align 4
@MAX_RDF = common dso_local global i32 0, align 4
@MAX_RIF = common dso_local global i32 0, align 4
@MAX_TBE = common dso_local global i32 0, align 4
@MAX_TRM = common dso_local global i32 0, align 4
@MCR_UNAVAILABLE = common dso_local global i32 0, align 4
@MIN_FRTT = common dso_local global i32 0, align 4
@MIN_TBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_9__*, %struct.atm_vcc*, i32)* @ia_open_abr_vc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia_open_abr_vc(%struct.TYPE_12__* %0, %struct.TYPE_9__* %1, %struct.atm_vcc* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.atm_vcc* %2, %struct.atm_vcc** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %9, align 8
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %23 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i64 %26
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %9, align 8
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %240 [
    i32 1, label %29
    i32 0, label %155
  ]

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = ptrtoint %struct.TYPE_11__* %30 to i32
  %32 = call i32 @memset(i32 %31, i32 0, i32 64)
  %33 = load i32, i32* @ABR, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 2, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = shl i32 %40, 8
  %42 = load i32, i32* %13, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 16, %48
  %50 = shl i32 2, %49
  %51 = sdiv i32 100000, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %29
  store i32 1, i32* %12, align 4
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = and i32 %59, 15
  %61 = shl i32 %60, 12
  %62 = load i32, i32* @MRM, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %61, %63
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sdiv i32 %71, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  store i32 1, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %55
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %78, 255
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cellrate_to_float(i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %93, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %77
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %101, %104
  %106 = mul nsw i32 %105, 1000000
  br label %116

107:                                              ; preds = %77
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %110, %113
  %115 = sdiv i32 1000000, %114
  br label %116

116:                                              ; preds = %107, %98
  %117 = phi i32 [ %106, %98 ], [ %115, %107 ]
  %118 = call i32 @min(i32 %90, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i8* @cellrate_to_float(i32 %119)
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 5
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 10000, %125
  %127 = sdiv i32 %126, 8192
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %130, %116
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 7, %134
  %136 = shl i32 %135, 12
  %137 = load i32, i32* %15, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %138, 4095
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @cellrate_to_float(i32 %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 7
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 6
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 4
  store i32 66, i32* %154, align 8
  br label %241

155:                                              ; preds = %4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @REASS_TABLE, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %159, %162
  %164 = add nsw i32 %158, %163
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i32*
  store i32* %166, i32** %17, align 8
  %167 = load i32, i32* @NO_AAL5_PKT, align 4
  %168 = load i32, i32* @REASS_ABR, align 4
  %169 = or i32 %167, %168
  %170 = load i32*, i32** %17, align 8
  %171 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %172 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  store i32 %169, i32* %175, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @ABR_VC_TABLE, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %179, %182
  %184 = add nsw i32 %178, %183
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %186, %struct.TYPE_10__** %10, align 8
  %187 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %188 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i64 %191
  store %struct.TYPE_10__* %192, %struct.TYPE_10__** %10, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 4
  %196 = sub nsw i32 15, %195
  %197 = and i32 %196, 15
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = sub nsw i32 15, %205
  %207 = shl i32 %202, %206
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %155
  store i32 1, i32* %16, align 4
  br label %211

211:                                              ; preds = %210, %155
  %212 = load i32, i32* %16, align 4
  %213 = call i8* @cellrate_to_float(i32 %212)
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 1
  store i8* %213, i8** %215, align 8
  %216 = load i32, i32* @VC_ACTIVE, align 4
  %217 = load i32, i32* @VC_ABR, align 4
  %218 = or i32 %216, %217
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 5
  %221 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %220, align 8
  %222 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %223 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %221, i64 %225
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  store i32 %218, i32* %228, align 4
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, %231
  store i32 %235, i32* %233, align 4
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 8
  br label %241

240:                                              ; preds = %4
  br label %241

241:                                              ; preds = %240, %211, %131
  ret i32 0
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cellrate_to_float(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
