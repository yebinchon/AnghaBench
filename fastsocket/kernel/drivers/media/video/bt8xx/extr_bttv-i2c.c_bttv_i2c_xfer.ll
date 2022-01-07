; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-i2c.c_bttv_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-i2c.c_bttv_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.bttv = type { i32 }

@i2c_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"bt-i2c:\00", align 1
@BT848_INT_I2CDONE = common dso_local global i32 0, align 4
@BT848_INT_RACK = common dso_local global i32 0, align 4
@BT848_INT_STAT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @bttv_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bttv_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_device*, align 8
  %9 = alloca %struct.bttv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call %struct.v4l2_device* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.v4l2_device* %13, %struct.v4l2_device** %8, align 8
  %14 = load %struct.v4l2_device*, %struct.v4l2_device** %8, align 8
  %15 = call %struct.bttv* @to_bttv(%struct.v4l2_device* %14)
  store %struct.bttv* %15, %struct.bttv** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i64, i64* @i2c_debug, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @printk(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %3
  %21 = load i32, i32* @BT848_INT_I2CDONE, align 4
  %22 = load i32, i32* @BT848_INT_RACK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @BT848_INT_STAT, align 4
  %25 = call i32 @btwrite(i32 %23, i32 %24)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %73, %20
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i64 %33
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I2C_M_RD, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %30
  %41 = load %struct.bttv*, %struct.bttv** %9, align 8
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @bttv_i2c_readbytes(%struct.bttv* %41, %struct.i2c_msg* %45, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %78

55:                                               ; preds = %40
  br label %72

56:                                               ; preds = %30
  %57 = load %struct.bttv*, %struct.bttv** %9, align 8
  %58 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i64 %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %7, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @bttv_i2c_sendbytes(%struct.bttv* %57, %struct.i2c_msg* %61, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %78

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %26

76:                                               ; preds = %26
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %70, %54
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.v4l2_device* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local %struct.bttv* @to_bttv(%struct.v4l2_device*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @btwrite(i32, i32) #1

declare dso_local i32 @bttv_i2c_readbytes(%struct.bttv*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @bttv_i2c_sendbytes(%struct.bttv*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
