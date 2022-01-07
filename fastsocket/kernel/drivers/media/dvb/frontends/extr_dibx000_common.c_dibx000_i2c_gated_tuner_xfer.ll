; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dibx000_common.c_dibx000_i2c_gated_tuner_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dibx000_common.c_dibx000_i2c_gated_tuner_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32 }
%struct.dibx000_i2c_master = type { i32, i32 }

@DIBX000_I2C_INTERFACE_TUNER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dibx000_i2c_gated_tuner_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dibx000_i2c_gated_tuner_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dibx000_i2c_master*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca [4 x i32], align 16
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %13 = call %struct.dibx000_i2c_master* @i2c_get_adapdata(%struct.i2c_adapter* %12)
  store %struct.dibx000_i2c_master* %13, %struct.dibx000_i2c_master** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 2, %14
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca %struct.i2c_msg, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 2, %19
  %21 = sext i32 %20 to i64
  %22 = mul i64 24, %21
  %23 = trunc i64 %22 to i32
  %24 = call i32 @memset(%struct.i2c_msg* %18, i32 0, i32 %23)
  %25 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %7, align 8
  %26 = load i32, i32* @DIBX000_I2C_INTERFACE_TUNER, align 4
  %27 = call i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master* %25, i32 %26)
  %28 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %7, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %30 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %30, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %28, i32* %29, i32 %33, i32 1)
  %35 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %7, align 8
  %36 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 16
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 0
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 0
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 0
  store i32 4, i32* %44, align 16
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 1
  %46 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 24, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(%struct.i2c_msg* %45, %struct.i2c_msg* %46, i32 %50)
  %52 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %7, align 8
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %54 = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %52, i32* %53, i32 0, i32 0)
  %55 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %7, align 8
  %56 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 %60
  %62 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %61, i32 0, i32 2
  store i32 %57, i32* %62, align 8
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 %66
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  store i32* %63, i32** %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i64 %71
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %72, i32 0, i32 0
  store i32 4, i32* %73, align 8
  %74 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %7, align 8
  %75 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 2, %77
  %79 = call i32 @i2c_transfer(i32 %76, %struct.i2c_msg* %18, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 2, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %3
  %84 = load i32, i32* %6, align 4
  br label %88

85:                                               ; preds = %3
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  br label %88

88:                                               ; preds = %85, %83
  %89 = phi i32 [ %84, %83 ], [ %87, %85 ]
  %90 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %90)
  ret i32 %89
}

declare dso_local %struct.dibx000_i2c_master* @i2c_get_adapdata(%struct.i2c_adapter*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master*, i32) #1

declare dso_local i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master*, i32*, i32, i32) #1

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
