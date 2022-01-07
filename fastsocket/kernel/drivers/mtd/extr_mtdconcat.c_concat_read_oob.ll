; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_read_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_read_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, {}*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mtd_oob_ops = type { i64, i64, i64, i64, i64, i64 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EBADMSG = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @concat_read_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_read_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.mtd_concat*, align 8
  %9 = alloca %struct.mtd_oob_ops, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %15 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %14)
  store %struct.mtd_concat* %15, %struct.mtd_concat** %8, align 8
  %16 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %17 = bitcast %struct.mtd_oob_ops* %9 to i8*
  %18 = bitcast %struct.mtd_oob_ops* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 48, i1 false)
  store i32 0, i32* %12, align 4
  %19 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %20 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %22 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %169, %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %26 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %172

29:                                               ; preds = %23
  %30 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %31 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %30, i32 0, i32 1
  %32 = load %struct.mtd_info**, %struct.mtd_info*** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %32, i64 %34
  %36 = load %struct.mtd_info*, %struct.mtd_info** %35, align 8
  store %struct.mtd_info* %36, %struct.mtd_info** %13, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %29
  %43 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub nsw i64 %46, %45
  store i64 %47, i64* %6, align 8
  br label %169

48:                                               ; preds = %29
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %49, %51
  %53 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %59 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub nsw i64 %60, %61
  %63 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  store i64 %62, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %48
  %65 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 1
  %67 = bitcast {}** %66 to i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)**
  %68 = load i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)** %67, align 8
  %69 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 %68(%struct.mtd_info* %69, i64 %70, %struct.mtd_oob_ops* %9)
  store i32 %71, i32* %11, align 4
  %72 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %75 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  %78 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %81 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %119

87:                                               ; preds = %64
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @EBADMSG, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %94 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %12, align 4
  br label %118

99:                                               ; preds = %87
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @EUCLEAN, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %99
  %105 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %106 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %112, %104
  br label %117

115:                                              ; preds = %99
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %4, align 4
  br label %175

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118, %64
  %120 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %143

123:                                              ; preds = %119
  %124 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %125 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %128 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %126, %129
  %131 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  store i64 %130, i64* %131, align 8
  %132 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %4, align 4
  br label %175

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %141, %139
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %137, %119
  %144 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %143
  %148 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %149 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %152 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = sub nsw i64 %150, %153
  %155 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  store i64 %154, i64* %155, align 8
  %156 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %147
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %4, align 4
  br label %175

161:                                              ; preds = %147
  %162 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %163 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %166 = load i64, i64* %165, align 8
  %167 = add nsw i64 %166, %164
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %161, %143
  store i64 0, i64* %6, align 8
  br label %169

169:                                              ; preds = %168, %42
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %23

172:                                              ; preds = %23
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %172, %159, %135, %115
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
