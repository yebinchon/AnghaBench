; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_set_pagebuf_phys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_set_pagebuf_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr_pginfo = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ib_phys_buf* }
%struct.ib_phys_buf = type { i32, i64 }

@.str = private unnamed_addr constant [94 x i8] c"kpage_cnt >= num_kpages, kpage_cnt=%llx num_kpages=%llx hwpage_cnt=%llx num_hwpages=%llx i=%x\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"pbuf->addr=%llx pbuf->size=%llx next_hwpage=%llx\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_mr_pginfo*, i64, i32*)* @ehca_set_pagebuf_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_set_pagebuf_phys(%struct.ehca_mr_pginfo* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_mr_pginfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_phys_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ehca_mr_pginfo* %0, %struct.ehca_mr_pginfo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %212, %3
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %213

17:                                               ; preds = %13
  %18 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %19 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %21, align 8
  %23 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %24 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %22, i64 %28
  store %struct.ib_phys_buf* %29, %struct.ib_phys_buf** %9, align 8
  %30 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %9, align 8
  %31 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %34 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %9, align 8
  %39 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %43 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @NUM_CHUNKS(i64 %41, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %9, align 8
  %47 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %50 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  %53 = xor i32 %52, -1
  %54 = and i32 %48, %53
  %55 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %56 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %54, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %194, %17
  %60 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %61 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %63, %64
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %195

67:                                               ; preds = %59
  %68 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %69 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %72 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %70, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %77 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %80 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %75, %67
  %84 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %85 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %89 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %92 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %96 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 (i8*, i32, i64, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %87, i64 %90, i32 %94, i64 %97, i64 %98)
  %100 = load i32, i32* @EFAULT, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %215

102:                                              ; preds = %75
  %103 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %9, align 8
  %104 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %107 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = xor i32 %109, -1
  %111 = and i32 %105, %110
  %112 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %113 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %116 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = mul nsw i32 %114, %117
  %119 = add nsw i32 %111, %118
  %120 = call i32 @phys_to_abs(i32 %119)
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %102
  %126 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %9, align 8
  %127 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %125
  %131 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %9, align 8
  %132 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.ib_phys_buf*, %struct.ib_phys_buf** %9, align 8
  %135 = getelementptr inbounds %struct.ib_phys_buf, %struct.ib_phys_buf* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %138 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, i32, i64, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %133, i64 %136, i32 %139)
  %141 = load i32, i32* @EFAULT, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %215

143:                                              ; preds = %125, %102
  %144 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %145 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %149 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %154 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %152, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %143
  %158 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %159 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %163 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sdiv i32 %161, %164
  %166 = srem i32 %160, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %157
  %169 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %170 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %168, %157
  br label %185

174:                                              ; preds = %143
  %175 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %176 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @PAGE_SIZE, align 4
  %179 = sdiv i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %182 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, %180
  store i64 %184, i64* %182, align 8
  br label %185

185:                                              ; preds = %174, %173
  %186 = load i32*, i32** %7, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %7, align 8
  %188 = load i64, i64* %12, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %12, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* %6, align 8
  %192 = icmp sge i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  br label %195

194:                                              ; preds = %185
  br label %59

195:                                              ; preds = %193, %59
  %196 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %197 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %199, %200
  %202 = icmp sge i32 %198, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %195
  %204 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %205 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  %210 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %211 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %210, i32 0, i32 1
  store i32 0, i32* %211, align 4
  br label %212

212:                                              ; preds = %203, %195
  br label %13

213:                                              ; preds = %13
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %213, %130, %83
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @NUM_CHUNKS(i64, i32) #1

declare dso_local i32 @ehca_gen_err(i8*, i32, i64, i32, ...) #1

declare dso_local i32 @phys_to_abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
