; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_image_buffer_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_set_image_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i8*, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@pwc_mbufs = common dso_local global i32 0, align 4
@BLACK_Y = common dso_local global i32 0, align 4
@BLACK_U = common dso_local global i32 0, align 4
@BLACK_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_device*)* @pwc_set_image_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwc_set_image_buffer_size(%struct.pwc_device* %0) #0 {
  %2 = alloca %struct.pwc_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %7 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %11 [
    i32 128, label %9
    i32 130, label %10
    i32 129, label %10
  ]

9:                                                ; preds = %1
  store i32 6, i32* %4, align 4
  br label %11

10:                                               ; preds = %1, %1
  store i32 6, i32* %4, align 4
  br label %11

11:                                               ; preds = %1, %10, %9
  %12 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %13 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %17 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %15, %19
  %21 = load i32, i32* %4, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sdiv i32 %22, 4
  %24 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %25 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %28 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %32 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %30, %34
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sdiv i32 %37, 4
  %39 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %40 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %43 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %47 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %45, %49
  %51 = sdiv i32 %50, 2
  %52 = and i32 %51, 65532
  %53 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %54 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %57 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %61 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %59, %63
  %65 = sdiv i32 %64, 2
  %66 = and i32 %65, 65534
  %67 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %68 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %151, %11
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @pwc_mbufs, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %154

74:                                               ; preds = %70
  %75 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %76 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %79 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %78, i32 0, i32 3
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %77, i64 %86
  store i8* %87, i8** %5, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* @BLACK_Y, align 4
  %90 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %91 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %95 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %93, %97
  %99 = call i32 @memset(i8* %88, i32 %89, i32 %98)
  %100 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %101 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %105 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = mul nsw i32 %103, %107
  %109 = load i8*, i8** %5, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %5, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* @BLACK_U, align 4
  %114 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %115 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %119 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %117, %121
  %123 = sdiv i32 %122, 4
  %124 = call i32 @memset(i8* %112, i32 %113, i32 %123)
  %125 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %126 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %130 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %128, %132
  %134 = sdiv i32 %133, 4
  %135 = load i8*, i8** %5, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  store i8* %137, i8** %5, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* @BLACK_V, align 4
  %140 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %141 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.pwc_device*, %struct.pwc_device** %2, align 8
  %145 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %143, %147
  %149 = sdiv i32 %148, 4
  %150 = call i32 @memset(i8* %138, i32 %139, i32 %149)
  br label %151

151:                                              ; preds = %74
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %3, align 4
  br label %70

154:                                              ; preds = %70
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
