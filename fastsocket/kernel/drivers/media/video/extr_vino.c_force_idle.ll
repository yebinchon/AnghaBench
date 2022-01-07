; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_force_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_force_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_sgi_data = type { i32, i32 (i32)*, i32, i32 (i32, i32)* }

@SGI_I2C_FORCE_IDLE = common dso_local global i32 0, align 4
@SGI_I2C_NOT_IDLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@SGI_I2C_BUS_ERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_sgi_data*)* @force_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_idle(%struct.i2c_algo_sgi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_algo_sgi_data*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_algo_sgi_data* %0, %struct.i2c_algo_sgi_data** %3, align 8
  %5 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %6 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %5, i32 0, i32 3
  %7 = load i32 (i32, i32)*, i32 (i32, i32)** %6, align 8
  %8 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SGI_I2C_FORCE_IDLE, align 4
  %12 = call i32 %7(i32 %10, i32 %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %33, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %20, i32 0, i32 1
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %24 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  %27 = load i32, i32* @SGI_I2C_NOT_IDLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %39

31:                                               ; preds = %19
  %32 = call i32 @udelay(i32 1)
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %30
  %40 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %41 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %40, i32 0, i32 1
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %3, align 8
  %44 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(i32 %45)
  %47 = load i32, i32* @SGI_I2C_BUS_ERR, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %50, %36
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
