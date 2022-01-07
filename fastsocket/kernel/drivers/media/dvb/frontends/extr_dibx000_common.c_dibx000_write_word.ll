; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dibx000_common.c_dibx000_write_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dibx000_common.c_dibx000_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dibx000_i2c_master = type { i32, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dibx000_i2c_master*, i32, i32)* @dibx000_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibx000_write_word(%struct.dibx000_i2c_master* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dibx000_i2c_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  store %struct.dibx000_i2c_master* %0, %struct.dibx000_i2c_master** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds i32, i32* %9, i64 1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds i32, i32* %16, i64 1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 4, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  %28 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %29 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 8
  %31 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %4, align 8
  %32 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @i2c_transfer(i32 %33, %struct.i2c_msg* %8, i32 1)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EREMOTEIO, align 4
  %38 = sub nsw i32 0, %37
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  ret i32 %41
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
