; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_force_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_force_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.il_force_reset }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.il_force_reset = type { i64, i32, i32, i64, i32 }

@S_EXIT_PENDING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"force reset rejected\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Cancel firmware reload based on module parameter setting\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"On demand firmware reload\0A\00", align 1
@S_FW_ERROR = common dso_local global i32 0, align 4
@S_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_force_reset(%struct.il_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.il_force_reset*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @S_EXIT_PENDING, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 2
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %89

15:                                               ; preds = %2
  %16 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 5
  store %struct.il_force_reset* %17, %struct.il_force_reset** %6, align 8
  %18 = load %struct.il_force_reset*, %struct.il_force_reset** %6, align 8
  %19 = getelementptr inbounds %struct.il_force_reset, %struct.il_force_reset* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %15
  %25 = load %struct.il_force_reset*, %struct.il_force_reset** %6, align 8
  %26 = getelementptr inbounds %struct.il_force_reset, %struct.il_force_reset* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %24
  %30 = load %struct.il_force_reset*, %struct.il_force_reset** %6, align 8
  %31 = getelementptr inbounds %struct.il_force_reset, %struct.il_force_reset* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.il_force_reset*, %struct.il_force_reset** %6, align 8
  %34 = getelementptr inbounds %struct.il_force_reset, %struct.il_force_reset* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load i64, i64* @jiffies, align 8
  %38 = call i64 @time_after(i64 %36, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %29
  %41 = call i32 @D_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.il_force_reset*, %struct.il_force_reset** %6, align 8
  %43 = getelementptr inbounds %struct.il_force_reset, %struct.il_force_reset* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %89

48:                                               ; preds = %29, %24
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.il_force_reset*, %struct.il_force_reset** %6, align 8
  %51 = getelementptr inbounds %struct.il_force_reset, %struct.il_force_reset* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load i64, i64* @jiffies, align 8
  %55 = load %struct.il_force_reset*, %struct.il_force_reset** %6, align 8
  %56 = getelementptr inbounds %struct.il_force_reset, %struct.il_force_reset* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %49
  %60 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = call i32 @D_INFO(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %89

70:                                               ; preds = %59, %49
  %71 = call i32 @IL_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @S_FW_ERROR, align 4
  %73 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %74 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %73, i32 0, i32 2
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  %76 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %77 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %76, i32 0, i32 3
  %78 = call i32 @wake_up(i32* %77)
  %79 = load i32, i32* @S_READY, align 4
  %80 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %81 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %80, i32 0, i32 2
  %82 = call i32 @clear_bit(i32 %79, i32* %81)
  %83 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %84 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %87 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %86, i32 0, i32 0
  %88 = call i32 @queue_work(i32 %85, i32* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %70, %68, %40, %12
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @IL_ERR(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
