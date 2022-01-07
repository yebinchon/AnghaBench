; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_hw_queue_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_qmr.c_hw_queue_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_queue = type { i32, i32, i32, i32, %struct.ehea_page**, i64 }
%struct.ehea_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"pagesize conflict! kernel pagesize=%d, ehea pagesize=%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no mem for queue_pages\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw_queue*, i32, i32, i32)* @hw_queue_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_queue_ctor(%struct.hw_queue* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hw_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.hw_queue* %0, %struct.hw_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %136

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %34 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.ehea_page** @kmalloc(i32 %38, i32 %39)
  %41 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %42 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %41, i32 0, i32 4
  store %struct.ehea_page** %40, %struct.ehea_page*** %42, align 8
  %43 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %44 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %43, i32 0, i32 4
  %45 = load %struct.ehea_page**, %struct.ehea_page*** %44, align 8
  %46 = icmp ne %struct.ehea_page** %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %29
  %48 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %136

51:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %92, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %52
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i64 @get_zeroed_page(i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %13, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %104

63:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %89, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %69, %70
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ false, %64 ], [ %71, %68 ]
  br i1 %73, label %74, label %92

74:                                               ; preds = %72
  %75 = load i32*, i32** %13, align 8
  %76 = bitcast i32* %75 to %struct.ehea_page*
  %77 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %78 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %77, i32 0, i32 4
  %79 = load %struct.ehea_page**, %struct.ehea_page*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ehea_page*, %struct.ehea_page** %79, i64 %81
  store %struct.ehea_page* %76, %struct.ehea_page** %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %13, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %74
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %64

92:                                               ; preds = %72
  br label %52

93:                                               ; preds = %52
  %94 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %95 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %98 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %101 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %103 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  store i32 0, i32* %5, align 4
  br label %136

104:                                              ; preds = %62
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %129, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %105
  %110 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %111 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %110, i32 0, i32 4
  %112 = load %struct.ehea_page**, %struct.ehea_page*** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ehea_page*, %struct.ehea_page** %112, i64 %114
  %116 = load %struct.ehea_page*, %struct.ehea_page** %115, align 8
  %117 = icmp ne %struct.ehea_page* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  br label %133

119:                                              ; preds = %109
  %120 = load %struct.hw_queue*, %struct.hw_queue** %6, align 8
  %121 = getelementptr inbounds %struct.hw_queue, %struct.hw_queue* %120, i32 0, i32 4
  %122 = load %struct.ehea_page**, %struct.ehea_page*** %121, align 8
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ehea_page*, %struct.ehea_page** %122, i64 %124
  %126 = load %struct.ehea_page*, %struct.ehea_page** %125, align 8
  %127 = ptrtoint %struct.ehea_page* %126 to i64
  %128 = call i32 @free_page(i64 %127)
  br label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  br label %105

133:                                              ; preds = %118, %105
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %93, %47, %23
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @ehea_error(i8*, ...) #1

declare dso_local %struct.ehea_page** @kmalloc(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
