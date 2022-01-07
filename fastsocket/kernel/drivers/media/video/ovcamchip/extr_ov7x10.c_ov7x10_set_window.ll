; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x10.c_ov7x10_set_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ov7x10.c_ov7x10_set_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ovcamchip_window = type { i32, i32, i32, i32, i64 }

@HWSBASE = common dso_local global i64 0, align 8
@HWEBASE = common dso_local global i64 0, align 8
@VWSBASE = common dso_local global i64 0, align 8
@VWEBASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.ovcamchip_window*)* @ov7x10_set_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7x10_set_window(%struct.i2c_client* %0, %struct.ovcamchip_window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.ovcamchip_window*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.ovcamchip_window* %1, %struct.ovcamchip_window** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %5, align 8
  %11 = call i32 @ov7x10_mode_init(%struct.i2c_client* %9, %struct.ovcamchip_window* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %72

16:                                               ; preds = %2
  %17 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %5, align 8
  %18 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %23

22:                                               ; preds = %16
  store i32 2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load i64, i64* @HWSBASE, align 8
  %26 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %5, align 8
  %27 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %25, %31
  %33 = call i32 @ov_write(%struct.i2c_client* %24, i32 23, i64 %32)
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i64, i64* @HWEBASE, align 8
  %36 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %5, align 8
  %37 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %5, align 8
  %40 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %35, %45
  %47 = call i32 @ov_write(%struct.i2c_client* %34, i32 24, i64 %46)
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = load i64, i64* @VWSBASE, align 8
  %50 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %5, align 8
  %51 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %49, %55
  %57 = call i32 @ov_write(%struct.i2c_client* %48, i32 25, i64 %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = load i64, i64* @VWEBASE, align 8
  %60 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %5, align 8
  %61 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ovcamchip_window*, %struct.ovcamchip_window** %5, align 8
  %64 = getelementptr inbounds %struct.ovcamchip_window, %struct.ovcamchip_window* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load i32, i32* %8, align 4
  %68 = ashr i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %59, %69
  %71 = call i32 @ov_write(%struct.i2c_client* %58, i32 26, i64 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %23, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ov7x10_mode_init(%struct.i2c_client*, %struct.ovcamchip_window*) #1

declare dso_local i32 @ov_write(%struct.i2c_client*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
