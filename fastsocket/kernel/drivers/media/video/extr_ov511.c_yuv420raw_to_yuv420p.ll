; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_yuv420raw_to_yuv420p.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_yuv420raw_to_yuv420p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov511_frame = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ov511_frame*, i8*, i8*)* @yuv420raw_to_yuv420p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yuv420raw_to_yuv420p(%struct.ov511_frame* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ov511_frame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ov511_frame* %0, %struct.ov511_frame** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %16 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %19 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul i32 %17, %20
  store i32 %21, i32* %13, align 4
  %22 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %23 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = udiv i32 %24, 2
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %13, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** %12, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %74, %3
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %34 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %35, 1
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %31
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %65, %38
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %43 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %44, 1
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = load i8*, i8** %10, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @make_8x8(i8* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 64
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = udiv i32 %55, 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @make_8x8(i8* %53, i8* %58, i32 %59)
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 384
  store i8* %62, i8** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 8
  store i8* %64, i8** %11, align 8
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 16
  store i32 %67, i32* %8, align 4
  br label %40

68:                                               ; preds = %40
  %69 = load i32, i32* %14, align 4
  %70 = mul i32 8, %69
  %71 = load i8*, i8** %12, align 8
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %12, align 8
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 16
  store i32 %76, i32* %9, align 4
  br label %31

77:                                               ; preds = %31
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 128
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %12, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %126, %77
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %84 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub i32 %85, 1
  %87 = icmp ult i32 %82, %86
  br i1 %87, label %88, label %129

88:                                               ; preds = %81
  %89 = load i8*, i8** %12, align 8
  store i8* %89, i8** %11, align 8
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %115, %88
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %93 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub i32 %94, 1
  %96 = icmp ult i32 %91, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %90
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %101 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @make_8x8(i8* %98, i8* %99, i32 %102)
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 64
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 8
  store i8* %107, i8** %11, align 8
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  %110 = icmp sgt i32 %109, 3
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  store i32 0, i32* %7, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 128
  store i8* %113, i8** %10, align 8
  br label %114

114:                                              ; preds = %111, %97
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 8
  store i32 %117, i32* %8, align 4
  br label %90

118:                                              ; preds = %90
  %119 = load %struct.ov511_frame*, %struct.ov511_frame** %4, align 8
  %120 = getelementptr inbounds %struct.ov511_frame, %struct.ov511_frame* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = mul i32 8, %121
  %123 = load i8*, i8** %12, align 8
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  store i8* %125, i8** %12, align 8
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 8
  store i32 %128, i32* %9, align 4
  br label %81

129:                                              ; preds = %81
  ret void
}

declare dso_local i32 @make_8x8(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
