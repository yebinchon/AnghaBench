; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_drx397xD.c__read16.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_drx397xD.c__read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx397xD_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx397xD_state*, i32)* @_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_read16(%struct.drx397xD_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx397xD_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.drx397xD_state* %0, %struct.drx397xD_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 16, i32* %11, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %13, i32** %12, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %16 = load %struct.drx397xD_state*, %struct.drx397xD_state** %4, align 8
  %17 = getelementptr inbounds %struct.drx397xD_state, %struct.drx397xD_state* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i64 1
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  store i32 4, i32* %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  store i32* %8, i32** %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  %24 = load i32, i32* @I2C_M_RD, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  %26 = load %struct.drx397xD_state*, %struct.drx397xD_state** %4, align 8
  %27 = getelementptr inbounds %struct.drx397xD_state, %struct.drx397xD_state* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %30, i32* %31, align 16
  %32 = load %struct.drx397xD_state*, %struct.drx397xD_state** %4, align 8
  %33 = getelementptr inbounds %struct.drx397xD_state, %struct.drx397xD_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %36 = call i32 @i2c_transfer(i32 %34, %struct.i2c_msg* %35, i32 2)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
