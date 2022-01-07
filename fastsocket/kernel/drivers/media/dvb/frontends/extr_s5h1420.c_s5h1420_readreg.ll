; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_readreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5h1420_state = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5h1420_state*, i32)* @s5h1420_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_readreg(%struct.s5h1420_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5h1420_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [3 x %struct.i2c_msg], align 16
  store %struct.s5h1420_state* %0, %struct.s5h1420_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %8, i64 0, i64 0
  %10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 0
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32* %11, i32** %10, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 1
  store i32 2, i32* %12, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3
  %15 = load %struct.s5h1420_state*, %struct.s5h1420_state** %4, align 8
  %16 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %14, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i64 1
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 0
  store i32* %5, i32** %21, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 3
  %25 = load %struct.s5h1420_state*, %struct.s5h1420_state** %4, align 8
  %26 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %24, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i64 1
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 2
  %35 = load i32, i32* @I2C_M_RD, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i32 0, i32 3
  %37 = load %struct.s5h1420_state*, %struct.s5h1420_state** %4, align 8
  %38 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %36, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 %42, 1
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.s5h1420_state*, %struct.s5h1420_state** %4, align 8
  %47 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sub nsw i32 %49, 1
  %51 = and i32 %50, 255
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.s5h1420_state*, %struct.s5h1420_state** %4, align 8
  %57 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %2
  %63 = load %struct.s5h1420_state*, %struct.s5h1420_state** %4, align 8
  %64 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %8, i64 0, i64 0
  %67 = call i32 @i2c_transfer(i32 %65, %struct.i2c_msg* %66, i32 3)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 3
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %97

72:                                               ; preds = %62
  br label %94

73:                                               ; preds = %2
  %74 = load %struct.s5h1420_state*, %struct.s5h1420_state** %4, align 8
  %75 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %8, i64 0, i64 1
  %78 = call i32 @i2c_transfer(i32 %76, %struct.i2c_msg* %77, i32 1)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %97

83:                                               ; preds = %73
  %84 = load %struct.s5h1420_state*, %struct.s5h1420_state** %4, align 8
  %85 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %8, i64 0, i64 2
  %88 = call i32 @i2c_transfer(i32 %86, %struct.i2c_msg* %87, i32 1)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %97

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %72
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %94, %91, %81, %70
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
