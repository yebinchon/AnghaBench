; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_add_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_add_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_vt220_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sclp_vt220_sccb = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sclp_vt220_request*, i8*, i32, i32)* @sclp_vt220_add_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_vt220_add_msg(%struct.sclp_vt220_request* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sclp_vt220_request*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sclp_vt220_sccb*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sclp_vt220_request* %0, %struct.sclp_vt220_request** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %6, align 8
  %17 = call i32 @sclp_vt220_space_left(%struct.sclp_vt220_request* %16)
  %18 = icmp sgt i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %6, align 8
  %21 = call i32 @sclp_vt220_space_left(%struct.sclp_vt220_request* %20)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %128

26:                                               ; preds = %22
  %27 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %6, align 8
  %28 = getelementptr inbounds %struct.sclp_vt220_request, %struct.sclp_vt220_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.sclp_vt220_sccb*
  store %struct.sclp_vt220_sccb* %31, %struct.sclp_vt220_sccb** %10, align 8
  %32 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %10, align 8
  %33 = ptrtoint %struct.sclp_vt220_sccb* %32 to i64
  %34 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %10, align 8
  %35 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %33, %37
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %109

42:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %91, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  %49 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %6, align 8
  %50 = call i32 @sclp_vt220_space_left(%struct.sclp_vt220_request* %49)
  %51 = icmp slt i32 %48, %50
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  br i1 %53, label %54, label %94

54:                                               ; preds = %52
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %12, align 1
  %60 = load i8, i8* %12, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 10
  br i1 %62, label %63, label %83

63:                                               ; preds = %54
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  %66 = load %struct.sclp_vt220_request*, %struct.sclp_vt220_request** %6, align 8
  %67 = call i32 @sclp_vt220_space_left(%struct.sclp_vt220_request* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load i8, i8* %12, align 1
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 %70, i8* %75, align 1
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %76, i64 %79
  store i8 13, i8* %80, align 1
  br label %82

81:                                               ; preds = %63
  br label %94

82:                                               ; preds = %69
  br label %90

83:                                               ; preds = %54
  %84 = load i8, i8* %12, align 1
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  store i8 %84, i8* %89, align 1
  br label %90

90:                                               ; preds = %83, %82
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %43

94:                                               ; preds = %81, %52
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %10, align 8
  %98 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %96
  store i64 %101, i64* %99, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %10, align 8
  %104 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %5, align 4
  br label %128

109:                                              ; preds = %26
  %110 = load i8*, i8** %11, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @memcpy(i8* %110, i8* %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %10, align 8
  %117 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, %115
  store i64 %120, i64* %118, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.sclp_vt220_sccb*, %struct.sclp_vt220_sccb** %10, align 8
  %123 = getelementptr inbounds %struct.sclp_vt220_sccb, %struct.sclp_vt220_sccb* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %121
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %109, %94, %25
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @sclp_vt220_space_left(%struct.sclp_vt220_request*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
