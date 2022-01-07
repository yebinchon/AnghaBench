; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-i2c-core.c_do_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-i2c-core.c_do_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*, i32)* @do_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_i2c_probe(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.i2c_msg], align 16
  %6 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 0, i32* %8, align 16
  %9 = load i32, i32* @I2C_M_RD, align 4
  %10 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i64 0, i64* %13, align 16
  %14 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 16
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 0
  %21 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %22 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %5, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %22)
  %24 = call i32 @i2c_transfer(i32* %20, %struct.i2c_msg* %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
