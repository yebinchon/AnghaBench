; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_module.c_s921_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s921_module.c_s921_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s921_state = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @s921_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s921_read(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s921_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.s921_state*
  store %struct.s921_state* %11, %struct.s921_state** %6, align 8
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  store i32* %5, i32** %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %17 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %18 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i64 1
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  store i32* %7, i32** %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  %24 = load i32, i32* @I2C_M_RD, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  %26 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %27 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 8
  %29 = load %struct.s921_state*, %struct.s921_state** %6, align 8
  %30 = getelementptr inbounds %struct.s921_state, %struct.s921_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %33 = call i32 @i2c_transfer(i32 %31, %struct.i2c_msg* %32, i32 2)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
