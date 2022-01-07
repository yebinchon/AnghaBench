; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event.c_can_go_on_limited_pmc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_perf_event.c_can_go_on_limited_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, i32, i32*)*, i64 (i32)* }
%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@MAX_EVENT_ALTERNATIVES = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_4__* null, align 8
@PPMU_LIMITED_PMC_OK = common dso_local global i32 0, align 4
@PPMU_LIMITED_PMC_REQD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32, i32)* @can_go_on_limited_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_go_on_limited_pmc(%struct.perf_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MAX_EVENT_ALTERNATIVES, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %3
  %22 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %21
  %28 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %35 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27, %21, %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %69

40:                                               ; preds = %33
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ppmu, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64 (i32)*, i64 (i32)** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 %43(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %69

48:                                               ; preds = %40
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ppmu, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %50, align 8
  %52 = icmp ne i32 (i32, i32, i32*)* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %69

54:                                               ; preds = %48
  %55 = load i32, i32* @PPMU_LIMITED_PMC_OK, align 4
  %56 = load i32, i32* @PPMU_LIMITED_PMC_REQD, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ppmu, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 %62(i32 %63, i32 %64, i32* %15)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %54, %53, %47, %39
  %70 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
