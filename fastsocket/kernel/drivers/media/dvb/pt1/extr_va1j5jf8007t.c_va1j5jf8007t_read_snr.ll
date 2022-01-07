; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007t.c_va1j5jf8007t_read_snr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007t.c_va1j5jf8007t_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.va1j5jf8007t_state* }
%struct.va1j5jf8007t_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@I2C_M_RD = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @va1j5jf8007t_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va1j5jf8007t_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.va1j5jf8007t_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %16, align 8
  store %struct.va1j5jf8007t_state* %17, %struct.va1j5jf8007t_state** %6, align 8
  %18 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %6, align 8
  %19 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %67, %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %70

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 139, %27
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 16
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 3
  store i64 0, i64* %34, align 16
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  store i32 4, i32* %36, align 4
  %37 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i64, i64* @I2C_M_RD, align 8
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 1
  store i32 4, i32* %47, align 4
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %49 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  %51 = load %struct.va1j5jf8007t_state*, %struct.va1j5jf8007t_state** %6, align 8
  %52 = getelementptr inbounds %struct.va1j5jf8007t_state, %struct.va1j5jf8007t_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %55 = call i32 @i2c_transfer(i32 %53, %struct.i2c_msg* %54, i32 2)
  %56 = icmp ne i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %26
  %58 = load i32, i32* @EREMOTEIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %113

60:                                               ; preds = %26
  %61 = load i32, i32* %12, align 4
  %62 = shl i32 %61, 8
  store i32 %62, i32* %12, align 4
  %63 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %23

70:                                               ; preds = %23
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %113

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = sdiv i32 550502400, %77
  %79 = call i32 @intlog10(i32 %78)
  %80 = sub nsw i32 %79, 33554432
  %81 = mul nsw i32 10, %80
  store i32 %81, i32* %13, align 4
  store i32 1688849860, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = ashr i32 %84, 30
  %86 = sext i32 %85 to i64
  %87 = sub nsw i64 %86, 1759218604
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 %89, %90
  %92 = ashr i32 %91, 29
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, 1367517587
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = mul nsw i32 %96, %97
  %99 = ashr i32 %98, 30
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, 294795817
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 %103, %104
  %106 = ashr i32 %105, 30
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, 25975324
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = ashr i32 %110, 15
  %112 = load i32*, i32** %5, align 8
  store i32 %111, i32* %112, align 4
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %76, %73, %57
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @intlog10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
