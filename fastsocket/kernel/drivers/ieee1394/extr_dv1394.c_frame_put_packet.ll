; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_frame_put_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_dv1394.c_frame_put_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i64 }
%struct.packet = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame*, %struct.packet*)* @frame_put_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_put_packet(%struct.frame* %0, %struct.packet* %1) #0 {
  %3 = alloca %struct.frame*, align 8
  %4 = alloca %struct.packet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.frame* %0, %struct.frame** %3, align 8
  store %struct.packet* %1, %struct.packet** %4, align 8
  %8 = load %struct.packet*, %struct.packet** %4, align 8
  %9 = getelementptr inbounds %struct.packet, %struct.packet* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 5
  store i32 %13, i32* %5, align 4
  %14 = load %struct.packet*, %struct.packet** %4, align 8
  %15 = getelementptr inbounds %struct.packet, %struct.packet* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.packet*, %struct.packet** %4, align 8
  %21 = getelementptr inbounds %struct.packet, %struct.packet* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 11
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 149
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %2
  br label %128

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %127 [
    i32 0, label %33
    i32 1, label %47
    i32 2, label %66
    i32 3, label %85
    i32 4, label %105
  ]

33:                                               ; preds = %31
  %34 = load %struct.frame*, %struct.frame** %3, align 8
  %35 = getelementptr inbounds %struct.frame, %struct.frame* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 150
  %40 = mul nsw i32 %39, 80
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %37, i64 %41
  %43 = load %struct.packet*, %struct.packet** %4, align 8
  %44 = getelementptr inbounds %struct.packet, %struct.packet* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @memcpy(i8* %42, i32* %45, i32 480)
  br label %128

47:                                               ; preds = %31
  %48 = load %struct.frame*, %struct.frame** %3, align 8
  %49 = getelementptr inbounds %struct.frame, %struct.frame* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %52, 150
  %54 = mul nsw i32 %53, 80
  %55 = sext i32 %54 to i64
  %56 = getelementptr i8, i8* %51, i64 %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 1, %57
  %59 = mul nsw i32 %58, 80
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %56, i64 %60
  %62 = load %struct.packet*, %struct.packet** %4, align 8
  %63 = getelementptr inbounds %struct.packet, %struct.packet* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @memcpy(i8* %61, i32* %64, i32 480)
  br label %128

66:                                               ; preds = %31
  %67 = load %struct.frame*, %struct.frame** %3, align 8
  %68 = getelementptr inbounds %struct.frame, %struct.frame* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %71, 150
  %73 = mul nsw i32 %72, 80
  %74 = sext i32 %73 to i64
  %75 = getelementptr i8, i8* %70, i64 %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 3, %76
  %78 = mul nsw i32 %77, 80
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %75, i64 %79
  %81 = load %struct.packet*, %struct.packet** %4, align 8
  %82 = getelementptr inbounds %struct.packet, %struct.packet* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @memcpy(i8* %80, i32* %83, i32 480)
  br label %128

85:                                               ; preds = %31
  %86 = load %struct.frame*, %struct.frame** %3, align 8
  %87 = getelementptr inbounds %struct.frame, %struct.frame* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 %90, 150
  %92 = mul nsw i32 %91, 80
  %93 = sext i32 %92 to i64
  %94 = getelementptr i8, i8* %89, i64 %93
  %95 = load i32, i32* %7, align 4
  %96 = mul nsw i32 %95, 16
  %97 = add nsw i32 6, %96
  %98 = mul nsw i32 %97, 80
  %99 = sext i32 %98 to i64
  %100 = getelementptr i8, i8* %94, i64 %99
  %101 = load %struct.packet*, %struct.packet** %4, align 8
  %102 = getelementptr inbounds %struct.packet, %struct.packet* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @memcpy(i8* %100, i32* %103, i32 480)
  br label %128

105:                                              ; preds = %31
  %106 = load %struct.frame*, %struct.frame** %3, align 8
  %107 = getelementptr inbounds %struct.frame, %struct.frame* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = load i32, i32* %6, align 4
  %111 = mul nsw i32 %110, 150
  %112 = mul nsw i32 %111, 80
  %113 = sext i32 %112 to i64
  %114 = getelementptr i8, i8* %109, i64 %113
  %115 = load i32, i32* %7, align 4
  %116 = sdiv i32 %115, 15
  %117 = add nsw i32 7, %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %117, %118
  %120 = mul nsw i32 %119, 80
  %121 = sext i32 %120 to i64
  %122 = getelementptr i8, i8* %114, i64 %121
  %123 = load %struct.packet*, %struct.packet** %4, align 8
  %124 = getelementptr inbounds %struct.packet, %struct.packet* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @memcpy(i8* %122, i32* %125, i32 480)
  br label %128

127:                                              ; preds = %31
  br label %128

128:                                              ; preds = %30, %127, %105, %85, %66, %47, %33
  ret void
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
