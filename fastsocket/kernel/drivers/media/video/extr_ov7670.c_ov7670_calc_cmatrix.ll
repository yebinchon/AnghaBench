; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_calc_cmatrix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_calc_cmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov7670_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@CMATRIX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov7670_info*, i32*)* @ov7670_calc_cmatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov7670_calc_cmatrix(%struct.ov7670_info* %0, i32* %1) #0 {
  %3 = alloca %struct.ov7670_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.ov7670_info* %0, %struct.ov7670_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @CMATRIX_LEN, align 4
  %11 = zext i32 %10 to i64
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %35, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CMATRIX_LEN, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %18 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %27 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = ashr i32 %29, 7
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %16
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %12

38:                                               ; preds = %12
  %39 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %40 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %147

43:                                               ; preds = %38
  %44 = load i32, i32* @CMATRIX_LEN, align 4
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %8, align 8
  %47 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %9, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @CMATRIX_LEN, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i32* %47, i32* %48, i32 %52)
  %54 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %55 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @ov7670_sine(i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.ov7670_info*, %struct.ov7670_info** %3, align 8
  %59 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ov7670_cosine(i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %69, %70
  %72 = add nsw i32 %66, %71
  %73 = sdiv i32 %72, 1000
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %80, %85
  %87 = sdiv i32 %86, 1000
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %87, i32* %89, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %94, %99
  %101 = sdiv i32 %100, 1000
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32*, i32** %4, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sub nsw i32 %108, %113
  %115 = sdiv i32 %114, 1000
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  store i32 %115, i32* %117, align 4
  %118 = load i32*, i32** %4, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %6, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sub nsw i32 %122, %127
  %129 = sdiv i32 %128, 1000
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 5
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %7, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sub nsw i32 %136, %141
  %143 = sdiv i32 %142, 1000
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 5
  store i32 %143, i32* %145, align 4
  %146 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %146)
  br label %147

147:                                              ; preds = %43, %38
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ov7670_sine(i64) #2

declare dso_local i32 @ov7670_cosine(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
