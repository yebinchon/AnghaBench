; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_stabilize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_imon.c_stabilize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@stabilize.prev_time = internal global %struct.timeval zeroinitializer, align 4
@stabilize.hit_time = internal global %struct.timeval zeroinitializer, align 4
@stabilize.x = internal global i32 0, align 4
@stabilize.y = internal global i32 0, align 4
@stabilize.prev_result = internal global i32 0, align 4
@stabilize.hits = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64)* @stabilize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stabilize(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.timeval, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %13 = call i32 @do_gettimeofday(%struct.timeval* %9)
  %14 = call i32 @tv2int(%struct.timeval* %9, %struct.timeval* @stabilize.prev_time)
  store i32 %14, i32* %11, align 4
  %15 = call i32 @tv2int(%struct.timeval* %9, %struct.timeval* @stabilize.hit_time)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp sgt i32 %16, 100
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* @stabilize.x, align 4
  store i32 0, i32* @stabilize.y, align 4
  store i32 0, i32* @stabilize.hits, align 4
  br label %19

19:                                               ; preds = %18, %4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @stabilize.x, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* @stabilize.x, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @stabilize.y, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* @stabilize.y, align 4
  %26 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timeval* @stabilize.prev_time to i8*), i8* align 4 %26, i64 8, i1 false)
  %27 = load i32, i32* @stabilize.x, align 4
  %28 = call i64 @abs(i32 %27)
  %29 = load i64, i64* %8, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* @stabilize.y, align 4
  %33 = call i64 @abs(i32 %32)
  %34 = load i64, i64* %8, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %31, %19
  %37 = load i32, i32* @stabilize.y, align 4
  %38 = call i64 @abs(i32 %37)
  %39 = load i32, i32* @stabilize.x, align 4
  %40 = call i64 @abs(i32 %39)
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @stabilize.y, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 127, i32 128
  store i32 %46, i32* %10, align 4
  br label %52

47:                                               ; preds = %36
  %48 = load i32, i32* @stabilize.x, align 4
  %49 = icmp sgt i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 32512, i32 32768
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %47, %42
  store i32 0, i32* @stabilize.x, align 4
  store i32 0, i32* @stabilize.y, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @stabilize.prev_result, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %100

56:                                               ; preds = %52
  %57 = load i32, i32* @stabilize.hits, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @stabilize.hits, align 4
  %59 = load i32, i32* @stabilize.hits, align 4
  %60 = icmp sgt i32 %59, 3
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %89 [
    i32 127, label %63
    i32 128, label %68
    i32 32512, label %76
    i32 32768, label %81
  ]

63:                                               ; preds = %61
  %64 = load i64, i64* %8, align 8
  %65 = mul nsw i64 17, %64
  %66 = sdiv i64 %65, 30
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* @stabilize.y, align 4
  br label %89

68:                                               ; preds = %61
  %69 = load i64, i64* %8, align 8
  %70 = mul nsw i64 17, %69
  %71 = sdiv i64 %70, 30
  %72 = load i32, i32* @stabilize.y, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* @stabilize.y, align 4
  br label %89

76:                                               ; preds = %61
  %77 = load i64, i64* %8, align 8
  %78 = mul nsw i64 17, %77
  %79 = sdiv i64 %78, 30
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* @stabilize.x, align 4
  br label %89

81:                                               ; preds = %61
  %82 = load i64, i64* %8, align 8
  %83 = mul nsw i64 17, %82
  %84 = sdiv i64 %83, 30
  %85 = load i32, i32* @stabilize.x, align 4
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @stabilize.x, align 4
  br label %89

89:                                               ; preds = %61, %81, %76, %68, %63
  br label %90

90:                                               ; preds = %89, %56
  %91 = load i32, i32* @stabilize.hits, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %7, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 0, i32* %10, align 4
  store i32 1, i32* @stabilize.hits, align 4
  br label %99

99:                                               ; preds = %98, %93, %90
  br label %103

100:                                              ; preds = %52
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* @stabilize.prev_result, align 4
  store i32 1, i32* @stabilize.hits, align 4
  %102 = bitcast %struct.timeval* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timeval* @stabilize.hit_time to i8*), i8* align 4 %102, i64 8, i1 false)
  br label %103

103:                                              ; preds = %100, %99
  br label %104

104:                                              ; preds = %103, %31
  %105 = load i32, i32* %10, align 4
  ret i32 %105
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @tv2int(%struct.timeval*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
