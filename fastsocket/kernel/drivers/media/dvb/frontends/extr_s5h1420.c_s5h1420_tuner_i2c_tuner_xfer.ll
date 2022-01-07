; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_tuner_i2c_tuner_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_s5h1420.c_s5h1420_tuner_i2c_tuner_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32 }
%struct.s5h1420_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CON_1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @s5h1420_tuner_i2c_tuner_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5h1420_tuner_i2c_tuner_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s5h1420_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i32], align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call %struct.s5h1420_state* @i2c_get_adapdata(%struct.i2c_adapter* %11)
  store %struct.s5h1420_state* %12, %struct.s5h1420_state** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 1, %13
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca %struct.i2c_msg, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %19 = load i32, i32* @CON_1, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds i32, i32* %18, i64 1
  %21 = load %struct.s5h1420_state*, %struct.s5h1420_state** %7, align 8
  %22 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, 1
  store i32 %24, i32* %20, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 1, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 16, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(%struct.i2c_msg* %17, i32 0, i32 %29)
  %31 = load %struct.s5h1420_state*, %struct.s5h1420_state** %7, align 8
  %32 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 16
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 0
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  store i32 2, i32* %42, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 1
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 16, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(%struct.i2c_msg* %43, %struct.i2c_msg* %44, i32 %48)
  %50 = load %struct.s5h1420_state*, %struct.s5h1420_state** %7, align 8
  %51 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 1, %53
  %55 = call i32 @i2c_transfer(i32 %52, %struct.i2c_msg* %17, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 1, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %3
  %60 = load i32, i32* %6, align 4
  br label %64

61:                                               ; preds = %3
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i32 [ %60, %59 ], [ %63, %61 ]
  %66 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %66)
  ret i32 %65
}

declare dso_local %struct.s5h1420_state* @i2c_get_adapdata(%struct.i2c_adapter*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.i2c_msg*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
