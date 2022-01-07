; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_read_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"i2c read error on %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*, i32)* @dib7000m_read_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_read_word(%struct.dib7000m_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000m_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* %4, align 4
  %10 = ashr i32 %9, 8
  %11 = or i32 %10, 128
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds i32, i32* %8, i64 1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %12, align 4
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %18 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 1
  store i32 %20, i32* %16, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 2, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  %27 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %28 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %26, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  store i32 2, i32* %33, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  %35 = load i32, i32* @I2C_M_RD, align 4
  store i32 %35, i32* %34, align 4
  %36 = load %struct.dib7000m_state*, %struct.dib7000m_state** %3, align 8
  %37 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %7, i64 0, i64 0
  %40 = call i32 @i2c_transfer(i32 %38, %struct.i2c_msg* %39, i32 2)
  %41 = icmp ne i32 %40, 2
  br i1 %41, label %42, label %45

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %2
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 8
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %48, %50
  ret i32 %51
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
