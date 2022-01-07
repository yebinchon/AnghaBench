; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007t.c_va1j5jf8007t_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007t.c_va1j5jf8007t_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.va1j5jf8007t_state* }
%struct.va1j5jf8007t_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@va1j5jf8007t_20mhz_prepare_bufs = common dso_local global i32** null, align 8
@va1j5jf8007t_25mhz_prepare_bufs = common dso_local global i32** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @va1j5jf8007t_prepare(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.va1j5jf8007t_state*, align 8
  %5 = alloca [2 x i32]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %11, align 8
  store %struct.va1j5jf8007t_state* %12, %struct.va1j5jf8007t_state** %4, align 8
  %13 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %4, align 8
  %14 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %28 [
    i32 129, label %18
    i32 128, label %23
  ]

18:                                               ; preds = %1
  %19 = load i32**, i32*** @va1j5jf8007t_20mhz_prepare_bufs, align 8
  %20 = bitcast i32** %19 to [2 x i32]*
  store [2 x i32]* %20, [2 x i32]** %5, align 8
  %21 = load i32**, i32*** @va1j5jf8007t_20mhz_prepare_bufs, align 8
  %22 = call i32 @ARRAY_SIZE(i32** %21)
  store i32 %22, i32* %6, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32**, i32*** @va1j5jf8007t_25mhz_prepare_bufs, align 8
  %25 = bitcast i32** %24 to [2 x i32]*
  store [2 x i32]* %25, [2 x i32]** %5, align 8
  %26 = load i32**, i32*** @va1j5jf8007t_25mhz_prepare_bufs, align 8
  %27 = call i32 @ARRAY_SIZE(i32** %26)
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %69

31:                                               ; preds = %23, %18
  %32 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %4, align 8
  %33 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 8, i32* %39, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32* %40, i32** %41, align 8
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %63, %31
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %48 = load [2 x i32]*, [2 x i32]** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %48, i64 %50
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0, i64 0
  %53 = call i32 @memcpy(i32* %47, i32* %52, i32 8)
  %54 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %4, align 8
  %55 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @i2c_transfer(i32 %56, %struct.i2c_msg* %8, i32 1)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* @EREMOTEIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %4, align 8
  %68 = call i32 @va1j5jf8007t_init_frequency(%struct.va1j5jf8007t_state* %67)
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %59, %28
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @va1j5jf8007t_init_frequency(%struct.va1j5jf8007t_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
