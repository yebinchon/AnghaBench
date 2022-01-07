; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr_rpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_reg_mr_rpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_shca = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ehca_mr = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ehca_mr_pginfo = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"kpage alloc failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_RPAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ehca_set_pagebuf bad rc, ret=%i rnum=%x kpage=%p\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"kpage=%p i=%x\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [90 x i8] c"last hipz_reg_rpage_mr failed, h_ret=%lli e_mr=%p i=%x hca_hndl=%llx mr_hndl=%llx lkey=%x\00", align 1
@H_PAGE_REGISTERED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [85 x i8] c"hipz_reg_rpage_mr failed, h_ret=%lli e_mr=%p i=%x lkey=%x hca_hndl=%llx mr_hndl=%llx\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"ret=%i shca=%p e_mr=%p pginfo=%p num_kpages=%llx num_hwpages=%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehca_reg_mr_rpages(%struct.ehca_shca* %0, %struct.ehca_mr* %1, %struct.ehca_mr_pginfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_shca*, align 8
  %6 = alloca %struct.ehca_mr*, align 8
  %7 = alloca %struct.ehca_mr_pginfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.ehca_shca* %0, %struct.ehca_shca** %5, align 8
  store %struct.ehca_mr* %1, %struct.ehca_mr** %6, align 8
  store %struct.ehca_mr_pginfo* %2, %struct.ehca_mr_pginfo** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %15 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %199

19:                                               ; preds = %3
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64* @ehca_alloc_fw_ctrlblock(i32 %20)
  store i64* %21, i64** %13, align 8
  %22 = load i64*, i64** %13, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %26 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @ehca_err(i32* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %180

30:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %173, %30
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %34 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAX_RPAGES, align 4
  %37 = call i32 @NUM_CHUNKS(i32 %35, i32 %36)
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %176

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %42 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAX_RPAGES, align 4
  %45 = call i32 @NUM_CHUNKS(i32 %43, i32 %44)
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %50 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MAX_RPAGES, align 4
  %53 = srem i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @MAX_RPAGES, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %48
  br label %61

59:                                               ; preds = %39
  %60 = load i32, i32* @MAX_RPAGES, align 4
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %59, %58
  %62 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i64*, i64** %13, align 8
  %65 = call i32 @ehca_set_pagebuf(%struct.ehca_mr_pginfo* %62, i32 %63, i64* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %70 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %69, i32 0, i32 0
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i64*, i64** %13, align 8
  %74 = call i32 (i32*, i8*, ...) @ehca_err(i32* %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i64* %73)
  br label %177

75:                                               ; preds = %61
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i64*, i64** %13, align 8
  %80 = call i64 @virt_to_abs(i64* %79)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %85 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %84, i32 0, i32 0
  %86 = load i64*, i64** %13, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 (i32*, i8*, ...) @ehca_err(i32* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64* %86, i32 %87)
  %89 = load i32, i32* @EFAULT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %177

91:                                               ; preds = %78
  br label %95

92:                                               ; preds = %75
  %93 = load i64*, i64** %13, align 8
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %92, %91
  %96 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %97 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %96, i32 0, i32 1
  %98 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %99 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %100 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ehca_encode_hwpage_size(i32 %101)
  %103 = load i64, i64* %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @hipz_h_register_rpage_mr(i32 %106, %struct.ehca_mr* %98, i32 %102, i32 0, i64 %103, i32 %104)
  store i64 %107, i64* %9, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %110 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MAX_RPAGES, align 4
  %113 = call i32 @NUM_CHUNKS(i32 %111, i32 %112)
  %114 = sub nsw i32 %113, 1
  %115 = icmp eq i32 %108, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %95
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @H_SUCCESS, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  %121 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %122 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %121, i32 0, i32 0
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %127 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %131 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %135 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i32*, i8*, ...) @ehca_err(i32* %122, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i64 %123, %struct.ehca_mr* %124, i32 %125, i32 %129, i32 %133, i32 %138)
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @ehca2ib_return_code(i64 %140)
  store i32 %141, i32* %8, align 4
  br label %176

142:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %142
  br label %172

144:                                              ; preds = %95
  %145 = load i64, i64* %9, align 8
  %146 = load i64, i64* @H_PAGE_REGISTERED, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %170

148:                                              ; preds = %144
  %149 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %150 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %149, i32 0, i32 0
  %151 = load i64, i64* %9, align 8
  %152 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %155 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %160 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %164 = getelementptr inbounds %struct.ehca_mr, %struct.ehca_mr* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32*, i8*, ...) @ehca_err(i32* %150, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0), i64 %151, %struct.ehca_mr* %152, i32 %153, i32 %158, i32 %162, i32 %166)
  %168 = load i64, i64* %9, align 8
  %169 = call i32 @ehca2ib_return_code(i64 %168)
  store i32 %169, i32* %8, align 4
  br label %176

170:                                              ; preds = %144
  store i32 0, i32* %8, align 4
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %143
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %31

176:                                              ; preds = %148, %120, %31
  br label %177

177:                                              ; preds = %176, %83, %68
  %178 = load i64*, i64** %13, align 8
  %179 = call i32 @ehca_free_fw_ctrlblock(i64* %178)
  br label %180

180:                                              ; preds = %177, %24
  %181 = load i32, i32* %8, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %197

183:                                              ; preds = %180
  %184 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %185 = getelementptr inbounds %struct.ehca_shca, %struct.ehca_shca* %184, i32 0, i32 0
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.ehca_shca*, %struct.ehca_shca** %5, align 8
  %188 = load %struct.ehca_mr*, %struct.ehca_mr** %6, align 8
  %189 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %190 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %191 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %7, align 8
  %194 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32*, i8*, ...) @ehca_err(i32* %185, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %186, %struct.ehca_shca* %187, %struct.ehca_mr* %188, %struct.ehca_mr_pginfo* %189, i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %183, %180
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %197, %18
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local i64* @ehca_alloc_fw_ctrlblock(i32) #1

declare dso_local i32 @ehca_err(i32*, i8*, ...) #1

declare dso_local i32 @NUM_CHUNKS(i32, i32) #1

declare dso_local i32 @ehca_set_pagebuf(%struct.ehca_mr_pginfo*, i32, i64*) #1

declare dso_local i64 @virt_to_abs(i64*) #1

declare dso_local i64 @hipz_h_register_rpage_mr(i32, %struct.ehca_mr*, i32, i32, i64, i32) #1

declare dso_local i32 @ehca_encode_hwpage_size(i32) #1

declare dso_local i32 @ehca2ib_return_code(i64) #1

declare dso_local i32 @ehca_free_fw_ctrlblock(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
