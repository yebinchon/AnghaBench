; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_write_word.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000m.c_dib7000m_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000m_state = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000m_state*, i32, i32)* @dib7000m_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7000m_write_word(%struct.dib7000m_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dib7000m_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_msg, align 8
  store %struct.dib7000m_state* %0, %struct.dib7000m_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds i32, i32* %9, i64 1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 255
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds i32, i32* %16, i64 1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  %24 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %25 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %23, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32* %29, i32** %28, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32 4, i32* %30, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = load %struct.dib7000m_state*, %struct.dib7000m_state** %4, align 8
  %33 = getelementptr inbounds %struct.dib7000m_state, %struct.dib7000m_state* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @i2c_transfer(i32 %34, %struct.i2c_msg* %8, i32 1)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EREMOTEIO, align 4
  %39 = sub nsw i32 0, %38
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  ret i32 %42
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
