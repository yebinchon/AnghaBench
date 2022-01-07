; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_enlarge_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_enlarge_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_buffer = type { i32, i32, i32, i32, %struct.page**, i32, i64 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ST_MAX_ORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_buffer*, i32, i32)* @enlarge_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enlarge_buffer(%struct.st_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page*, align 8
  store %struct.st_buffer* %0, %struct.st_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sle i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %179

22:                                               ; preds = %3
  %23 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %24 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %30 = call i32 @normalize_buffer(%struct.st_buffer* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %37 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %179

43:                                               ; preds = %31
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load i32, i32* @__GFP_NOWARN, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @GFP_DMA, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %55 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @__GFP_ZERO, align 4
  %60 = load i32, i32* %14, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %64 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = load i32, i32* %12, align 4
  %73 = shl i32 %71, %72
  store i32 %73, i32* %11, align 4
  br label %100

74:                                               ; preds = %62
  %75 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %75, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %91, %74
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @ST_MAX_ORDER, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @PAGE_SIZE, align 4
  %83 = load i32, i32* %12, align 4
  %84 = shl i32 %82, %83
  %85 = mul nsw i32 %81, %84
  %86 = load i32, i32* %6, align 4
  %87 = icmp slt i32 %85, %86
  br label %88

88:                                               ; preds = %80, %76
  %89 = phi i1 [ false, %76 ], [ %87, %80 ]
  br i1 %89, label %90, label %96

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = mul nsw i32 %94, 2
  store i32 %95, i32* %11, align 4
  br label %76

96:                                               ; preds = %88
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %99 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %67
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load i32, i32* %12, align 4
  %104 = shl i32 %102, %103
  %105 = mul nsw i32 %101, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %100
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @ST_MAX_ORDER, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %179

113:                                              ; preds = %108
  %114 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %115 = call i32 @normalize_buffer(%struct.st_buffer* %114)
  %116 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @enlarge_buffer(%struct.st_buffer* %116, i32 %117, i32 %118)
  store i32 %119, i32* %4, align 4
  br label %179

120:                                              ; preds = %100
  %121 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %122 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %8, align 4
  %124 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %125 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %150, %120
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %10, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %132, %133
  br label %135

135:                                              ; preds = %131, %127
  %136 = phi i1 [ false, %127 ], [ %134, %131 ]
  br i1 %136, label %137, label %170

137:                                              ; preds = %135
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call %struct.page* @alloc_pages(i32 %138, i32 %139)
  store %struct.page* %140, %struct.page** %15, align 8
  %141 = load %struct.page*, %struct.page** %15, align 8
  %142 = icmp ne %struct.page* %141, null
  br i1 %142, label %150, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %146 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = call i32 @DEB(i32 %144)
  %148 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %149 = call i32 @normalize_buffer(%struct.st_buffer* %148)
  store i32 0, i32* %4, align 4
  br label %179

150:                                              ; preds = %137
  %151 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %152 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %160 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.page*, %struct.page** %15, align 8
  %162 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %163 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %162, i32 0, i32 4
  %164 = load %struct.page**, %struct.page*** %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.page*, %struct.page** %164, i64 %166
  store %struct.page* %161, %struct.page** %167, align 8
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %127

170:                                              ; preds = %135
  %171 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %172 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %171, i32 0, i32 4
  %173 = load %struct.page**, %struct.page*** %172, align 8
  %174 = getelementptr inbounds %struct.page*, %struct.page** %173, i64 0
  %175 = load %struct.page*, %struct.page** %174, align 8
  %176 = call i32 @page_address(%struct.page* %175)
  %177 = load %struct.st_buffer*, %struct.st_buffer** %5, align 8
  %178 = getelementptr inbounds %struct.st_buffer, %struct.st_buffer* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 8
  store i32 1, i32* %4, align 4
  br label %179

179:                                              ; preds = %170, %143, %113, %112, %42, %21
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @normalize_buffer(%struct.st_buffer*) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
