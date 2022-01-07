; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@REQUEST_SET_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32, i32, i32, i32, i32, i32, i32)* @dib0700_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_set_clock(%struct.dvb_usb_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.dvb_usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [10 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %20 = load i32, i32* @REQUEST_SET_CLOCK, align 4
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* %11, align 4
  %23 = shl i32 %22, 7
  %24 = load i32, i32* %12, align 4
  %25 = shl i32 %24, 6
  %26 = or i32 %23, %25
  %27 = load i32, i32* %13, align 4
  %28 = shl i32 %27, 5
  %29 = or i32 %26, %28
  %30 = load i32, i32* %14, align 4
  %31 = shl i32 %30, 4
  %32 = or i32 %29, %31
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 2
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %15, align 4
  %39 = and i32 %38, 255
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 3
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %16, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 4
  store i32 %43, i32* %44, align 16
  %45 = load i32, i32* %16, align 4
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 5
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %17, align 4
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 255
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 6
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %17, align 4
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 7
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %18, align 4
  %56 = ashr i32 %55, 8
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 8
  store i32 %57, i32* %58, align 16
  %59 = load i32, i32* %18, align 4
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 9
  store i32 %60, i32* %61, align 4
  %62 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %10, align 8
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %19, i64 0, i64 0
  %64 = call i32 @dib0700_ctrl_wr(%struct.dvb_usb_device* %62, i32* %63, i32 10)
  ret i32 %64
}

declare dso_local i32 @dib0700_ctrl_wr(%struct.dvb_usb_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
