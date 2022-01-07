; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_wait_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_wait_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_sgi_data = type { i32, i32 (i32)*, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@SGI_I2C_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_sgi_data*)* @wait_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_ack(%struct.i2c_algo_sgi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_algo_sgi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_algo_sgi_data* %0, %struct.i2c_algo_sgi_data** %3, align 8
  %5 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %6 = call i64 @wait_xfer_done(%struct.i2c_algo_sgi_data* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ETIMEDOUT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %15 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %20 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %19, i32 0, i32 1
  %21 = load i32 (i32)*, i32 (i32)** %20, align 8
  %22 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %21(i32 %24)
  %26 = load i32, i32* @SGI_I2C_NACK, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

30:                                               ; preds = %18
  %31 = call i32 @udelay(i32 1)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %29, %8
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @wait_xfer_done(%struct.i2c_algo_sgi_data*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
