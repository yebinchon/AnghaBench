; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_fastreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_fastreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sq = type { i64, i32* }
%union.t4_wr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8*, i64, i32, i32, i64, i64 }
%struct.ib_send_wr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i64 }
%struct.TYPE_6__ = type { i32* }
%struct.fw_ri_immd = type { i8*, i64, i64, i32 }

@T4_MAX_FR_DEPTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FW_RI_VA_BASED_TO = common dso_local global i32 0, align 4
@T4_MAX_FR_IMMD = common dso_local global i32 0, align 4
@FW_RI_DATA_IMMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_sq*, %union.t4_wr*, %struct.ib_send_wr*, i32*)* @build_fastreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_fastreg(%struct.t4_sq* %0, %union.t4_wr* %1, %struct.ib_send_wr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.t4_sq*, align 8
  %7 = alloca %union.t4_wr*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fw_ri_immd*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.t4_sq* %0, %struct.t4_sq** %6, align 8
  store %union.t4_wr* %1, %union.t4_wr** %7, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %16 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32 @roundup(i32 %22, i32 32)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %25 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @T4_MAX_FR_DEPTH, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %208

34:                                               ; preds = %4
  %35 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %36 = bitcast %union.t4_wr* %35 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 8
  store i64 0, i64* %37, align 8
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %42, 12
  %44 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %45 = bitcast %union.t4_wr* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 7
  store i64 %43, i64* %46, align 8
  %47 = load i32, i32* @FW_RI_VA_BASED_TO, align 4
  %48 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %49 = bitcast %union.t4_wr* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 6
  store i32 %47, i32* %50, align 4
  %51 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %52 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @c4iw_ib_to_tpt_access(i32 %55)
  %57 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %58 = bitcast %union.t4_wr* %57 to %struct.TYPE_5__*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 8
  %60 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %61 = bitcast %union.t4_wr* %60 to %struct.TYPE_5__*
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %64 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_be32(i32 %67)
  %69 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %70 = bitcast %union.t4_wr* %69 to %struct.TYPE_5__*
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i8* %68, i8** %71, align 8
  %72 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %73 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @cpu_to_be32(i32 %76)
  %78 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %79 = bitcast %union.t4_wr* %78 to %struct.TYPE_5__*
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i8* %77, i8** %80, align 8
  %81 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %82 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 32
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %89 = bitcast %union.t4_wr* %88 to %struct.TYPE_5__*
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %92 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_be32(i32 %95)
  %97 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %98 = bitcast %union.t4_wr* %97 to %struct.TYPE_5__*
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i8* %96, i8** %99, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @T4_MAX_FR_IMMD, align 4
  %102 = icmp sgt i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @WARN_ON(i32 %103)
  %105 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %106 = bitcast %union.t4_wr* %105 to %struct.TYPE_5__*
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 1
  %108 = bitcast %struct.TYPE_5__* %107 to %struct.fw_ri_immd*
  store %struct.fw_ri_immd* %108, %struct.fw_ri_immd** %10, align 8
  %109 = load i32, i32* @FW_RI_DATA_IMMD, align 4
  %110 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %10, align 8
  %111 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %10, align 8
  %113 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %10, align 8
  %115 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i8* @cpu_to_be32(i32 %116)
  %118 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %10, align 8
  %119 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %10, align 8
  %121 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %120, i64 1
  %122 = bitcast %struct.fw_ri_immd* %121 to i64*
  store i64* %122, i64** %11, align 8
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %167, %34
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %127 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %125, %130
  br i1 %131, label %132, label %170

132:                                              ; preds = %124
  %133 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %134 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @cpu_to_be64(i32 %143)
  %145 = load i64*, i64** %11, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = sub i64 %147, 8
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %14, align 4
  %150 = load i64*, i64** %11, align 8
  %151 = getelementptr inbounds i64, i64* %150, i32 1
  store i64* %151, i64** %11, align 8
  %152 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %153 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %156 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = bitcast i32* %158 to i64*
  %160 = icmp eq i64* %151, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %132
  %162 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %163 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = bitcast i32* %164 to i64*
  store i64* %165, i64** %11, align 8
  br label %166

166:                                              ; preds = %161, %132
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %12, align 4
  br label %124

170:                                              ; preds = %124
  %171 = load i32, i32* %14, align 4
  %172 = icmp slt i32 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @BUG_ON(i32 %173)
  br label %175

175:                                              ; preds = %200, %170
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %201

178:                                              ; preds = %175
  %179 = load i64*, i64** %11, align 8
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* %14, align 4
  %181 = sext i32 %180 to i64
  %182 = sub i64 %181, 8
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %14, align 4
  %184 = load i64*, i64** %11, align 8
  %185 = getelementptr inbounds i64, i64* %184, i32 1
  store i64* %185, i64** %11, align 8
  %186 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %187 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %190 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i32, i32* %188, i64 %191
  %193 = bitcast i32* %192 to i64*
  %194 = icmp eq i64* %185, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %178
  %196 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %197 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = bitcast i32* %198 to i64*
  store i64* %199, i64** %11, align 8
  br label %200

200:                                              ; preds = %195, %178
  br label %175

201:                                              ; preds = %175
  %202 = load i32, i32* %13, align 4
  %203 = sext i32 %202 to i64
  %204 = add i64 96, %203
  %205 = trunc i64 %204 to i32
  %206 = call i32 @DIV_ROUND_UP(i32 %205, i32 16)
  %207 = load i32*, i32** %9, align 8
  store i32 %206, i32* %207, align 4
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %201, %31
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @c4iw_ib_to_tpt_access(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
