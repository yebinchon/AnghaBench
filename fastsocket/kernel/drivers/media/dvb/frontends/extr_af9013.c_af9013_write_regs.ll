; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_af9013.c_af9013_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_af9013.c_af9013_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.af9013_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"I2C write failed reg:%04x len:%d\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.af9013_state*, i32, i32, i32*, i32)* @af9013_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9013_write_regs(%struct.af9013_state* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.af9013_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.i2c_msg, align 8
  %15 = alloca i32, align 4
  store %struct.af9013_state* %0, %struct.af9013_state** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = add nsw i32 3, %16
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %22 = mul nuw i64 4, %18
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i32* %20, i32** %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %27 = load %struct.af9013_state*, %struct.af9013_state** %7, align 8
  %28 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 8
  %33 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds i32, i32* %20, i64 3
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @memcpy(i32* %39, i32* %40, i32 %41)
  %43 = load %struct.af9013_state*, %struct.af9013_state** %7, align 8
  %44 = getelementptr inbounds %struct.af9013_state, %struct.af9013_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @i2c_transfer(i32 %45, %struct.i2c_msg* %14, i32 1)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %5
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i32, i32* @EREMOTEIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %55

54:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %55

55:                                               ; preds = %54, %48
  %56 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @warn(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
