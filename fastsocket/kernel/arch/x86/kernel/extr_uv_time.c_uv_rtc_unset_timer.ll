; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_time.c_uv_rtc_unset_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_uv_time.c_uv_rtc_unset_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_rtc_timer_head = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@blade_info = common dso_local global %struct.uv_rtc_timer_head** null, align 8
@ULLONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @uv_rtc_unset_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_rtc_unset_timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uv_rtc_timer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @uv_cpu_to_pnode(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @uv_cpu_to_blade_id(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.uv_rtc_timer_head**, %struct.uv_rtc_timer_head*** @blade_info, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %16, i64 %18
  %20 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %19, align 8
  store %struct.uv_rtc_timer_head* %20, %struct.uv_rtc_timer_head** %7, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.TYPE_4__* @uv_cpu_hub_info(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %26 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64* %31, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %32 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %33 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %32, i32 0, i32 1
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %37 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = call i64 @uv_read_rtc(i32* null)
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41, %2
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %41
  store i32 1, i32* %11, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i64, i64* @ULLONG_MAX, align 8
  %55 = load i64*, i64** %9, align 8
  store i64 %54, i64* %55, align 8
  %56 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %57 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %53
  br label %66

66:                                               ; preds = %65, %50
  %67 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %68 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %67, i32 0, i32 1
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %11, align 4
  ret i32 %71
}

declare dso_local i32 @uv_cpu_to_pnode(i32) #1

declare dso_local i32 @uv_cpu_to_blade_id(i32) #1

declare dso_local %struct.TYPE_4__* @uv_cpu_hub_info(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uv_read_rtc(i32*) #1

declare dso_local i32 @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
