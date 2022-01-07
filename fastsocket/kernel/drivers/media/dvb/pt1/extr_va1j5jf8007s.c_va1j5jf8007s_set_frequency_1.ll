; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_set_frequency_1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_set_frequency_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.va1j5jf8007s_state = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.va1j5jf8007s_state*)* @va1j5jf8007s_set_frequency_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va1j5jf8007s_set_frequency_1(%struct.va1j5jf8007s_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.va1j5jf8007s_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [6 x i32], align 16
  %7 = alloca %struct.i2c_msg, align 8
  store %struct.va1j5jf8007s_state* %0, %struct.va1j5jf8007s_state** %3, align 8
  %8 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %3, align 8
  %9 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 500
  %15 = sdiv i32 %14, 1000
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 1072000
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 1
  %21 = and i32 %20, -32
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 15
  %24 = or i32 %21, %23
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %18, %1
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 254, i32* %26, align 16
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 192, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 8
  %30 = or i32 64, %29
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 224, i32* %34, align 16
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @va1j5jf8007s_lookup_cb(i32 %35)
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 %36, i32* %37, align 4
  %38 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %3, align 8
  %39 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0
  store i32 24, i32* %45, align 8
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 1
  store i32* %46, i32** %47, align 8
  %48 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %3, align 8
  %49 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @i2c_transfer(i32 %50, %struct.i2c_msg* %7, i32 1)
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %56

53:                                               ; preds = %25
  %54 = load i32, i32* @EREMOTEIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @va1j5jf8007s_lookup_cb(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
