; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_pwc_dec23_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-dec23.c_pwc_dec23_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@PWCX_FLAG_BAYER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwc_dec23_decompress(%struct.pwc_device* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %17 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %22 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PWCX_FLAG_BAYER, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %33 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %37 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %35, %39
  %41 = call i32 @memset(i8* %31, i32 0, i32 %40)
  br label %151

42:                                               ; preds = %4
  %43 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %44 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %48 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %46, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %53 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %57 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %55, %59
  store i32 %60, i32* %10, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr i8, i8* %61, i64 %63
  %65 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %66 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %64, i64 %69
  store i8* %70, i8** %12, align 8
  %71 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %72 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %76 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %74, %78
  %80 = sdiv i32 %79, 4
  %81 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %82 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 2
  %86 = add nsw i32 %80, %85
  store i32 %86, i32* %10, align 4
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %15, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr i8, i8* %87, i64 %89
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %90, i64 %92
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %15, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr i8, i8* %94, i64 %96
  %98 = load i32, i32* %15, align 4
  %99 = udiv i32 %98, 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr i8, i8* %97, i64 %100
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr i8, i8* %101, i64 %103
  store i8* %104, i8** %14, align 8
  br label %105

105:                                              ; preds = %109, %42
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %9, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %150

109:                                              ; preds = %105
  %110 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %111 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %118 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %122 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @DecompressBand23(i32 %112, i8* %113, i8* %114, i8* %115, i8* %116, i32 %120, i32 %124)
  %126 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %127 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %6, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr i8, i8* %129, i64 %130
  store i8* %131, i8** %6, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i8*, i8** %12, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8* %135, i8** %12, align 8
  %136 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %137 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i8*, i8** %13, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8* %142, i8** %13, align 8
  %143 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %144 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %14, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %14, align 8
  br label %105

150:                                              ; preds = %105
  br label %151

151:                                              ; preds = %150, %30
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @DecompressBand23(i32, i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
