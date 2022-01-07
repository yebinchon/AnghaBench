; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_time.c_uv_rtc_set_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_time.c_uv_rtc_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_rtc_timer_head = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@blade_info = common dso_local global %struct.uv_rtc_timer_head** null, align 8
@ULLONG_MAX = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @uv_rtc_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_rtc_set_timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uv_rtc_timer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @uv_cpu_to_pnode(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @uv_cpu_to_blade_id(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.uv_rtc_timer_head**, %struct.uv_rtc_timer_head*** @blade_info, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %17, i64 %19
  %21 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %20, align 8
  store %struct.uv_rtc_timer_head* %21, %struct.uv_rtc_timer_head** %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.TYPE_4__* @uv_cpu_hub_info(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %27 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* %32, i32** %10, align 8
  %33 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %34 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %33, i32 0, i32 1
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %38 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %10, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %59, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %51 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %49, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %48, %44, %2
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %62 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @uv_setup_intr(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %59
  %68 = load i32, i32* @ULLONG_MAX, align 4
  %69 = load i32*, i32** %10, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head* %70, i32 %71)
  %73 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %74 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %73, i32 0, i32 1
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* @ETIME, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %48
  %81 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %82 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %81, i32 0, i32 1
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %80, %67
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @uv_cpu_to_pnode(i32) #1

declare dso_local i32 @uv_cpu_to_blade_id(i32) #1

declare dso_local %struct.TYPE_4__* @uv_cpu_hub_info(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uv_setup_intr(i32, i32) #1

declare dso_local i32 @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
