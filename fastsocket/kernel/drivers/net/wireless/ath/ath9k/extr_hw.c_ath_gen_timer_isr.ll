; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath_gen_timer_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath_gen_timer_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, %struct.ath_gen_timer_table }
%struct.ath_gen_timer_table = type { %struct.ath_gen_timer**, %struct.TYPE_2__ }
%struct.ath_gen_timer = type { i32, i32 (i32)*, i32 (i32)* }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }

@HWTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TSF overflow for Gen timer %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Gen timer[%d] trigger\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_gen_timer_isr(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_gen_timer_table*, align 8
  %4 = alloca %struct.ath_gen_timer*, align 8
  %5 = alloca %struct.ath_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 2
  store %struct.ath_gen_timer_table* %10, %struct.ath_gen_timer_table** %3, align 8
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %11)
  store %struct.ath_common* %12, %struct.ath_common** %5, align 8
  %13 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %3, align 8
  %20 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %3, align 8
  %26 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %38, %1
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %3, align 8
  %40 = call i32 @rightmost_index(%struct.ath_gen_timer_table* %39, i32* %7)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %3, align 8
  %42 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %41, i32 0, i32 0
  %43 = load %struct.ath_gen_timer**, %struct.ath_gen_timer*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ath_gen_timer*, %struct.ath_gen_timer** %43, i64 %45
  %47 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %46, align 8
  store %struct.ath_gen_timer* %47, %struct.ath_gen_timer** %4, align 8
  %48 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %49 = icmp ne %struct.ath_gen_timer* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %54 = load i32, i32* @HWTIMER, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ath_dbg(%struct.ath_common* %53, i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %58 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %57, i32 0, i32 2
  %59 = load i32 (i32)*, i32 (i32)** %58, align 8
  %60 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %61 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 %59(i32 %62)
  br label %35

64:                                               ; preds = %35
  br label %65

65:                                               ; preds = %68, %64
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %3, align 8
  %70 = call i32 @rightmost_index(%struct.ath_gen_timer_table* %69, i32* %6)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.ath_gen_timer_table*, %struct.ath_gen_timer_table** %3, align 8
  %72 = getelementptr inbounds %struct.ath_gen_timer_table, %struct.ath_gen_timer_table* %71, i32 0, i32 0
  %73 = load %struct.ath_gen_timer**, %struct.ath_gen_timer*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ath_gen_timer*, %struct.ath_gen_timer** %73, i64 %75
  %77 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %76, align 8
  store %struct.ath_gen_timer* %77, %struct.ath_gen_timer** %4, align 8
  %78 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %79 = icmp ne %struct.ath_gen_timer* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.ath_common*, %struct.ath_common** %5, align 8
  %84 = load i32, i32* @HWTIMER, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @ath_dbg(%struct.ath_common* %83, i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %88 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %87, i32 0, i32 1
  %89 = load i32 (i32)*, i32 (i32)** %88, align 8
  %90 = load %struct.ath_gen_timer*, %struct.ath_gen_timer** %4, align 8
  %91 = getelementptr inbounds %struct.ath_gen_timer, %struct.ath_gen_timer* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %89(i32 %92)
  br label %65

94:                                               ; preds = %65
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @rightmost_index(%struct.ath_gen_timer_table*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
