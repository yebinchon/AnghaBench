; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_cx18_set_filter_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-mailbox.c_cx18_set_filter_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i32, %struct.cx18* }
%struct.cx18 = type { i32, i64, i64 }

@CX18_CPU_SET_FILTER_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18_stream*)* @cx18_set_filter_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_set_filter_param(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %6 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %7 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %6, i32 0, i32 1
  %8 = load %struct.cx18*, %struct.cx18** %7, align 8
  store %struct.cx18* %8, %struct.cx18** %3, align 8
  %9 = load %struct.cx18*, %struct.cx18** %3, align 8
  %10 = getelementptr inbounds %struct.cx18, %struct.cx18* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %22

15:                                               ; preds = %1
  %16 = load %struct.cx18*, %struct.cx18** %3, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  br label %22

22:                                               ; preds = %15, %14
  %23 = phi i32 [ 2, %14 ], [ %21, %15 ]
  store i32 %23, i32* %4, align 4
  %24 = load %struct.cx18*, %struct.cx18** %3, align 8
  %25 = load i32, i32* @CX18_CPU_SET_FILTER_PARAM, align 4
  %26 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %27 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.cx18*, %struct.cx18** %3, align 8
  %31 = getelementptr inbounds %struct.cx18, %struct.cx18* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @cx18_vapi(%struct.cx18* %24, i32 %25, i32 4, i32 %28, i32 1, i32 %29, i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.cx18*, %struct.cx18** %3, align 8
  %35 = getelementptr inbounds %struct.cx18, %struct.cx18* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %47

40:                                               ; preds = %22
  %41 = load %struct.cx18*, %struct.cx18** %3, align 8
  %42 = getelementptr inbounds %struct.cx18, %struct.cx18* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  br label %47

47:                                               ; preds = %40, %39
  %48 = phi i32 [ 2, %39 ], [ %46, %40 ]
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %5, align 4
  br label %64

53:                                               ; preds = %47
  %54 = load %struct.cx18*, %struct.cx18** %3, align 8
  %55 = load i32, i32* @CX18_CPU_SET_FILTER_PARAM, align 4
  %56 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %57 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.cx18*, %struct.cx18** %3, align 8
  %61 = getelementptr inbounds %struct.cx18, %struct.cx18* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @cx18_vapi(%struct.cx18* %54, i32 %55, i32 4, i32 %58, i32 0, i32 %59, i64 %62)
  br label %64

64:                                               ; preds = %53, %51
  %65 = phi i32 [ %52, %51 ], [ %63, %53 ]
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  br label %81

70:                                               ; preds = %64
  %71 = load %struct.cx18*, %struct.cx18** %3, align 8
  %72 = load i32, i32* @CX18_CPU_SET_FILTER_PARAM, align 4
  %73 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %74 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.cx18*, %struct.cx18** %3, align 8
  %77 = getelementptr inbounds %struct.cx18, %struct.cx18* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 2
  %80 = call i32 @cx18_vapi(%struct.cx18* %71, i32 %72, i32 4, i32 %75, i32 2, i32 %79, i64 0)
  br label %81

81:                                               ; preds = %70, %68
  %82 = phi i32 [ %69, %68 ], [ %80, %70 ]
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @cx18_vapi(%struct.cx18*, i32, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
