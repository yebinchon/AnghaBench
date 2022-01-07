; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_filter.c_dvb_filter_pes2ts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_filter.c_dvb_filter_pes2ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_filter_pes2ts = type { i8*, i32 (i32, i8*)*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_filter_pes2ts(%struct.dvb_filter_pes2ts* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_filter_pes2ts*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_filter_pes2ts* %0, %struct.dvb_filter_pes2ts** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %6, align 8
  %14 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, 64
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %20, align 1
  br label %32

25:                                               ; preds = %4
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, -65
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  br label %32

32:                                               ; preds = %25, %18
  br label %33

33:                                               ; preds = %61, %32
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 184
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %6, align 8
  %38 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = and i32 %39, 15
  %42 = or i32 16, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 3
  store i8 %43, i8* %45, align 1
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @memcpy(i8* %47, i8* %48, i32 184)
  %50 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %6, align 8
  %51 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %50, i32 0, i32 1
  %52 = load i32 (i32, i8*)*, i32 (i32, i8*)** %51, align 8
  %53 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %6, align 8
  %54 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 %52(i32 %55, i8* %56)
  store i32 %57, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %5, align 4
  br label %124

61:                                               ; preds = %36
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %62, 184
  store i32 %63, i32* %8, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 184
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, -65
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %67, align 1
  br label %33

72:                                               ; preds = %33
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %124

76:                                               ; preds = %72
  %77 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %6, align 8
  %78 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = and i32 %79, 15
  %82 = or i32 48, %81
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 183, %86
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %76
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 5
  store i8 0, i8* %92, align 1
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 6
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @memset(i8* %98, i32 255, i32 %100)
  br label %102

102:                                              ; preds = %96, %90
  br label %103

103:                                              ; preds = %102, %76
  %104 = load i32, i32* %12, align 4
  %105 = trunc i32 %104 to i8
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  store i8 %105, i8* %107, align 1
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 5
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @memcpy(i8* %112, i8* %113, i32 %114)
  %116 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %6, align 8
  %117 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %116, i32 0, i32 1
  %118 = load i32 (i32, i8*)*, i32 (i32, i8*)** %117, align 8
  %119 = load %struct.dvb_filter_pes2ts*, %struct.dvb_filter_pes2ts** %6, align 8
  %120 = getelementptr inbounds %struct.dvb_filter_pes2ts, %struct.dvb_filter_pes2ts* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 %118(i32 %121, i8* %122)
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %103, %75, %59
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
