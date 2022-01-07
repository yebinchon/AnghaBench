; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_close_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_close_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as_data = type { i32*, i64, i64, i64, i64, i32, i32 }
%struct.as_io_context = type { i64, i32 }
%struct.request = type { i32 }

@ANTIC_OFF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as_data*, %struct.as_io_context*, %struct.request*)* @as_close_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as_close_req(%struct.as_data* %0, %struct.as_io_context* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.as_data*, align 8
  %6 = alloca %struct.as_io_context*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.as_data* %0, %struct.as_data** %5, align 8
  store %struct.as_io_context* %1, %struct.as_io_context** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %13 = load %struct.as_data*, %struct.as_data** %5, align 8
  %14 = getelementptr inbounds %struct.as_data, %struct.as_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.as_data*, %struct.as_data** %5, align 8
  %17 = getelementptr inbounds %struct.as_data, %struct.as_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.request*, %struct.request** %7, align 8
  %22 = call i32 @blk_rq_pos(%struct.request* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.as_data*, %struct.as_data** %5, align 8
  %24 = getelementptr inbounds %struct.as_data, %struct.as_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ANTIC_OFF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.as_data*, %struct.as_data** %5, align 8
  %30 = getelementptr inbounds %struct.as_data, %struct.as_data* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %3
  store i64 0, i64* %8, align 8
  br label %40

34:                                               ; preds = %28
  %35 = load i64, i64* @jiffies, align 8
  %36 = load %struct.as_data*, %struct.as_data** %5, align 8
  %37 = getelementptr inbounds %struct.as_data, %struct.as_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %34, %33
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 8192, i32* %11, align 4
  br label %63

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 20, %46
  %48 = sdiv i32 %47, 1000
  %49 = sext i32 %48 to i64
  %50 = icmp ule i64 %45, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.as_data*, %struct.as_data** %5, align 8
  %54 = getelementptr inbounds %struct.as_data, %struct.as_data* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ule i64 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i64, i64* %8, align 8
  %59 = trunc i64 %58 to i32
  %60 = shl i32 8192, %59
  store i32 %60, i32* %11, align 4
  br label %62

61:                                               ; preds = %51, %44
  store i32 1, i32* %4, align 4
  br label %111

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %66, 1
  %68 = add nsw i32 %65, %67
  %69 = icmp sle i32 %64, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %72, %73
  %75 = icmp sle i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %111

77:                                               ; preds = %70, %63
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %12, align 4
  br label %89

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %81
  %90 = load %struct.as_io_context*, %struct.as_io_context** %6, align 8
  %91 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load %struct.as_data*, %struct.as_data** %5, align 8
  %96 = getelementptr inbounds %struct.as_data, %struct.as_data* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 1, i32* %4, align 4
  br label %111

101:                                              ; preds = %94
  br label %110

102:                                              ; preds = %89
  %103 = load %struct.as_io_context*, %struct.as_io_context** %6, align 8
  %104 = getelementptr inbounds %struct.as_io_context, %struct.as_io_context* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i32 1, i32* %4, align 4
  br label %111

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %101
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %108, %100, %76, %61
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
