; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_lock_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_lock_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10023_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@__const.lock_tuner.buf = private unnamed_addr constant [2 x i32] [i32 15, i32 192], align 4
@.str = private unnamed_addr constant [28 x i8] c"tda10023: lock tuner fails\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda10023_state*)* @lock_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_tuner(%struct.tda10023_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tda10023_state*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca %struct.i2c_msg, align 8
  store %struct.tda10023_state* %0, %struct.tda10023_state** %3, align 8
  %6 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast ([2 x i32]* @__const.lock_tuner.buf to i8*), i64 8, i1 false)
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 0
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32* %8, i32** %7, align 8
  %9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 1
  store i32 2, i32* %9, align 8
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %5, i32 0, i32 3
  %12 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %13 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 8
  %17 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %18 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @i2c_transfer(i32 %19, %struct.i2c_msg* %5, i32 1)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EREMOTEIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @printk(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
