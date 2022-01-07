; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_set_autowhitebalance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m111.c_mt9m111_set_autowhitebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9m111 = type { i32 }

@OPER_MODE_CTRL = common dso_local global i32 0, align 4
@MT9M111_OPMODE_AUTOWHITEBAL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @mt9m111_set_autowhitebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_autowhitebalance(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt9m111*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.mt9m111* @to_mt9m111(%struct.i2c_client* %7)
  store %struct.mt9m111* %8, %struct.mt9m111** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @OPER_MODE_CTRL, align 4
  %13 = load i32, i32* @MT9M111_OPMODE_AUTOWHITEBAL_EN, align 4
  %14 = call i32 @reg_set(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @OPER_MODE_CTRL, align 4
  %17 = load i32, i32* @MT9M111_OPMODE_AUTOWHITEBAL_EN, align 4
  %18 = call i32 @reg_clear(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.mt9m111*, %struct.mt9m111** %5, align 8
  %25 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %6, align 4
  ret i32 %27
}

declare dso_local %struct.mt9m111* @to_mt9m111(%struct.i2c_client*) #1

declare dso_local i32 @reg_set(i32, i32) #1

declare dso_local i32 @reg_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
