; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_i2c_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_sgi_data = type { i8 (i32)*, i32, i32 (i32, i32)* }

@SGI_I2C_HOLD_BUS = common dso_local global i32 0, align 4
@SGI_I2C_READ = common dso_local global i32 0, align 4
@SGI_I2C_NOT_IDLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SGI_I2C_RELEASE_BUS = common dso_local global i32 0, align 4
@SGI_I2C_FORCE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_sgi_data*, i8*, i32)* @i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_read(%struct.i2c_algo_sgi_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_algo_sgi_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_algo_sgi_data* %0, %struct.i2c_algo_sgi_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %10 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %9, i32 0, i32 2
  %11 = load i32 (i32, i32)*, i32 (i32, i32)** %10, align 8
  %12 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %13 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SGI_I2C_HOLD_BUS, align 4
  %16 = load i32, i32* @SGI_I2C_READ, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @SGI_I2C_NOT_IDLE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 %11(i32 %14, i32 %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %44, %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %27 = call i64 @wait_xfer_done(%struct.i2c_algo_sgi_data* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %58

32:                                               ; preds = %25
  %33 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %33, i32 0, i32 0
  %35 = load i8 (i32)*, i8 (i32)** %34, align 8
  %36 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call zeroext i8 %35(i32 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 %39, i8* %43, align 1
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %48, i32 0, i32 2
  %50 = load i32 (i32, i32)*, i32 (i32, i32)** %49, align 8
  %51 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %52 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SGI_I2C_RELEASE_BUS, align 4
  %55 = load i32, i32* @SGI_I2C_FORCE_IDLE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 %50(i32 %53, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %47, %29
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @wait_xfer_done(%struct.i2c_algo_sgi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
