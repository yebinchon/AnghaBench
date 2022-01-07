; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv6110x_state = type { i32, %struct.stv6110x_config* }
%struct.stv6110x_config = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O Error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv6110x_state*, i32, i32*)* @stv6110x_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110x_read_reg(%struct.stv6110x_state* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stv6110x_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stv6110x_config*, align 8
  %10 = alloca [1 x i32], align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.stv6110x_state* %0, %struct.stv6110x_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %14 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %13, i32 0, i32 1
  %15 = load %struct.stv6110x_config*, %struct.stv6110x_config** %14, align 8
  store %struct.stv6110x_config* %15, %struct.stv6110x_config** %9, align 8
  %16 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %16, align 4
  %18 = bitcast [1 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 1
  %22 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i32 0, i32 3
  %25 = load %struct.stv6110x_config*, %struct.stv6110x_config** %9, align 8
  %26 = getelementptr inbounds %struct.stv6110x_config, %struct.stv6110x_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 1
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 1
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  store i32* %31, i32** %30, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2
  %33 = load i32, i32* @I2C_M_RD, align 4
  store i32 %33, i32* %32, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 3
  %35 = load %struct.stv6110x_config*, %struct.stv6110x_config** %9, align 8
  %36 = getelementptr inbounds %struct.stv6110x_config, %struct.stv6110x_config* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 4
  %38 = load %struct.stv6110x_state*, %struct.stv6110x_state** %5, align 8
  %39 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %42 = call i32 @i2c_transfer(i32 %40, %struct.i2c_msg* %41, i32 2)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 2
  br i1 %44, label %45, label %50

45:                                               ; preds = %3
  %46 = load i32, i32* @FE_ERROR, align 4
  %47 = call i32 @dprintk(i32 %46, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EREMOTEIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %3
  %51 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @dprintk(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
