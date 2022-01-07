; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_read_snr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/pt1/extr_va1j5jf8007s.c_va1j5jf8007s_read_snr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.va1j5jf8007s_state* }
%struct.va1j5jf8007s_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@I2C_M_RD = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @va1j5jf8007s_read_snr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va1j5jf8007s_read_snr(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.va1j5jf8007s_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %20, align 8
  store %struct.va1j5jf8007s_state* %21, %struct.va1j5jf8007s_state** %6, align 8
  %22 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %23 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %71, %2
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %74

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 188, %31
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 16
  %37 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 3
  store i64 0, i64* %38, align 16
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  store i32 4, i32* %40, align 4
  %41 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* @I2C_M_RD, align 8
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 1
  store i32 4, i32* %51, align 4
  %52 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %53 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load %struct.va1j5jf8007s_state*, %struct.va1j5jf8007s_state** %6, align 8
  %56 = getelementptr inbounds %struct.va1j5jf8007s_state, %struct.va1j5jf8007s_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %59 = call i32 @i2c_transfer(i32 %57, %struct.i2c_msg* %58, i32 2)
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %30
  %62 = load i32, i32* @EREMOTEIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %151

64:                                               ; preds = %30
  %65 = load i32, i32* %12, align 4
  %66 = shl i32 %65, 8
  store i32 %66, i32* %12, align 4
  %67 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %27

74:                                               ; preds = %27
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 3000
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %12, align 4
  %82 = shl i32 %81, 16
  %83 = call i64 @int_sqrt(i32 %82)
  %84 = mul nsw i64 %83, 32768
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = mul nsw i32 %86, %87
  %89 = ashr i32 %88, 31
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = mul nsw i32 %90, %91
  %93 = ashr i32 %92, 31
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = mul nsw i32 %94, %95
  %97 = ashr i32 %96, 31
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 %98, %99
  %101 = ashr i32 %100, 31
  store i32 %101, i32* %17, align 4
  store i32 493728301, i32* %18, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, 1502651351
  %105 = ashr i64 %104, 30
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, 1492786348
  %113 = ashr i64 %112, 28
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %119, 1686412197
  %121 = ashr i64 %120, 27
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %127, 1924816437
  %129 = ashr i64 %128, 27
  %130 = load i32, i32* %18, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, 1755138385
  %137 = ashr i64 %136, 28
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %80
  br label %148

145:                                              ; preds = %80
  %146 = load i32, i32* %18, align 4
  %147 = ashr i32 %146, 15
  br label %148

148:                                              ; preds = %145, %144
  %149 = phi i32 [ 0, %144 ], [ %147, %145 ]
  %150 = load i32*, i32** %5, align 8
  store i32 %149, i32* %150, align 4
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %148, %61
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i64 @int_sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
