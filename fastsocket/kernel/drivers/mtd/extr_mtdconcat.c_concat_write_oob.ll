; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_write_oob.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_write_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i64, {}* }
%struct.mtd_oob_ops = type { i64, i64, i64, i64, i64, i64 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)* @concat_write_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_write_oob(%struct.mtd_info* %0, i64 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca %struct.mtd_concat*, align 8
  %9 = alloca %struct.mtd_oob_ops, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %13 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %14 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %13)
  store %struct.mtd_concat* %14, %struct.mtd_concat** %8, align 8
  %15 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %16 = bitcast %struct.mtd_oob_ops* %9 to i8*
  %17 = bitcast %struct.mtd_oob_ops* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 48, i1 false)
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MTD_WRITEABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EROFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %142

27:                                               ; preds = %3
  %28 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %29 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %136, %27
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %33 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %139

36:                                               ; preds = %30
  %37 = load %struct.mtd_concat*, %struct.mtd_concat** %8, align 8
  %38 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %37, i32 0, i32 1
  %39 = load %struct.mtd_info**, %struct.mtd_info*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %39, i64 %41
  %43 = load %struct.mtd_info*, %struct.mtd_info** %42, align 8
  store %struct.mtd_info* %43, %struct.mtd_info** %12, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %136

55:                                               ; preds = %36
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %56, %58
  %60 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %61 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = sub nsw i64 %67, %68
  %70 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %55
  %72 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %73 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %72, i32 0, i32 2
  %74 = bitcast {}** %73 to i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)**
  %75 = load i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)*, i32 (%struct.mtd_info*, i64, %struct.mtd_oob_ops*)** %74, align 8
  %76 = load %struct.mtd_info*, %struct.mtd_info** %12, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 %75(%struct.mtd_info* %76, i64 %77, %struct.mtd_oob_ops* %9)
  store i32 %78, i32* %11, align 4
  %79 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %82 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %71
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %4, align 4
  br label %142

89:                                               ; preds = %71
  %90 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %95 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %98 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %142

106:                                              ; preds = %93
  %107 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %108
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %106, %89
  %113 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %118 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %121 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  store i64 %123, i64* %124, align 8
  %125 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %142

129:                                              ; preds = %116
  %130 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %9, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, %131
  store i64 %134, i64* %132, align 8
  br label %135

135:                                              ; preds = %129, %112
  store i64 0, i64* %6, align 8
  br label %136

136:                                              ; preds = %135, %49
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %30

139:                                              ; preds = %30
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %128, %105, %87, %24
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
