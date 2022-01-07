; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8g75_init_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgs8gxx.c_lgs8g75_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lgs8gxx_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"lgs8g75.fw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lgs8gxx_state*)* @lgs8g75_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgs8g75_init_data(%struct.lgs8gxx_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lgs8gxx_state*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lgs8gxx_state* %0, %struct.lgs8gxx_state** %3, align 8
  %7 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %8 = getelementptr inbounds %struct.lgs8gxx_state, %struct.lgs8gxx_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @request_firmware(%struct.firmware** %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %18 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %17, i32 198, i32 64)
  %19 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %20 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %19, i32 61, i32 4)
  %21 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %22 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %21, i32 57, i32 0)
  %23 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %24 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %23, i32 58, i32 0)
  %25 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %26 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %25, i32 56, i32 0)
  %27 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %28 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %27, i32 59, i32 0)
  %29 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %30 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %29, i32 56, i32 0)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %57, %16
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.firmware*, %struct.firmware** %4, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %31
  %38 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %39 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %38, i32 56, i32 0)
  %40 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 255
  %43 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %40, i32 58, i32 %42)
  %44 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 8
  %47 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %44, i32 59, i32 %46)
  %48 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %49 = load %struct.firmware*, %struct.firmware** %4, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %48, i32 60, i32 %55)
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load %struct.lgs8gxx_state*, %struct.lgs8gxx_state** %3, align 8
  %62 = call i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state* %61, i32 56, i32 0)
  %63 = load %struct.firmware*, %struct.firmware** %4, align 8
  %64 = call i32 @release_firmware(%struct.firmware* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %14
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @lgs8gxx_write_reg(%struct.lgs8gxx_state*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
