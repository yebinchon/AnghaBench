; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_set_ts_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_set_ts_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.va1j5jf8007s_state = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.va1j5jf8007s_state*)* @va1j5jf8007s_set_ts_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va1j5jf8007s_set_ts_id(%struct.va1j5jf8007s_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.va1j5jf8007s_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca %struct.i2c_msg, align 8
  store %struct.va1j5jf8007s_state* %0, %struct.va1j5jf8007s_state** %3, align 8
  %7 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %3, align 8
  %8 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 143, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 8
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %20, i32* %21, align 4
  %22 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %3, align 8
  %23 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  store i32 12, i32* %29, align 8
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1
  store i32* %30, i32** %31, align 8
  %32 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %3, align 8
  %33 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @i2c_transfer(i32 %34, %struct.i2c_msg* %6, i32 1)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %15
  %38 = load i32, i32* @EREMOTEIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %37, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
