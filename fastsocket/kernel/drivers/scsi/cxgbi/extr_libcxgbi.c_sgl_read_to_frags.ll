; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_sgl_read_to_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_sgl_read_to_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i32, %struct.page* }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"sg %d NULL, len %u/%u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"too many pages %u, dlen %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, %struct.TYPE_3__*, i32)* @sgl_read_to_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgl_read_to_frags(%struct.scatterlist* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %12, align 4
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %24 = call %struct.page* @sg_page(%struct.scatterlist* %23)
  store %struct.page* %24, %struct.page** %14, align 8
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %142, %5
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %25
  %29 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %30 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %29)
  store %struct.scatterlist* %30, %struct.scatterlist** %7, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %32 = icmp ne %struct.scatterlist* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %147

40:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  %41 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %42 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  %44 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %45 = call %struct.page* @sg_page(%struct.scatterlist* %44)
  store %struct.page* %45, %struct.page** %14, align 8
  br label %46

46:                                               ; preds = %40, %25
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %46
  %53 = load %struct.page*, %struct.page** %14, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load %struct.page*, %struct.page** %59, align 8
  %61 = icmp eq %struct.page* %53, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %52
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %66 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sub nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %75, %83
  %85 = icmp eq i64 %68, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %62
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add i32 %94, %87
  store i32 %95, i32* %93, align 8
  br label %132

96:                                               ; preds = %62, %52, %46
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %147

106:                                              ; preds = %96
  %107 = load %struct.page*, %struct.page** %14, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store %struct.page* %107, %struct.page** %112, align 8
  %113 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %114 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  store i64 %118, i64* %123, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 8
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %106, %86
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sub i32 %134, %133
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %13, align 4
  %141 = sub i32 %140, %139
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %25, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %15, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %145, %100, %33
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
