; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_rtc_set_tm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_mf.c_rtc_set_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.rtc_time*)* @rtc_set_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtc_set_tm(i32 %0, i32* %1, %struct.rtc_time* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.rtc_time* %2, %struct.rtc_time** %7, align 8
  %14 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %14, i32 0, i32 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %17 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %16, i32 0, i32 7
  store i64 0, i64* %17, align 8
  %18 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %19 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %3
  %23 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %26 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 3
  store i32 15, i32* %30, align 4
  %31 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %31, i32 0, i32 4
  store i32 5, i32* %32, align 8
  %33 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 5
  store i32 52, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %4, align 4
  br label %116

36:                                               ; preds = %3
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 169
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 175
  br i1 %45, label %46, label %61

46:                                               ; preds = %41, %36
  %47 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %53, i32 0, i32 3
  store i32 10, i32* %54, align 4
  %55 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %55, i32 0, i32 4
  store i32 8, i32* %56, align 8
  %57 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 5
  store i32 71, i32* %58, align 4
  %59 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %60 = call i32 @mf_set_rtc(%struct.rtc_time* %59)
  br label %61

61:                                               ; preds = %46, %41
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 6
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 10
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 11
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @bcd2bin(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @bcd2bin(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @bcd2bin(i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @bcd2bin(i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @bcd2bin(i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @bcd2bin(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sle i32 %92, 69
  br i1 %93, label %94, label %97

94:                                               ; preds = %61
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 100
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %94, %61
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %100 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %103 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %106 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %109 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %112 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %115 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %97, %22
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @mf_set_rtc(%struct.rtc_time*) #1

declare dso_local i32 @bcd2bin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
