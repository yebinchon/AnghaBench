; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2050_set_if_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2050_set_if_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"mt2050_set_if_freq freq=%d if1=%d if2=%d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"lo1 lo2 = %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"num1 num2 div1a div1b div2a div2b= %x %x %x %x %x %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"bufs is: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 6)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32, i32)* @mt2050_set_if_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt2050_set_if_freq(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.microtune_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [6 x i8], align 1
  %23 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = load %struct.microtune_priv*, %struct.microtune_priv** %25, align 8
  store %struct.microtune_priv* %26, %struct.microtune_priv** %7, align 8
  store i32 1218000000, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add i32 %31, %32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = udiv i32 %34, 1000000
  %36 = mul i32 %35, 1000000
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = udiv i32 %42, 50000
  %44 = mul i32 %43, 50000
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = udiv i32 %45, 4000000
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %10, align 4
  %48 = udiv i32 %47, 4000000
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul i32 %50, 4000000
  %52 = sub i32 %49, %51
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %12, align 4
  %55 = mul i32 %54, 4000000
  %56 = sub i32 %53, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul i32 4, %57
  %59 = udiv i32 %58, 4000000
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %14, align 4
  %61 = udiv i32 %60, 1000
  %62 = mul i32 4096, %61
  %63 = udiv i32 %62, 4000
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %11, align 4
  %65 = udiv i32 %64, 12
  %66 = sub i32 %65, 1
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %17, align 4
  %69 = add i32 %68, 1
  %70 = mul i32 %69, 12
  %71 = sub i32 %67, %70
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %12, align 4
  %73 = udiv i32 %72, 8
  %74 = sub i32 %73, 1
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %19, align 4
  %77 = add i32 %76, 1
  %78 = mul i32 %77, 8
  %79 = sub i32 %75, %78
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* @debug, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %93

82:                                               ; preds = %3
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %20, align 4
  %92 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %82, %3
  %94 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 0
  store i8 1, i8* %94, align 1
  %95 = load i32, i32* %18, align 4
  %96 = mul i32 4, %95
  %97 = load i32, i32* %15, align 4
  %98 = add i32 %96, %97
  %99 = trunc i32 %98 to i8
  %100 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 1
  store i8 %99, i8* %100, align 1
  %101 = load i32, i32* %5, align 4
  %102 = icmp ult i32 %101, 275000000
  br i1 %102, label %103, label %110

103:                                              ; preds = %93
  %104 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, 128
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 1
  store i8 %108, i8* %109, align 1
  br label %110

110:                                              ; preds = %103, %93
  %111 = load i32, i32* %17, align 4
  %112 = trunc i32 %111 to i8
  %113 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 2
  store i8 %112, i8* %113, align 1
  %114 = load i32, i32* %20, align 4
  %115 = mul i32 32, %114
  %116 = load i32, i32* %16, align 4
  %117 = udiv i32 %116, 256
  %118 = add i32 %115, %117
  %119 = trunc i32 %118 to i8
  %120 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 3
  store i8 %119, i8* %120, align 1
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = udiv i32 %122, 256
  %124 = mul i32 %123, 256
  %125 = sub i32 %121, %124
  %126 = trunc i32 %125 to i8
  %127 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 4
  store i8 %126, i8* %127, align 1
  %128 = load i32, i32* %19, align 4
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 5
  store i8 %129, i8* %130, align 1
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %110
  %134 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 5
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = or i32 %136, 64
  %138 = trunc i32 %137 to i8
  %139 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 5
  store i8 %138, i8* %139, align 1
  br label %140

140:                                              ; preds = %133, %110
  %141 = load i32, i32* @debug, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %160

143:                                              ; preds = %140
  %144 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  br label %145

145:                                              ; preds = %155, %143
  %146 = load i32, i32* %23, align 4
  %147 = icmp slt i32 %146, 6
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = load i32, i32* %23, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = zext i8 %152 to i32
  %154 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %148
  %156 = load i32, i32* %23, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %23, align 4
  br label %145

158:                                              ; preds = %145
  %159 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %140
  %161 = load %struct.microtune_priv*, %struct.microtune_priv** %7, align 8
  %162 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %161, i32 0, i32 0
  %163 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 0
  %164 = call i32 @tuner_i2c_xfer_send(i32* %162, i8* %163, i32 6)
  store i32 %164, i32* %21, align 4
  %165 = load i32, i32* %21, align 4
  %166 = icmp ne i32 %165, 6
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i32, i32* %21, align 4
  %169 = call i32 @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %167, %160
  ret void
}

declare dso_local i32 @tuner_dbg(i8*, ...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
