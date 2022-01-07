; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_info64_from_old.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_info64_from_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_info = type { i64, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.loop_info64 = type { i64, i32, i32, i32, i32*, i32, i32, i64, i32, i32, i32, i32, i32 }

@LO_CRYPT_CRYPTOAPI = common dso_local global i64 0, align 8
@LO_NAME_SIZE = common dso_local global i32 0, align 4
@LO_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop_info*, %struct.loop_info64*)* @loop_info64_from_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_info64_from_old(%struct.loop_info* %0, %struct.loop_info64* %1) #0 {
  %3 = alloca %struct.loop_info*, align 8
  %4 = alloca %struct.loop_info64*, align 8
  store %struct.loop_info* %0, %struct.loop_info** %3, align 8
  store %struct.loop_info64* %1, %struct.loop_info64** %4, align 8
  %5 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %6 = call i32 @memset(%struct.loop_info64* %5, i32 0, i32 72)
  %7 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %8 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %11 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 8
  %12 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %13 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %16 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %15, i32 0, i32 11
  store i32 %14, i32* %16, align 4
  %17 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %18 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %21 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 8
  %22 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %23 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %26 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 4
  %27 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %28 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %31 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %33 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %32, i32 0, i32 7
  store i64 0, i64* %33, align 8
  %34 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %35 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %38 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %40 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %43 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  %44 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %45 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %48 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %50 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %55 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %59 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %64 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %62, i32* %66, align 4
  %67 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %68 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LO_CRYPT_CRYPTOAPI, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %2
  %73 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %74 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %77 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LO_NAME_SIZE, align 4
  %80 = call i32 @memcpy(i32 %75, i32 %78, i32 %79)
  br label %90

81:                                               ; preds = %2
  %82 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %83 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %86 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LO_NAME_SIZE, align 4
  %89 = call i32 @memcpy(i32 %84, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %72
  %91 = load %struct.loop_info64*, %struct.loop_info64** %4, align 8
  %92 = getelementptr inbounds %struct.loop_info64, %struct.loop_info64* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.loop_info*, %struct.loop_info** %3, align 8
  %95 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @LO_KEY_SIZE, align 4
  %98 = call i32 @memcpy(i32 %93, i32 %96, i32 %97)
  ret void
}

declare dso_local i32 @memset(%struct.loop_info64*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
