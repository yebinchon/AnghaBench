; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_process_crw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_process_crw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crw = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.subchannel_id = type { i32, i32 }

@.str = private unnamed_addr constant [72 x i8] c"CRW0 reports slct=%d, oflw=%d, chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"CRW1 reports slct=%d, oflw=%d, chn=%d, rsc=%X, anc=%d, erc=%X, rsid=%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crw*, %struct.crw*, i32)* @css_process_crw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_process_crw(%struct.crw* %0, %struct.crw* %1, i32 %2) #0 {
  %4 = alloca %struct.crw*, align 8
  %5 = alloca %struct.crw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.subchannel_id, align 4
  store %struct.crw* %0, %struct.crw** %4, align 8
  store %struct.crw* %1, %struct.crw** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = call i32 (...) @css_schedule_eval_all()
  br label %79

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
  %34 = call i32 @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.crw*, %struct.crw** %5, align 8
  %36 = icmp ne %struct.crw* %35, null
  br i1 %36, label %37, label %60

37:                                               ; preds = %12
  %38 = load %struct.crw*, %struct.crw** %5, align 8
  %39 = getelementptr inbounds %struct.crw, %struct.crw* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.crw*, %struct.crw** %5, align 8
  %42 = getelementptr inbounds %struct.crw, %struct.crw* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.crw*, %struct.crw** %5, align 8
  %45 = getelementptr inbounds %struct.crw, %struct.crw* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.crw*, %struct.crw** %5, align 8
  %48 = getelementptr inbounds %struct.crw, %struct.crw* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.crw*, %struct.crw** %5, align 8
  %51 = getelementptr inbounds %struct.crw, %struct.crw* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.crw*, %struct.crw** %5, align 8
  %54 = getelementptr inbounds %struct.crw, %struct.crw* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.crw*, %struct.crw** %5, align 8
  %57 = getelementptr inbounds %struct.crw, %struct.crw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @CIO_CRW_EVENT(i32 2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %37, %12
  %61 = call i32 @init_subchannel_id(%struct.subchannel_id* %7)
  %62 = load %struct.crw*, %struct.crw** %4, align 8
  %63 = getelementptr inbounds %struct.crw, %struct.crw* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.crw*, %struct.crw** %5, align 8
  %67 = icmp ne %struct.crw* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.crw*, %struct.crw** %5, align 8
  %70 = getelementptr inbounds %struct.crw, %struct.crw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 8
  %73 = and i32 %72, 3
  %74 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %7, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %60
  %76 = bitcast %struct.subchannel_id* %7 to i64*
  %77 = load i64, i64* %76, align 4
  %78 = call i32 @css_evaluate_subchannel(i64 %77, i32 0)
  br label %79

79:                                               ; preds = %75, %10
  ret void
}

declare dso_local i32 @css_schedule_eval_all(...) #1

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_subchannel_id(%struct.subchannel_id*) #1

declare dso_local i32 @css_evaluate_subchannel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
