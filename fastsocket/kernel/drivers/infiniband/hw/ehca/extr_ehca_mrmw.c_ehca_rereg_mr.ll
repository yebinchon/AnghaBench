; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_rereg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_rereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ehca_mr = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ehca_pd = type { i32 }
%struct.ehca_mr_pginfo = type { i64, i32 }

@MAX_RPAGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Rereg3 case, pginfo->num_hwpages=%llx e_mr->num_hwpages=%x\00", align 1
@EHCA_MR_FLAG_MAXMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Rereg MR for max-MR! e_mr=%p\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [79 x i8] c"hipz_free_mr failed, h_ret=%lli e_mr=%p hca_hndl=%llx mr_hndl=%llx mr->lkey=%x\00", align 1
@EHCA_REG_MR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [138 x i8] c"ret=%i shca=%p e_mr=%p iova_start=%p size=%llx acl=%x e_pd=%p pginfo=%p num_kpages=%llx lkey=%x rkey=%x rereg_1_hcall=%x rereg_3_hcall=%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_rereg_mr(%struct.ehca_shca* %0, %struct.ehca_mr* %1, i64* %2, i64 %3, i32 %4, %struct.ehca_pd* %5, %struct.ehca_mr_pginfo* %6, i64* %7, i64* %8) #0 {
  %10 = alloca %struct.ehca_shca*, align 8
  %11 = alloca %struct.ehca_mr*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ehca_pd*, align 8
  %16 = alloca %struct.ehca_mr_pginfo*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.ehca_mr, align 8
  %24 = alloca i64, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %10, align 8
  store %struct.ehca_mr* %1, %struct.ehca_mr** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.ehca_pd* %5, %struct.ehca_pd** %15, align 8
  store %struct.ehca_mr_pginfo* %6, %struct.ehca_mr_pginfo** %16, align 8
  store i64* %7, i64** %17, align 8
  store i64* %8, i64** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %25 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %16, align 8
  %26 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAX_RPAGES, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %9
  %31 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %32 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAX_RPAGES, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %16, align 8
  %38 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %41 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36, %30, %9
  %45 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %46 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %45, i32 0, i32 0
  %47 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %16, align 8
  %48 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %51 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @ehca_dbg(i32* %46, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %52)
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %54

54:                                               ; preds = %44, %36
  %55 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %56 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EHCA_MR_FLAG_MAXMR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %62 = load i32, i32* @EHCA_MR_FLAG_MAXMR, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %65 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %69 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %68, i32 0, i32 0
  %70 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %71 = call i32 (i32*, i8*, ...) @ehca_err(i32* %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.ehca_mr* %70)
  br label %72

72:                                               ; preds = %61, %54
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %72
  %76 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %77 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %78 = load i64*, i64** %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.ehca_pd*, %struct.ehca_pd** %15, align 8
  %82 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %16, align 8
  %83 = load i64*, i64** %17, align 8
  %84 = load i64*, i64** %18, align 8
  %85 = call i32 @ehca_rereg_mr_rereg1(%struct.ehca_shca* %76, %struct.ehca_mr* %77, i64* %78, i64 %79, i32 %80, %struct.ehca_pd* %81, %struct.ehca_mr_pginfo* %82, i64* %83, i64* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 1, i32* %22, align 4
  br label %95

94:                                               ; preds = %88
  br label %189

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %72
  %98 = load i32, i32* %22, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %188

100:                                              ; preds = %97
  %101 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %102 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %101, i32 0, i32 1
  %103 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @hipz_h_free_resource_mr(i32 %105, %struct.ehca_mr* %103)
  store i64 %106, i64* %20, align 8
  %107 = load i64, i64* %20, align 8
  %108 = load i64, i64* @H_SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %100
  %111 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %112 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %111, i32 0, i32 0
  %113 = load i64, i64* %20, align 8
  %114 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %115 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %116 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %120 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %119, i32 0, i32 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %124 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %123, i32 0, i32 7
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32*, i8*, ...) @ehca_err(i32* %112, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %113, %struct.ehca_mr* %114, i32 %118, i32 %122, i32 %127)
  %129 = load i64, i64* %20, align 8
  %130 = call i32 @ehca2ib_return_code(i64 %129)
  store i32 %130, i32* %19, align 4
  br label %189

