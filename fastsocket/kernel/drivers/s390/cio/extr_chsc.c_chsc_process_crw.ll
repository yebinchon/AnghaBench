; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_crw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_crw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_area = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.crw = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"CRW reports slct=%d, oflw=%d, chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\0A\00", align 1
@sei_page = common dso_local global %struct.chsc_sei_area* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"prcss\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"chsc: sei successful\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"chsc: sei failed (rc=%04x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crw*, %struct.crw*, i32)* @chsc_process_crw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_crw(%struct.crw* %0, %struct.crw* %1, i32 %2) #0 {
  %4 = alloca %struct.crw*, align 8
  %5 = alloca %struct.crw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.chsc_sei_area*, align 8
  store %struct.crw* %0, %struct.crw** %4, align 8
  store %struct.crw* %1, %struct.crw** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 (...) @css_schedule_eval_all()
  br label %77

12:                                               ; preds = %3
  %13 = load %struct.crw*, %struct.crw** %4, align 8
  %14 = getelementptr inbounds %struct.crw, %struct.crw* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.crw*, %struct.crw** %4, align 8
  %17 = getelementptr inbounds %struct.crw, %struct.crw* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.crw*, %struct.crw** %4, align 8
  %20 = getelementptr inbounds %struct.crw, %struct.crw* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.crw*, %struct.crw** %4, align 8
  %23 = getelementptr inbounds %struct.crw, %struct.crw* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.crw*, %struct.crw** %4, align 8
  %26 = getelementptr inbounds %struct.crw, %struct.crw* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.crw*, %struct.crw** %4, align 8
  %29 = getelementptr inbounds %struct.crw, %struct.crw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.crw*, %struct.crw** %4, align 8
  %32 = getelementptr inbounds %struct.crw, %struct.crw* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** @sei_page, align 8
  %36 = icmp ne %struct.chsc_sei_area* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %12
  br label %77

38:                                               ; preds = %12
  %39 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** @sei_page, align 8
  store %struct.chsc_sei_area* %39, %struct.chsc_sei_area** %7, align 8
  %40 = call i32 @CIO_TRACE_EVENT(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %71, %38
  %42 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %7, align 8
  %43 = call i32 @memset(%struct.chsc_sei_area* %42, i32 0, i32 16)
  %44 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %7, align 8
  %45 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 16, i32* %46, align 4
  %47 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %7, align 8
  %48 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 14, i32* %49, align 4
  %50 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %7, align 8
  %51 = call i64 @chsc(%struct.chsc_sei_area* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %77

54:                                               ; preds = %41
  %55 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %7, align 8
  %56 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %7, align 8
  %63 = call i32 @chsc_process_sei(%struct.chsc_sei_area* %62)
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %7, align 8
  %66 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %77

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %7, align 8
  %73 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 128
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %41, label %77

77:                                               ; preds = %10, %37, %71, %64, %53
  ret void
}

declare dso_local i32 @css_schedule_eval_all(...) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, ...) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @memset(%struct.chsc_sei_area*, i32, i32) #1

declare dso_local i64 @chsc(%struct.chsc_sei_area*) #1

declare dso_local i32 @chsc_process_sei(%struct.chsc_sei_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
