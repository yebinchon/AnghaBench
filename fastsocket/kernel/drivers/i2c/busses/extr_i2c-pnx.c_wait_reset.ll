; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pnx.c_wait_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-pnx.c_wait_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_pnx_algo_data = type { i32 }

@mcntrl_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.i2c_pnx_algo_data*)* @wait_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_reset(i64 %0, %struct.i2c_pnx_algo_data* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.i2c_pnx_algo_data*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.i2c_pnx_algo_data* %1, %struct.i2c_pnx_algo_data** %4, align 8
  br label %5

5:                                                ; preds = %17, %2
  %6 = load i64, i64* %3, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load %struct.i2c_pnx_algo_data*, %struct.i2c_pnx_algo_data** %4, align 8
  %10 = call i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data* %9)
  %11 = call i32 @ioread32(i32 %10)
  %12 = load i32, i32* @mcntrl_reset, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %8, %5
  %16 = phi i1 [ false, %5 ], [ %14, %8 ]
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = call i32 @mdelay(i32 1)
  %19 = load i64, i64* %3, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %3, align 8
  br label %5

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = icmp sle i64 %22, 0
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @I2C_REG_CTL(%struct.i2c_pnx_algo_data*) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