131:                                              ; preds = %100
  %132 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %133 = bitcast %struct.ehca_mr* %23 to i8*
  %134 = bitcast %struct.ehca_mr* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 40, i1 false)
  %135 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %136 = call i32 @ehca_mr_deletenew(%struct.ehca_mr* %135)
  %137 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %23, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %140 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %23, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %144 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 4
  %145 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %23, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %148 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %23, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %152 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %23, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %156 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 8
  %157 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %23, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %160 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %162 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %163 = load i64*, i64** %12, align 8
  %164 = load i64, i64* %13, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.ehca_pd*, %struct.ehca_pd** %15, align 8
  %167 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %16, align 8
  %168 = load i64*, i64** %17, align 8
  %169 = load i64*, i64** %18, align 8
  %170 = load i32, i32* @EHCA_REG_MR, align 4
  %171 = call i32 @ehca_reg_mr(%struct.ehca_shca* %161, %struct.ehca_mr* %162, i64* %163, i64 %164, i32 %165, %struct.ehca_pd* %166, %struct.ehca_mr_pginfo* %167, i64* %168, i64* %169, i32 %170)
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %19, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %131
  %175 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %176 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %175, i32 0, i32 1
  %177 = ptrtoint i32* %176 to i64
  %178 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %179 = ptrtoint %struct.ehca_mr* %178 to i64
  %180 = sub nsw i64 %177, %179
  store i64 %180, i64* %24, align 8
  %181 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %182 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %23, i32 0, i32 1
  %184 = load i64, i64* %24, align 8
  %185 = sub i64 40, %184
  %186 = call i32 @memcpy(i32* %182, i32* %183, i64 %185)
  br label %189

187:                                              ; preds = %131
  br label %188

188:                                              ; preds = %187, %97
  br label %189

189:                                              ; preds = %188, %174, %110, %94
  %190 = load i32, i32* %19, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %189
  %193 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %194 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %193, i32 0, i32 0
  %195 = load i32, i32* %19, align 4
  %196 = load %struct.ehca_shca*, %struct.ehca_shca** %10, align 8
  %197 = load %struct.ehca_mr*, %struct.ehca_mr** %11, align 8
  %198 = load i64*, i64** %12, align 8
  %199 = load i64, i64* %13, align 8
  %200 = load i32, i32* %14, align 4
  %201 = load %struct.ehca_pd*, %struct.ehca_pd** %15, align 8
  %202 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %16, align 8
  %203 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %16, align 8
  %204 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i64*, i64** %17, align 8
  %207 = load i64, i64* %206, align 8
  %208 = load i64*, i64** %18, align 8
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %22, align 4
  %212 = call i32 (i32*, i8*, ...) @ehca_err(i32* %194, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.3, i64 0, i64 0), i32 %195, %struct.ehca_shca* %196, %struct.ehca_mr* %197, i64* %198, i64 %199, i32 %200, %struct.ehca_pd* %201, %struct.ehca_mr_pginfo* %202, i32 %205, i64 %207, i64 %209, i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %192, %189
  %214 = load i32, i32* %19, align 4
  ret i32 %214
}

declare dso_local i32 @ehca_dbg(i32*, i8*, i64, i64) #1

declare dso_local i32 @ehca_err(i32*, i8*, ...) #1

declare dso_local i32 @ehca_rereg_mr_rereg1(%struct.ehca_shca*, %struct.ehca_mr*, i64*, i64, i32, %struct.ehca_pd*, %struct.ehca_mr_pginfo*, i64*, i64*) #1

declare dso_local i64 @hipz_h_free_resource_mr(i32, %struct.ehca_mr*) #1

declare dso_local i32 @ehca2ib_return_code(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ehca_mr_deletenew(%struct.ehca_mr*) #1

declare dso_local i32 @ehca_reg_mr(%struct.ehca_shca*, %struct.ehca_mr*, i64*, i64, i32, %struct.ehca_pd*, %struct.ehca_mr_pginfo*, i64*, i64*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
