; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007t.c_va1j5jf8007t_set_modulation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007t.c_va1j5jf8007t_set_modulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.va1j5jf8007t_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.va1j5jf8007t_state*)* @va1j5jf8007t_set_modulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va1j5jf8007t_set_modulation(%struct.va1j5jf8007t_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.va1j5jf8007t_state*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca %struct.i2c_msg, align 8
  store %struct.va1j5jf8007t_state* %0, %struct.va1j5jf8007t_state** %3, align 8
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 1, i32* %6, align 4
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 64, i32* %7, align 4
  %8 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %3, align 8
  %9 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  store i32 8, i32* %15, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  store i32* %16, i32** %17, align 8
  %18 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %3, align 8
  %19 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @i2c_transfer(i32 %20, %struct.i2c_msg* %5, i32 1)
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EREMOTEIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
