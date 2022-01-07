; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_set_hsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tw9910.c_tw9910_set_hsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tw9910_hsync_ctrl = type { i32, i32 }
%struct.tw9910_priv = type { i32 }

@HSBEGIN = common dso_local global i32 0, align 4
@HSEND = common dso_local global i32 0, align 4
@HSLOWCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.tw9910_hsync_ctrl*)* @tw9910_set_hsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_set_hsync(%struct.i2c_client* %0, %struct.tw9910_hsync_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tw9910_hsync_ctrl*, align 8
  %6 = alloca %struct.tw9910_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.tw9910_hsync_ctrl* %1, %struct.tw9910_hsync_ctrl** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.tw9910_priv* @to_tw9910(%struct.i2c_client* %8)
  store %struct.tw9910_priv* %9, %struct.tw9910_priv** %6, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* @HSBEGIN, align 4
  %12 = load %struct.tw9910_hsync_ctrl*, %struct.tw9910_hsync_ctrl** %5, align 8
  %13 = getelementptr inbounds %struct.tw9910_hsync_ctrl, %struct.tw9910_hsync_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 2040
  %16 = ashr i32 %15, 3
  %17 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %10, i32 %11, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @HSEND, align 4
  %25 = load %struct.tw9910_hsync_ctrl*, %struct.tw9910_hsync_ctrl** %5, align 8
  %26 = getelementptr inbounds %struct.tw9910_hsync_ctrl, %struct.tw9910_hsync_ctrl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 2040
  %29 = ashr i32 %28, 3
  %30 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %23, i32 %24, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %22
  %36 = load %struct.tw9910_priv*, %struct.tw9910_priv** %6, align 8
  %37 = getelementptr inbounds %struct.tw9910_priv, %struct.tw9910_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 1, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @HSLOWCTL, align 4
  %43 = load %struct.tw9910_hsync_ctrl*, %struct.tw9910_hsync_ctrl** %5, align 8
  %44 = getelementptr inbounds %struct.tw9910_hsync_ctrl, %struct.tw9910_hsync_ctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 7
  %47 = shl i32 %46, 4
  %48 = load %struct.tw9910_hsync_ctrl*, %struct.tw9910_hsync_ctrl** %5, align 8
  %49 = getelementptr inbounds %struct.tw9910_hsync_ctrl, %struct.tw9910_hsync_ctrl* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 7
  %52 = or i32 %47, %51
  %53 = call i32 @tw9910_mask_set(%struct.i2c_client* %41, i32 %42, i32 119, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %40, %35
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %33, %20
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.tw9910_priv* @to_tw9910(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @tw9910_mask_set(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
