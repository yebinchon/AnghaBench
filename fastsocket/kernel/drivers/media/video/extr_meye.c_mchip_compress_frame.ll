; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_mchip_compress_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_mchip_compress_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCHIP_HIC_MODE = common dso_local global i32 0, align 4
@MCHIP_HIC_MODE_STILL_COMP = common dso_local global i32 0, align 4
@MCHIP_HIC_CMD = common dso_local global i32 0, align 4
@MCHIP_HIC_CMD_START = common dso_local global i32 0, align 4
@MCHIP_HIC_STATUS = common dso_local global i32 0, align 4
@MCHIP_HIC_STATUS_IDLE = common dso_local global i32 0, align 4
@MCHIP_MM_FIR_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mchip_compress_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchip_compress_frame(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %8 = call i32 @mchip_vrj_setup(i32 63)
  %9 = call i32 @udelay(i32 50)
  %10 = load i32, i32* @MCHIP_HIC_MODE, align 4
  %11 = load i32, i32* @MCHIP_HIC_MODE_STILL_COMP, align 4
  %12 = call i32 @mchip_set(i32 %10, i32 %11)
  %13 = load i32, i32* @MCHIP_HIC_CMD, align 4
  %14 = load i32, i32* @MCHIP_HIC_CMD_START, align 4
  %15 = call i32 @mchip_set(i32 %13, i32 %14)
  %16 = load i32, i32* @MCHIP_HIC_CMD, align 4
  %17 = call i64 @mchip_delay(i32 %16, i32 0)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %29, %2
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 100
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* @MCHIP_HIC_STATUS, align 4
  %23 = load i32, i32* @MCHIP_HIC_STATUS_IDLE, align 4
  %24 = call i64 @mchip_delay(i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %32

27:                                               ; preds = %21
  %28 = call i32 @msleep(i32 1)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %18

32:                                               ; preds = %26, %18
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = call i32 (...) @mchip_get_frame()
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MCHIP_MM_FIR_RDY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @mchip_comp_read_frame(i32 %43, i32* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %52

47:                                               ; preds = %36
  %48 = call i32 (...) @mchip_free_frame()
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %33

52:                                               ; preds = %42, %33
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @mchip_vrj_setup(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mchip_set(i32, i32) #1

declare dso_local i64 @mchip_delay(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mchip_get_frame(...) #1

declare dso_local i32 @mchip_comp_read_frame(i32, i32*, i32) #1

declare dso_local i32 @mchip_free_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
