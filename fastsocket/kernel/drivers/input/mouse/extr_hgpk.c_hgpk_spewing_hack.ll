; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_spewing_hack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/mouse/extr_hgpk.c_hgpk_spewing_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.hgpk_data* }
%struct.hgpk_data = type { i32, i64, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"packet spew detected (%d,%d)\0A\00", align 1
@spew_delay = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*, i32, i32, i32, i32)* @hgpk_spewing_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hgpk_spewing_hack(%struct.psmouse* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hgpk_data*, align 8
  store %struct.psmouse* %0, %struct.psmouse** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 0
  %14 = load %struct.hgpk_data*, %struct.hgpk_data** %13, align 8
  store %struct.hgpk_data* %14, %struct.hgpk_data** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %5
  br label %73

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %25 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %31 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %35 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = icmp sgt i32 %37, 100
  br i1 %38, label %39, label %73

39:                                               ; preds = %21
  %40 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %41 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @abs(i64 %42)
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %47 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @abs(i64 %48)
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %53 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %54 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %57 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @hgpk_dbg(%struct.psmouse* %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %58)
  %60 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %61 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %62 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %61, i32 0, i32 3
  %63 = load i32, i32* @spew_delay, align 4
  %64 = call i32 @msecs_to_jiffies(i32 %63)
  %65 = call i32 @psmouse_queue_work(%struct.psmouse* %60, i32* %62, i32 %64)
  br label %66

66:                                               ; preds = %51, %45, %39
  %67 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %68 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %70 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.hgpk_data*, %struct.hgpk_data** %11, align 8
  %72 = getelementptr inbounds %struct.hgpk_data, %struct.hgpk_data* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %20, %66, %21
  ret void
}

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @hgpk_dbg(%struct.psmouse*, i8*, i64, i64) #1

declare dso_local i32 @psmouse_queue_work(%struct.psmouse*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
