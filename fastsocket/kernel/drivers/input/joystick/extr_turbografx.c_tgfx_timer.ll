; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_turbografx.c_tgfx_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_turbografx.c_tgfx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgfx = type { i32, i32, %struct.TYPE_2__*, %struct.input_dev** }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@TGFX_RIGHT = common dso_local global i32 0, align 4
@TGFX_LEFT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@TGFX_DOWN = common dso_local global i32 0, align 4
@TGFX_UP = common dso_local global i32 0, align 4
@BTN_TRIGGER = common dso_local global i32 0, align 4
@TGFX_TRIGGER = common dso_local global i32 0, align 4
@BTN_THUMB = common dso_local global i32 0, align 4
@TGFX_THUMB = common dso_local global i32 0, align 4
@BTN_THUMB2 = common dso_local global i32 0, align 4
@TGFX_THUMB2 = common dso_local global i32 0, align 4
@BTN_TOP = common dso_local global i32 0, align 4
@TGFX_TOP = common dso_local global i32 0, align 4
@BTN_TOP2 = common dso_local global i32 0, align 4
@TGFX_TOP2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TGFX_REFRESH_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tgfx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgfx_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tgfx*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.tgfx*
  store %struct.tgfx* %10, %struct.tgfx** %3, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %122, %1
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 7
  br i1 %13, label %14, label %125

14:                                               ; preds = %11
  %15 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %16 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %121

22:                                               ; preds = %14
  %23 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %24 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %23, i32 0, i32 3
  %25 = load %struct.input_dev**, %struct.input_dev*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.input_dev*, %struct.input_dev** %25, i64 %27
  %29 = load %struct.input_dev*, %struct.input_dev** %28, align 8
  store %struct.input_dev* %29, %struct.input_dev** %4, align 8
  %30 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %31 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = call i32 @parport_write_data(i32 %34, i32 %37)
  %39 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %40 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @parport_read_status(i32 %43)
  %45 = xor i32 %44, 127
  store i32 %45, i32* %5, align 4
  %46 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %47 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @parport_read_control(i32 %50)
  %52 = xor i32 %51, 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %54 = load i32, i32* @ABS_X, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @TGFX_RIGHT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @TGFX_LEFT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = sub nsw i32 %61, %68
  %70 = call i32 @input_report_abs(%struct.input_dev* %53, i32 %54, i32 %69)
  %71 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %72 = load i32, i32* @ABS_Y, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @TGFX_DOWN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @TGFX_UP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = sub nsw i32 %79, %86
  %88 = call i32 @input_report_abs(%struct.input_dev* %71, i32 %72, i32 %87)
  %89 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %90 = load i32, i32* @BTN_TRIGGER, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @TGFX_TRIGGER, align 4
  %93 = and i32 %91, %92
  %94 = call i32 @input_report_key(%struct.input_dev* %89, i32 %90, i32 %93)
  %95 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %96 = load i32, i32* @BTN_THUMB, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @TGFX_THUMB, align 4
  %99 = and i32 %97, %98
  %100 = call i32 @input_report_key(%struct.input_dev* %95, i32 %96, i32 %99)
  %101 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %102 = load i32, i32* @BTN_THUMB2, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @TGFX_THUMB2, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @input_report_key(%struct.input_dev* %101, i32 %102, i32 %105)
  %107 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %108 = load i32, i32* @BTN_TOP, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @TGFX_TOP, align 4
  %111 = and i32 %109, %110
  %112 = call i32 @input_report_key(%struct.input_dev* %107, i32 %108, i32 %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %114 = load i32, i32* @BTN_TOP2, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @TGFX_TOP2, align 4
  %117 = and i32 %115, %116
  %118 = call i32 @input_report_key(%struct.input_dev* %113, i32 %114, i32 %117)
  %119 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %120 = call i32 @input_sync(%struct.input_dev* %119)
  br label %121

121:                                              ; preds = %22, %14
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %11

125:                                              ; preds = %11
  %126 = load %struct.tgfx*, %struct.tgfx** %3, align 8
  %127 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %126, i32 0, i32 1
  %128 = load i64, i64* @jiffies, align 8
  %129 = load i64, i64* @TGFX_REFRESH_TIME, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @mod_timer(i32* %127, i64 %130)
  ret void
}

declare dso_local i32 @parport_write_data(i32, i32) #1

declare dso_local i32 @parport_read_status(i32) #1

declare dso_local i32 @parport_read_control(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
