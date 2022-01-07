; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_reg_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9m001.c_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32)* @reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_read(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @i2c_smbus_read_word_data(%struct.i2c_client* %6, i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @swab16(i64 %14)
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  %19 = trunc i64 %18 to i32
  ret i32 %19
}

declare dso_local i64 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @swab16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
