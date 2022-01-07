; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dibx000_common.c_dibx000_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dibx000_common.c_dibx000_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dibx000_i2c_master = type { i64, i32 }

@DIB7000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dibx000_i2c_master*, i32*, i32, i32)* @dibx000_i2c_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dibx000_i2c_master*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dibx000_i2c_master* %0, %struct.dibx000_i2c_master** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = shl i32 %13, 8
  store i32 %14, i32* %9, align 4
  br label %16

15:                                               ; preds = %4
  store i32 128, i32* %9, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %18 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DIB7000, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %16
  %26 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %27 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %5, align 8
  %35 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = and i32 %37, 255
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 8
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  store i32 %46, i32* %48, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
