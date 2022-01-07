; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_set_mpeg_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8gxx_set_mpeg_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LGS8GXX_PROD_LGS8G75 = common dso_local global i64 0, align 8
@TS_SERIAL = common dso_local global i32 0, align 4
@TS_PARALLEL = common dso_local global i32 0, align 4
@TS_CLK_INVERTED = common dso_local global i32 0, align 4
@TS_CLK_NORMAL = common dso_local global i32 0, align 4
@TS_CLK_GATED = common dso_local global i32 0, align 4
@TS_CLK_FREERUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*, i32, i32, i32)* @lgs8gxx_set_mpeg_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8gxx_set_mpeg_mode(%struct.lgs8gxx_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.lgs8gxx_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %14 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LGS8GXX_PROD_LGS8G75, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 48, i32 194
  store i32 %21, i32* %12, align 4
  %22 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state* %22, i32 %23, i32* %11)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %71

29:                                               ; preds = %4
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 248
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @TS_SERIAL, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @TS_PARALLEL, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %11, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @TS_CLK_INVERTED, align 4
  br label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @TS_CLK_NORMAL, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @TS_CLK_GATED, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @TS_CLK_FREERUN, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load i32, i32* %11, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %11, align 4
  %62 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %62, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %68, %27
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @lgs8gxx_read_reg(%struct.lgs8gxx_state*, i32, i32*) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
