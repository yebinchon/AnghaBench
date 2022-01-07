; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ehca_mr = type { i64*, i32, i64, i32, i32, i32, i32 }
%struct.ehca_pd = type { i32 }
%struct.ehca_mr_pginfo = type { i32, i32, i32 }
%struct.ehca_mr_hipzout_parms = type { i32, i32, i32 }

@ehca_use_hp_mr = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"hipz_alloc_mr failed, h_ret=%lli hca_hndl=%llx\00", align 1
@EHCA_REG_BUSMAP_MR = common dso_local global i32 0, align 4
@EHCA_REG_MR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [124 x i8] c"h_ret=%lli shca=%p e_mr=%p iova_start=%p size=%llx acl=%x e_pd=%p lkey=%x pginfo=%p num_kpages=%llx num_hwpages=%llx ret=%i\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"internal error in ehca_reg_mr, not recoverable\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"ret=%i shca=%p e_mr=%p iova_start=%p size=%llx acl=%x e_pd=%p pginfo=%p num_kpages=%llx num_hwpages=%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_reg_mr(%struct.ehca_shca* %0, %struct.ehca_mr* %1, i64* %2, i64 %3, i32 %4, %struct.ehca_pd* %5, %struct.ehca_mr_pginfo* %6, i32* %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ehca_shca*, align 8
  %13 = alloca %struct.ehca_mr*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ehca_pd*, align 8
  %18 = alloca %struct.ehca_mr_pginfo*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.ehca_mr_hipzout_parms, align 4
  store %struct.ehca_shca* %0, %struct.ehca_shca** %12, align 8
  store %struct.ehca_mr* %1, %struct.ehca_mr** %13, align 8
  store i64* %2, i64** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store %struct.ehca_pd* %5, %struct.ehca_pd** %17, align 8
  store %struct.ehca_mr_pginfo* %6, %struct.ehca_mr_pginfo** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @ehca_mrmw_map_acl(i32 %26, i32* %24)
  %28 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %29 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ehca_mrmw_set_pgsize_hipz_acl(i32 %30, i32* %24)
  %32 = load i32, i32* @ehca_use_hp_mr, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %10
  %35 = load i32, i32* %24, align 4
  %36 = or i32 %35, 1
  store i32 %36, i32* %24, align 4
  br label %37

37:                                               ; preds = %34, %10
  %38 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %39 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %38, i32 0, i32 1
  %40 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %41 = load i64*, i64** %14, align 8
  %42 = ptrtoint i64* %41 to i64
  %43 = load i64, i64* %15, align 8
  %44 = load i32, i32* %24, align 4
  %45 = load %struct.ehca_pd*, %struct.ehca_pd** %17, align 8
  %46 = getelementptr inbounds %struct.ehca_pd, %struct.ehca_pd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @hipz_h_alloc_resource_mr(i32 %49, %struct.ehca_mr* %40, i64 %42, i64 %43, i32 %44, i32 %47, %struct.ehca_mr_hipzout_parms* %25)
  store i64 %50, i64* %23, align 8
  %51 = load i64, i64* %23, align 8
  %52 = load i64, i64* @H_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %37
  %55 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %56 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %55, i32 0, i32 0
  %57 = load i64, i64* %23, align 8
  %58 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %59 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32*, i8*, ...) @ehca_err(i32* %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %57, i32 %61)
  %63 = load i64, i64* %23, align 8
  %64 = call i32 @ehca2ib_return_code(i64 %63)
  store i32 %64, i32* %22, align 4
  br label %161

65:                                               ; preds = %37
  %66 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %25, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %69 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* @EHCA_REG_BUSMAP_MR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %75 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %76 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %77 = call i32 @ehca_reg_bmap_mr_rpages(%struct.ehca_shca* %74, %struct.ehca_mr* %75, %struct.ehca_mr_pginfo* %76)
  store i32 %77, i32* %22, align 4
  br label %91

78:                                               ; preds = %65
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* @EHCA_REG_MR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %84 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %85 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %86 = call i32 @ehca_reg_mr_rpages(%struct.ehca_shca* %83, %struct.ehca_mr* %84, %struct.ehca_mr_pginfo* %85)
  store i32 %86, i32* %22, align 4
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %22, align 4
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %73
  %92 = load i32, i32* %22, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %126

