; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_xc5000.c_xc_load_i2c_sequence.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_xc5000.c_xc_load_i2c_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.xc5000_priv* }
%struct.xc5000_priv = type { i32 }

@XC_MAX_I2C_WRITE_LENGTH = common dso_local global i32 0, align 4
@XC_RESULT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @xc_load_i2c_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_load_i2c_sequence(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xc5000_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 0
  %18 = load %struct.xc5000_priv*, %struct.xc5000_priv** %17, align 8
  store %struct.xc5000_priv* %18, %struct.xc5000_priv** %6, align 8
  %19 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %152, %2
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 255
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %12, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 255
  br label %38

38:                                               ; preds = %30, %23
  %39 = phi i1 [ true, %23 ], [ %37, %30 ]
  br i1 %39, label %40, label %153

40:                                               ; preds = %38
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 256
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %46, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %40
  %57 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %58 = call i32 @xc5000_TunerReset(%struct.dvb_frontend* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %12, align 4
  %60 = add i32 %59, 2
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @XC_RESULT_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %155

66:                                               ; preds = %56
  br label %152

67:                                               ; preds = %40
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 32768
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 32767
  %74 = call i32 @xc_wait(i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, 2
  store i32 %76, i32* %12, align 4
  br label %151

77:                                               ; preds = %67
  %78 = load i32, i32* %12, align 4
  %79 = add i32 %78, 2
  store i32 %79, i32* %12, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %84, i32* %85, align 16
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %91, i32* %92, align 4
  store i32 2, i32* %11, align 4
  br label %93

93:                                               ; preds = %142, %77
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %147

97:                                               ; preds = %93
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub i32 %98, %99
  %101 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  %102 = sub nsw i32 %101, 2
  %103 = icmp ugt i32 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @XC_MAX_I2C_WRITE_LENGTH, align 4
  store i32 %105, i32* %8, align 4
  br label %111

106:                                              ; preds = %97
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sub i32 %107, %108
  %110 = add i32 %109, 2
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %106, %104
  store i32 2, i32* %7, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %118, %119
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %120, %121
  %123 = sub i32 %122, 2
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %117, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %22, i64 %128
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %116
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %112

133:                                              ; preds = %112
  %134 = load %struct.xc5000_priv*, %struct.xc5000_priv** %6, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @xc_send_i2c_data(%struct.xc5000_priv* %134, i32* %22, i32 %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @XC_RESULT_SUCCESS, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %155

142:                                              ; preds = %133
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %143, 2
  %145 = load i32, i32* %11, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %93

147:                                              ; preds = %93
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %12, align 4
  %150 = add i32 %149, %148
  store i32 %150, i32* %12, align 4
  br label %151

151:                                              ; preds = %147, %71
  br label %152

152:                                              ; preds = %151, %66
  br label %23

153:                                              ; preds = %38
  %154 = load i32, i32* @XC_RESULT_SUCCESS, align 4
  store i32 %154, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %155

155:                                              ; preds = %153, %140, %64
  %156 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xc5000_TunerReset(%struct.dvb_frontend*) #2

declare dso_local i32 @xc_wait(i32) #2

declare dso_local i32 @xc_send_i2c_data(%struct.xc5000_priv*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
