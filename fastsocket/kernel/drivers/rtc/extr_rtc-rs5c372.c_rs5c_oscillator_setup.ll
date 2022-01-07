; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rs5c372.c_rs5c_oscillator_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/rtc/extr_rtc-rs5c372.c_rs5c_oscillator_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs5c372 = type { i32, i32*, i32, i32 }

@RS5C_REG_CTRL2 = common dso_local global i64 0, align 8
@R2025_CTRL2_XST = common dso_local global i32 0, align 4
@RS5C_CTRL2_XSTP = common dso_local global i32 0, align 4
@RS5C_REG_CTRL1 = common dso_local global i64 0, align 8
@RS5C372_CTRL2_24 = common dso_local global i8 0, align 1
@RV5C387_CTRL1_24 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs5c372*)* @rs5c_oscillator_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs5c_oscillator_setup(%struct.rs5c372* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rs5c372*, align 8
  %4 = alloca [2 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rs5c372* %0, %struct.rs5c372** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %9 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 132
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %14 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @R2025_CTRL2_XST, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %147

24:                                               ; preds = %12
  %25 = load i32, i32* @R2025_CTRL2_XST, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %28 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %26
  store i32 %33, i32* %31, align 4
  br label %56

34:                                               ; preds = %1
  %35 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %36 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RS5C_CTRL2_XSTP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %147

46:                                               ; preds = %34
  %47 = load i32, i32* @RS5C_CTRL2_XSTP, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %50 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %48
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %46, %24
  %57 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %58 = call i32 @RS5C_ADDR(i64 %57)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %60 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = trunc i32 %64 to i8
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  store i8 %65, i8* %66, align 1
  %67 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %68 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  store i8 %73, i8* %74, align 1
  %75 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %76 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %98 [
    i32 131, label %78
    i32 130, label %78
    i32 132, label %88
    i32 129, label %88
    i32 128, label %88
  ]

78:                                               ; preds = %56, %56
  %79 = load i8, i8* @RS5C372_CTRL2_24, align 1
  %80 = zext i8 %79 to i32
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = or i32 %83, %80
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %81, align 1
  %86 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %87 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %86, i32 0, i32 2
  store i32 1, i32* %87, align 8
  br label %99

88:                                               ; preds = %56, %56, %56
  %89 = load i8, i8* @RV5C387_CTRL1_24, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = or i32 %93, %90
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %91, align 1
  %96 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %97 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  br label %99

98:                                               ; preds = %56
  br label %99

99:                                               ; preds = %98, %88, %78
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %127, %99
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %102, 2
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %105, %107
  %109 = call i32 @RS5C_ADDR(i64 %108)
  store i32 %109, i32* %5, align 4
  %110 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %111 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = call i32 @i2c_smbus_write_byte_data(i32 %112, i32 %113, i8 zeroext %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %104
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %2, align 4
  br label %147

126:                                              ; preds = %104
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %100

130:                                              ; preds = %100
  %131 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %135 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @RS5C_REG_CTRL1, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %4, i64 0, i64 1
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load %struct.rs5c372*, %struct.rs5c372** %3, align 8
  %143 = getelementptr inbounds %struct.rs5c372, %struct.rs5c372* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @RS5C_REG_CTRL2, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %141, i32* %146, align 4
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %130, %124, %44, %22
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @RS5C_ADDR(i64) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i8 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
