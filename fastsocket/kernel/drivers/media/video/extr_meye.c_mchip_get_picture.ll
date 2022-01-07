; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_mchip_get_picture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_meye.c_mchip_get_picture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCHIP_HIC_MODE = common dso_local global i32 0, align 4
@MCHIP_HIC_MODE_STILL_OUT = common dso_local global i32 0, align 4
@MCHIP_HIC_CMD = common dso_local global i32 0, align 4
@MCHIP_HIC_CMD_START = common dso_local global i32 0, align 4
@MCHIP_HIC_STATUS = common dso_local global i32 0, align 4
@MCHIP_HIC_STATUS_IDLE = common dso_local global i32 0, align 4
@MCHIP_MM_FIR_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @mchip_get_picture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mchip_get_picture(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @MCHIP_HIC_MODE, align 4
  %8 = load i32, i32* @MCHIP_HIC_MODE_STILL_OUT, align 4
  %9 = call i32 @mchip_set(i32 %7, i32 %8)
  %10 = load i32, i32* @MCHIP_HIC_CMD, align 4
  %11 = load i32, i32* @MCHIP_HIC_CMD_START, align 4
  %12 = call i32 @mchip_set(i32 %10, i32 %11)
  %13 = load i32, i32* @MCHIP_HIC_CMD, align 4
  %14 = call i64 @mchip_delay(i32 %13, i32 0)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %26, %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 100
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load i32, i32* @MCHIP_HIC_STATUS, align 4
  %20 = load i32, i32* @MCHIP_HIC_STATUS_IDLE, align 4
  %21 = call i64 @mchip_delay(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %29

24:                                               ; preds = %18
  %25 = call i32 @msleep(i32 1)
  br label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %15

29:                                               ; preds = %23, %15
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = call i32 (...) @mchip_get_frame()
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MCHIP_MM_FIR_RDY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @mchip_cont_read_frame(i32 %40, i32* %41, i32 %42)
  br label %49

44:                                               ; preds = %33
  %45 = call i32 (...) @mchip_free_frame()
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %30

49:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @mchip_set(i32, i32) #1

declare dso_local i64 @mchip_delay(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mchip_get_frame(...) #1

declare dso_local i32 @mchip_cont_read_frame(i32, i32*, i32) #1

declare dso_local i32 @mchip_free_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
