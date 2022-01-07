; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_do_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_do_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_sgi_data = type { i32 (i32)*, i32, i32 (i32, i32)*, i32 (i32, i32)* }

@SGI_I2C_NOT_IDLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SGI_I2C_HOLD_BUS = common dso_local global i32 0, align 4
@SGI_I2C_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_sgi_data*, i32, i32)* @do_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_address(%struct.i2c_algo_sgi_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_algo_sgi_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_algo_sgi_data* %0, %struct.i2c_algo_sgi_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %11, i32 0, i32 3
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %12, align 8
  %14 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SGI_I2C_NOT_IDLE, align 4
  %18 = call i32 %13(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %10, %3
  %20 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %20, i32 0, i32 0
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  %27 = load i32, i32* @SGI_I2C_NOT_IDLE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %19
  %31 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %32 = call i64 @force_idle(%struct.i2c_algo_sgi_data* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %72

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %39, i32 0, i32 3
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SGI_I2C_HOLD_BUS, align 4
  %46 = load i32, i32* @SGI_I2C_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SGI_I2C_NOT_IDLE, align 4
  %49 = or i32 %47, %48
  %50 = call i32 %41(i32 %44, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %38
  %57 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %57, i32 0, i32 2
  %59 = load i32 (i32, i32)*, i32 (i32, i32)** %58, align 8
  %60 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %61 = getelementptr inbounds %struct.i2c_algo_sgi_data, %struct.i2c_algo_sgi_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 %59(i32 %62, i32 %63)
  %65 = load %struct.i2c_algo_sgi_data*, %struct.i2c_algo_sgi_data** %5, align 8
  %66 = call i64 @wait_ack(%struct.i2c_algo_sgi_data* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %72

71:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %68, %34
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @force_idle(%struct.i2c_algo_sgi_data*) #1

declare dso_local i64 @wait_ack(%struct.i2c_algo_sgi_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
