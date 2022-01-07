; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-i2c.c_cx18_setsda.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-i2c.c_cx18_setsda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }
%struct.cx18_i2c_algo_callback_data = type { i32, %struct.cx18* }

@CX18_REG_I2C_2_WR = common dso_local global i32 0, align 4
@CX18_REG_I2C_1_WR = common dso_local global i32 0, align 4
@SETSDL_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @cx18_setsda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_setsda(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.cx18_i2c_algo_callback_data*
  %11 = getelementptr inbounds %struct.cx18_i2c_algo_callback_data, %struct.cx18_i2c_algo_callback_data* %10, i32 0, i32 1
  %12 = load %struct.cx18*, %struct.cx18** %11, align 8
  store %struct.cx18* %12, %struct.cx18** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.cx18_i2c_algo_callback_data*
  %15 = getelementptr inbounds %struct.cx18_i2c_algo_callback_data, %struct.cx18_i2c_algo_callback_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @CX18_REG_I2C_2_WR, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @CX18_REG_I2C_1_WR, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %7, align 4
  %25 = load %struct.cx18*, %struct.cx18** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @cx18_read_reg(%struct.cx18* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.cx18*, %struct.cx18** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SETSDL_BIT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @cx18_write_reg(%struct.cx18* %31, i32 %34, i32 %35)
  br label %45

37:                                               ; preds = %23
  %38 = load %struct.cx18*, %struct.cx18** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SETSDL_BIT, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @cx18_write_reg(%struct.cx18* %38, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %37, %30
  ret void
}

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
