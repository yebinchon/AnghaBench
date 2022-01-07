; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc.c_hp_sdc_take.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_hp_sdc.c_hp_sdc_take.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32*, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i8*, i8*, i8*)*, i64 }

@hp_sdc = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@HP_SDC_ACT_SEMAPHORE = common dso_local global i32 0, align 4
@HP_SDC_ACT_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*)* @hp_sdc_take to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp_sdc_take(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call i32 @read_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 3))
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 0), align 8
  %12 = icmp ult i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32 @read_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 3))
  br label %113

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 5), align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 %17
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %9, align 8
  %20 = call i32 @read_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 3))
  %21 = load i8*, i8** %7, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32 %22, i32* %30, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 %32, i32* %40, align 4
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 1), align 8
  %42 = sub nsw i64 %41, 2
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 1), align 8
  %43 = call i32 @do_gettimeofday(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 4))
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 1), align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %113

46:                                               ; preds = %15
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HP_SDC_ACT_SEMAPHORE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @up(i64 %68)
  br label %70

70:                                               ; preds = %64, %58
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @HP_SDC_ACT_CALLBACK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %71
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** %86, align 8
  %88 = icmp ne i32 (i32, i8*, i8*, i8*)* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (i32, i8*, i8*, i8*)*, i32 (i32, i8*, i8*, i8*)** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = load i8*, i8** %8, align 8
  %98 = call i32 %93(i32 %94, i8* %95, i8* %96, i8* %97)
  br label %99

99:                                               ; preds = %89, %83
  br label %100

100:                                              ; preds = %99, %71
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %107, align 8
  %110 = call i32 @write_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 3))
  store i64 -1, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 1), align 8
  %111 = call i32 @write_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 3))
  %112 = call i32 @tasklet_schedule(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @hp_sdc, i32 0, i32 2))
  br label %113

113:                                              ; preds = %13, %100, %15
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @up(i64) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
