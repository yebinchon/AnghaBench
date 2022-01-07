; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind.c_script_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unwind.c_script_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i16*, %struct.TYPE_5__, %struct.unw_script* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.unw_script = type { i32, i64 }
%struct.unw_frame_info = type { i32, i64, i64, i64 }

@unw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@UNW_CACHE_SIZE = common dso_local global i16 0, align 2
@UNW_HASH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.unw_script* (%struct.unw_frame_info*)* @script_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.unw_script* @script_lookup(%struct.unw_frame_info* %0) #0 {
  %2 = alloca %struct.unw_script*, align 8
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca %struct.unw_script*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.unw_frame_info* %0, %struct.unw_frame_info** %3, align 8
  %8 = load %struct.unw_script*, %struct.unw_script** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 2), align 8
  %9 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %10 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.unw_script, %struct.unw_script* %8, i64 %12
  store %struct.unw_script* %13, %struct.unw_script** %4, align 8
  %14 = call i64 @UNW_DEBUG_ON(i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.unw_script* null, %struct.unw_script** %2, align 8
  br label %95

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 1, i32 0, i32 3), align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 1, i32 0, i32 3), align 4
  %20 = call i32 @STAT(i32 %19)
  %21 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %22 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %25 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load %struct.unw_script*, %struct.unw_script** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @cache_match(%struct.unw_script* %27, i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 1, i32 0, i32 2), align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 1, i32 0, i32 2), align 8
  %35 = call i32 @STAT(i32 %34)
  %36 = load %struct.unw_script*, %struct.unw_script** %4, align 8
  store %struct.unw_script* %36, %struct.unw_script** %2, align 8
  br label %95

37:                                               ; preds = %17
  %38 = load i16*, i16** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 0), align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @hash(i64 %39)
  %41 = getelementptr inbounds i16, i16* %38, i64 %40
  %42 = load i16, i16* %41, align 2
  store i16 %42, i16* %5, align 2
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* @UNW_CACHE_SIZE, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp sge i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  store %struct.unw_script* null, %struct.unw_script** %2, align 8
  br label %95

49:                                               ; preds = %37
  %50 = load %struct.unw_script*, %struct.unw_script** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 2), align 8
  %51 = load i16, i16* %5, align 2
  %52 = zext i16 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.unw_script, %struct.unw_script* %50, i64 %53
  store %struct.unw_script* %54, %struct.unw_script** %4, align 8
  br label %55

55:                                               ; preds = %49, %86
  %56 = load %struct.unw_script*, %struct.unw_script** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @cache_match(%struct.unw_script* %56, i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 1, i32 0, i32 1), align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 1, i32 0, i32 1), align 4
  %64 = call i32 @STAT(i32 %63)
  %65 = load %struct.unw_script*, %struct.unw_script** %4, align 8
  %66 = load %struct.unw_script*, %struct.unw_script** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 2), align 8
  %67 = ptrtoint %struct.unw_script* %65 to i64
  %68 = ptrtoint %struct.unw_script* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 16
  %71 = trunc i64 %70 to i32
  %72 = load %struct.unw_script*, %struct.unw_script** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 2), align 8
  %73 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %74 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.unw_script, %struct.unw_script* %72, i64 %75
  %77 = getelementptr inbounds %struct.unw_script, %struct.unw_script* %76, i32 0, i32 0
  store i32 %71, i32* %77, align 8
  %78 = load %struct.unw_script*, %struct.unw_script** %4, align 8
  store %struct.unw_script* %78, %struct.unw_script** %2, align 8
  br label %95

79:                                               ; preds = %55
  %80 = load %struct.unw_script*, %struct.unw_script** %4, align 8
  %81 = getelementptr inbounds %struct.unw_script, %struct.unw_script* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @UNW_HASH_SIZE, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store %struct.unw_script* null, %struct.unw_script** %2, align 8
  br label %95

86:                                               ; preds = %79
  %87 = load %struct.unw_script*, %struct.unw_script** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 2), align 8
  %88 = load %struct.unw_script*, %struct.unw_script** %4, align 8
  %89 = getelementptr inbounds %struct.unw_script, %struct.unw_script* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.unw_script, %struct.unw_script* %87, i64 %90
  store %struct.unw_script* %91, %struct.unw_script** %4, align 8
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 1, i32 0, i32 0), align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @unw, i32 0, i32 1, i32 0, i32 0), align 8
  %94 = call i32 @STAT(i32 %93)
  br label %55

95:                                               ; preds = %85, %61, %48, %32, %16
  %96 = load %struct.unw_script*, %struct.unw_script** %2, align 8
  ret %struct.unw_script* %96
}

declare dso_local i64 @UNW_DEBUG_ON(i32) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i64 @cache_match(%struct.unw_script*, i64, i64) #1

declare dso_local i64 @hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
