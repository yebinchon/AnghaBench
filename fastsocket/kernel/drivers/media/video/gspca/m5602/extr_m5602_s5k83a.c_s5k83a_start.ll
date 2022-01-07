; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.s5k83a_priv* }
%struct.s5k83a_priv = type { i32 }

@rotation_thread_function = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"rotation thread\00", align 1
@start_s5k83a = common dso_local global i64** null, align 8
@SENSOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k83a_start(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5k83a_priv*, align 8
  %7 = alloca [2 x i64], align 16
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %9, align 8
  store %struct.s5k83a_priv* %10, %struct.s5k83a_priv** %6, align 8
  %11 = load i32, i32* @rotation_thread_function, align 4
  %12 = load %struct.sd*, %struct.sd** %3, align 8
  %13 = call i32 @kthread_create(i32 %11, %struct.sd* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %6, align 8
  %15 = getelementptr inbounds %struct.s5k83a_priv, %struct.s5k83a_priv* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.s5k83a_priv*, %struct.s5k83a_priv** %6, align 8
  %17 = getelementptr inbounds %struct.s5k83a_priv, %struct.s5k83a_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wake_up_process(i32 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %81, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i64**, i64*** @start_s5k83a, align 8
  %23 = call i32 @ARRAY_SIZE(i64** %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %84

31:                                               ; preds = %29
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %33 = load i64**, i64*** @start_s5k83a, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %33, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %32, align 8
  %40 = getelementptr inbounds i64, i64* %32, i64 1
  %41 = load i64**, i64*** @start_s5k83a, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 3
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %40, align 8
  %48 = load i64**, i64*** @start_s5k83a, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64*, i64** %48, i64 %50
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SENSOR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %31
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = load i64**, i64*** @start_s5k83a, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64*, i64** %59, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %67 = call i32 @m5602_write_sensor(%struct.sd* %58, i64 %65, i64* %66, i32 2)
  store i32 %67, i32* %5, align 4
  br label %80

68:                                               ; preds = %31
  %69 = load %struct.sd*, %struct.sd** %3, align 8
  %70 = load i64**, i64*** @start_s5k83a, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %70, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %78 = load i64, i64* %77, align 16
  %79 = call i32 @m5602_write_bridge(%struct.sd* %69, i64 %76, i64 %78)
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %68, %57
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %20

84:                                               ; preds = %29
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %92

89:                                               ; preds = %84
  %90 = load %struct.sd*, %struct.sd** %3, align 8
  %91 = call i32 @s5k83a_set_led_indication(%struct.sd* %90, i32 1)
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %89, %87
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @kthread_create(i32, %struct.sd*, i8*) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i32 @s5k83a_set_led_indication(%struct.sd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
