; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_info64_to_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_info64_to_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_info64 = type { i64, i64, i64, i64, i64, i32, i32, i32, i32*, i32, i32, i32 }
%struct.loop_info = type { i64, i64, i64, i64, i64, i32, i32, i32*, i32, i32, i32 }

@LO_CRYPT_CRYPTOAPI = common dso_local global i64 0, align 8
@LO_NAME_SIZE = common dso_local global i32 0, align 4
@LO_KEY_SIZE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_info64*, %struct.loop_info*)* @loop_info64_to_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_info64_to_old(%struct.loop_info64* %0, %struct.loop_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.loop_info64*, align 8
  %5 = alloca %struct.loop_info*, align 8
  store %struct.loop_info64* %0, %struct.loop_info64** %4, align 8
  store %struct.loop_info* %1, %struct.loop_info** %5, align 8
  %6 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %7 = call i32 @memset(%struct.loop_info* %6, i32 0, i32 72)
  %8 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %9 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %12 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %11, i32 0, i32 10
  store i32 %10, i32* %12, align 8
  %13 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %14 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %17 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %19 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %22 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %24 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %27 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %29 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %32 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %34 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %37 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  %38 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %39 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %42 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %44 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %47 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 8
  %48 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %49 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %54 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %53, i32 0, i32 7
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %58 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %63 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %62, i32 0, i32 7
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 %61, i32* %65, align 4
  %66 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %67 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LO_CRYPT_CRYPTOAPI, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %2
  %72 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %73 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %76 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @LO_NAME_SIZE, align 4
  %79 = call i32 @memcpy(i32 %74, i32 %77, i32 %78)
  br label %89

80:                                               ; preds = %2
  %81 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %82 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %85 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @LO_NAME_SIZE, align 4
  %88 = call i32 @memcpy(i32 %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %80, %71
  %90 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %91 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %94 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @LO_KEY_SIZE, align 4
  %97 = call i32 @memcpy(i32 %92, i32 %95, i32 %96)
  %98 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %99 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %102 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %100, %103
  br i1 %104, label %129, label %105

105:                                              ; preds = %89
  %106 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %107 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %110 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %108, %111
  br i1 %112, label %129, label %113

113:                                              ; preds = %105
  %114 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %115 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %118 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %113
  %122 = load %struct.loop_info*, %struct.loop_info** %5, align 8
  %123 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %126 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %121, %113, %105, %89
  %130 = load i32, i32* @EOVERFLOW, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %133

132:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %129
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @memset(%struct.loop_info*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
