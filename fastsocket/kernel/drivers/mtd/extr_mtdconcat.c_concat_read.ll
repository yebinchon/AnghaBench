; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, {}*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mtd_concat = type { i32, %struct.mtd_info** }

@EBADMSG = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @concat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mtd_concat*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mtd_info*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %20 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %19)
  store %struct.mtd_concat* %20, %struct.mtd_concat** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i64*, i64** %10, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %124, %5
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.mtd_concat*, %struct.mtd_concat** %12, align 8
  %25 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %127

28:                                               ; preds = %22
  %29 = load %struct.mtd_concat*, %struct.mtd_concat** %12, align 8
  %30 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %29, i32 0, i32 1
  %31 = load %struct.mtd_info**, %struct.mtd_info*** %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %31, i64 %33
  %35 = load %struct.mtd_info*, %struct.mtd_info** %34, align 8
  store %struct.mtd_info* %35, %struct.mtd_info** %16, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  store i64 0, i64* %17, align 8
  %42 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub nsw i64 %45, %44
  store i64 %46, i64* %8, align 8
  br label %124

47:                                               ; preds = %28
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %48, %49
  %51 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* %17, align 8
  br label %63

61:                                               ; preds = %47
  %62 = load i64, i64* %9, align 8
  store i64 %62, i64* %17, align 8
  br label %63

63:                                               ; preds = %61, %55
  %64 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %65 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %64, i32 0, i32 1
  %66 = bitcast {}** %65 to i32 (%struct.mtd_info*, i64, i64, i64*, i32*)**
  %67 = load i32 (%struct.mtd_info*, i64, i64, i64*, i32*)*, i32 (%struct.mtd_info*, i64, i64, i64*, i32*)** %66, align 8
  %68 = load %struct.mtd_info*, %struct.mtd_info** %16, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %17, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 %67(%struct.mtd_info* %68, i64 %69, i64 %70, i64* %18, i32* %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %63
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @EBADMSG, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %13, align 4
  br label %107

88:                                               ; preds = %76
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @EUCLEAN, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %95 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %101, %93
  br label %106

104:                                              ; preds = %88
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %6, align 4
  br label %130

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106, %81
  br label %108

108:                                              ; preds = %107, %63
  %109 = load i64, i64* %18, align 8
  %110 = load i64*, i64** %10, align 8
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %109
  store i64 %112, i64* %110, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %9, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %6, align 4
  br label %130

120:                                              ; preds = %108
  %121 = load i64, i64* %17, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 %121
  store i32* %123, i32** %11, align 8
  store i64 0, i64* %8, align 8
  br label %124

124:                                              ; preds = %120, %41
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %15, align 4
  br label %22

127:                                              ; preds = %22
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %127, %118, %104
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
