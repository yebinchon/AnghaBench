; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_auto_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_auto_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"lgs8gxx_auto_detect failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"detected param = 0x%02X\0A\00", align 1
@LGS8GXX_PROD_LGS8913 = common dso_local global i64 0, align 8
@TIM_MASK = common dso_local global i32 0, align 4
@TIM_MIDDLE = common dso_local global i32 0, align 4
@CF_MASK = common dso_local global i32 0, align 4
@SC_MASK = common dso_local global i32 0, align 4
@LGS_FEC_MASK = common dso_local global i32 0, align 4
@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lgs8gxx_state*)* @lgs8gxx_auto_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lgs8gxx_auto_lock(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca %struct.lgs8gxx_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %2, align 8
  store i32 2, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %9 = call i64 @lgs8gxx_auto_detect(%struct.lgs8gxx_state* %8, i32* %5, i32* %4)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %12
  %18 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %19 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LGS8GXX_PROD_LGS8913, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @TIM_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @TIM_MIDDLE, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 96, i32 64
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @CF_MASK, align 4
  %35 = load i32, i32* @SC_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @LGS_FEC_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %25, %17
  %45 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %46 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %44
  %53 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %54 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %53, i32 25, i32* %7)
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 129
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 %57, 1
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %61, i32 25, i32 %62)
  br label %80

64:                                               ; preds = %44
  %65 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %65, i32 125, i32 %66)
  %68 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %69 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LGS8GXX_PROD_LGS8913, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %76, i32 192, i32 %77)
  br label %79

79:                                               ; preds = %75, %64
  br label %80

80:                                               ; preds = %79, %52
  %81 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %82 = call i32 @lgs8gxx_set_mode_manual(%struct.lgs8gxx_state* %81)
  %83 = load i32, i32* %4, align 4
  switch i32 %83, label %93 [
    i32 128, label %84
    i32 129, label %87
    i32 130, label %90
  ]

84:                                               ; preds = %80
  %85 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %86 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %85, i32 0, i32 0
  store i32 945, i32* %86, align 8
  br label %96

87:                                               ; preds = %80
  %88 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %89 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %88, i32 0, i32 0
  store i32 595, i32* %89, align 8
  br label %96

90:                                               ; preds = %80
  %91 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %92 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %91, i32 0, i32 0
  store i32 420, i32* %92, align 8
  br label %96

93:                                               ; preds = %80
  %94 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %2, align 8
  %95 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %94, i32 0, i32 0
  store i32 945, i32* %95, align 8
  br label %96

96:                                               ; preds = %93, %90, %87, %84
  ret void
}

declare dso_local i64 @lgs8gxx_auto_detect(%struct.lgs8gxx_state*, i32*, i32*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i32*) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

declare dso_local i32 @lgs8gxx_set_mode_manual(%struct.lgs8gxx_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
