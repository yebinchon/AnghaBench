; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_set_pagebuf_fmr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ehca/extr_ehca_mrmw.c_ehca_set_pagebuf_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehca_mr_pginfo = type { i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"*fmrlist=%llx fmrlist=%p next_listelem=%llx next_hwpage=%llx\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"uncontiguous fmr pages found prev=%llx p=%llx idx=%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehca_mr_pginfo*, i64, i32*)* @ehca_set_pagebuf_fmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehca_set_pagebuf_fmr(%struct.ehca_mr_pginfo* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ehca_mr_pginfo*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ehca_mr_pginfo* %0, %struct.ehca_mr_pginfo** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %16 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %21 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %19, i64 %25
  store i32* %26, i32** %9, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %192, %3
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %195

31:                                               ; preds = %27
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %35 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = xor i32 %37, -1
  %39 = and i32 %33, %38
  %40 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %41 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %44 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %42, %45
  %47 = add nsw i32 %39, %46
  %48 = call i32 @phys_to_abs(i32 %47)
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %31
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %58 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %63 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %55, i32* %56, i32 %61, i32 %64)
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %197

68:                                               ; preds = %31
  %69 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %70 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %74 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %79 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %118

82:                                               ; preds = %68
  %83 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %84 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %87 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %92 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %90, %93
  %95 = srem i32 %85, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %82
  %98 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %99 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %103 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %9, align 8
  %110 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %111 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  br label %117

112:                                              ; preds = %82
  %113 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %114 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %97
  br label %189

118:                                              ; preds = %68
  %119 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %120 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %123 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = sdiv i32 %121, %126
  store i32 %127, i32* %11, align 4
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %130

130:                                              ; preds = %168, %118
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %171

134:                                              ; preds = %130
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %12, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %141 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, 1
  %144 = xor i32 %143, -1
  %145 = and i32 %139, %144
  %146 = call i32 @phys_to_abs(i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %149 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %147, %152
  %154 = load i32, i32* %14, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %134
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i64, i64* %10, align 8
  %160 = load i32, i32* %12, align 4
  %161 = zext i32 %160 to i64
  %162 = add nsw i64 %159, %161
  %163 = call i32 (i8*, i32, ...) @ehca_gen_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %157, i32 %158, i64 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %4, align 4
  br label %197

166:                                              ; preds = %134
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %166
  %169 = load i32, i32* %12, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %130

171:                                              ; preds = %130
  %172 = load i32, i32* %11, align 4
  %173 = zext i32 %172 to i64
  %174 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %175 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %173
  store i64 %177, i64* %175, align 8
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.ehca_mr_pginfo*, %struct.ehca_mr_pginfo** %5, align 8
  %180 = getelementptr inbounds %struct.ehca_mr_pginfo, %struct.ehca_mr_pginfo* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = add i32 %183, %178
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* %11, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32* %188, i32** %9, align 8
  br label %189

189:                                              ; preds = %171, %117
  %190 = load i32*, i32** %7, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %7, align 8
  br label %192

192:                                              ; preds = %189
  %193 = load i64, i64* %10, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %10, align 8
  br label %27

195:                                              ; preds = %27
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %195, %156, %53
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @phys_to_abs(i32) #1

declare dso_local i32 @ehca_gen_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
