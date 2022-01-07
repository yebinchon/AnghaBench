; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pcf.c_pcf_doAddress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pcf.c_pcf_doAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_algo_pcf_data = type { i32 }
%struct.i2c_msg = type { i16, i32 }

@I2C_M_RD = common dso_local global i16 0, align 2
@I2C_M_REV_DIR_ADDR = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_algo_pcf_data*, %struct.i2c_msg*)* @pcf_doAddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_doAddress(%struct.i2c_algo_pcf_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.i2c_algo_pcf_data*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  store %struct.i2c_algo_pcf_data* %0, %struct.i2c_algo_pcf_data** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 4
  store i16 %9, i16* %5, align 2
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 1
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %6, align 1
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @I2C_M_RD, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i8, i8* %6, align 1
  %23 = zext i8 %22 to i32
  %24 = or i32 %23, 1
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %6, align 1
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @I2C_M_REV_DIR_ADDR, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i8, i8* %6, align 1
  %35 = zext i8 %34 to i32
  %36 = xor i32 %35, 1
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %6, align 1
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %3, align 8
  %40 = load i8, i8* %6, align 1
  %41 = call i32 @i2c_outb(%struct.i2c_algo_pcf_data* %39, i8 zeroext %40)
  ret i32 0
}

declare dso_local i32 @i2c_outb(%struct.i2c_algo_pcf_data*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