95:                                               ; preds = %91
  %96 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %97 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %100 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %99, i32 0, i32 5
  store i32 %98, i32* %100, align 8
  %101 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %102 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %105 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %107 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %110 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load i64*, i64** %14, align 8
  %112 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %113 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %112, i32 0, i32 0
  store i64* %111, i64** %113, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %116 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %119 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  %120 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %25, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32*, i32** %19, align 8
  store i32 %121, i32* %122, align 4
  %123 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %25, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %20, align 8
  store i32 %124, i32* %125, align 4
  store i32 0, i32* %11, align 4
  br label %184

126:                                              ; preds = %94
  %127 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %128 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %127, i32 0, i32 1
  %129 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @hipz_h_free_resource_mr(i32 %131, %struct.ehca_mr* %129)
  store i64 %132, i64* %23, align 8
  %133 = load i64, i64* %23, align 8
  %134 = load i64, i64* @H_SUCCESS, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %160

136:                                              ; preds = %126
  %137 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %138 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %137, i32 0, i32 0
  %139 = load i64, i64* %23, align 8
  %140 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %141 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %142 = load i64*, i64** %14, align 8
  %143 = load i64, i64* %15, align 8
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.ehca_pd*, %struct.ehca_pd** %17, align 8
  %146 = getelementptr inbounds %struct.ehca_mr_hipzout_parms, %struct.ehca_mr_hipzout_parms* %25, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %149 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %150 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %153 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %22, align 4
  %156 = call i32 (i32*, i8*, ...) @ehca_err(i32* %138, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.1, i64 0, i64 0), i64 %139, %struct.ehca_shca* %140, %struct.ehca_mr* %141, i64* %142, i64 %143, i32 %144, %struct.ehca_pd* %145, i32 %147, %struct.ehca_mr_pginfo* %148, i32 %151, i32 %154, i32 %155)
  %157 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %158 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %157, i32 0, i32 0
  %159 = call i32 (i32*, i8*, ...) @ehca_err(i32* %158, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %160

160:                                              ; preds = %136, %126
  br label %161

161:                                              ; preds = %160, %54
  %162 = load i32, i32* %22, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %166 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %165, i32 0, i32 0
  %167 = load i32, i32* %22, align 4
  %168 = load %struct.ehca_shca*, %struct.ehca_shca** %12, align 8
  %169 = load %struct.ehca_mr*, %struct.ehca_mr** %13, align 8
  %170 = load i64*, i64** %14, align 8
  %171 = load i64, i64* %15, align 8
  %172 = load i32, i32* %16, align 4
  %173 = load %struct.ehca_pd*, %struct.ehca_pd** %17, align 8
  %174 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %175 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %176 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %18, align 8
  %179 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32*, i8*, ...) @ehca_err(i32* %166, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 %167, %struct.ehca_shca* %168, %struct.ehca_mr* %169, i64* %170, i64 %171, i32 %172, %struct.ehca_pd* %173, %struct.ehca_mr_pginfo* %174, i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %164, %161
  %183 = load i32, i32* %22, align 4
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %182, %95
  %185 = load i32, i32* %11, align 4
  ret i32 %185
}

declare dso_local i32 @ehca_mrmw_map_acl(i32, i32*) #1

declare dso_local i32 @ehca_mrmw_set_pgsize_hipz_acl(i32, i32*) #1

declare dso_local i64 @hipz_h_alloc_resource_mr(i32, %struct.ehca_mr*, i64, i64, i32, i32, %struct.ehca_mr_hipzout_parms*) #1

declare dso_local i32 @ehca_err(i32*, i8*, ...) #1

declare dso_local i32 @ehca2ib_return_code(i64) #1

declare dso_local i32 @ehca_reg_bmap_mr_rpages(%struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*) #1

declare dso_local i32 @ehca_reg_mr_rpages(%struct.ehca_shca*, %struct.ehca_mr*, %struct.ehca_mr_pginfo*) #1

declare dso_local i64 @hipz_h_free_resource_mr(i32, %struct.ehca_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
