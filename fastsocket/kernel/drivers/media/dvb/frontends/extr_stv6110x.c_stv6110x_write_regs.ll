; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_write_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv6110x.c_stv6110x_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv6110x_state = type { i32, %struct.stv6110x_config* }
%struct.stv6110x_config = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@FE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"I/O Error\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv6110x_state*, i32, i32*, i32)* @stv6110x_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv6110x_write_regs(%struct.stv6110x_state* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stv6110x_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.stv6110x_config*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.i2c_msg, align 8
  %15 = alloca i32, align 4
  store %struct.stv6110x_state* %0, %struct.stv6110x_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %17 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %16, i32 0, i32 1
  %18 = load %struct.stv6110x_config*, %struct.stv6110x_config** %17, align 8
  store %struct.stv6110x_config* %18, %struct.stv6110x_config** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %30 = load %struct.stv6110x_config*, %struct.stv6110x_config** %11, align 8
  %31 = getelementptr inbounds %struct.stv6110x_config, %struct.stv6110x_config* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = icmp sgt i32 %35, 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %59

40:                                               ; preds = %4
  %41 = load i32, i32* %7, align 4
  %42 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %41, i32* %42, align 16
  %43 = getelementptr inbounds i32, i32* %23, i64 1
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @memcpy(i32* %43, i32* %44, i32 %45)
  %47 = load %struct.stv6110x_state*, %struct.stv6110x_state** %6, align 8
  %48 = getelementptr inbounds %struct.stv6110x_state, %struct.stv6110x_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @i2c_transfer(i32 %49, %struct.i2c_msg* %14, i32 1)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %40
  %54 = load i32, i32* @FE_ERROR, align 4
  %55 = call i32 @dprintk(i32 %54, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EREMOTEIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %59

58:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %59

59:                                               ; preds = %58, %53, %37
  %60 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

declare dso_local i32 @dprintk(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
