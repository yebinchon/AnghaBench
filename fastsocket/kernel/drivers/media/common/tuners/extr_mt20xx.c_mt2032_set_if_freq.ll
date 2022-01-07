; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_set_if_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_set_if_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"mt2032_set_if_freq rfin=%d if1=%d if2=%d from=%d to=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 3)\0A\00", align 1
@optimize_vco = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"mt2032: re-init PLLs by LINT\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"MT2032 Fatal Error: PLLs didn't lock.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"i2c i/o error: rc == %d (should be 2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, i32, i32, i32, i32, i32)* @mt2032_set_if_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt2032_set_if_freq(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [21 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.microtune_priv*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = load %struct.microtune_priv*, %struct.microtune_priv** %20, align 8
  store %struct.microtune_priv* %21, %struct.microtune_priv** %18, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  %28 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %28, align 16
  %29 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %30 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %32 = call i32 @tuner_i2c_xfer_send(i32* %30, i8* %31, i32 1)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %34 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %33, i32 0, i32 1
  %35 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %36 = call i32 @tuner_i2c_xfer_recv(i32* %34, i8* %35, i32 21)
  %37 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %37, align 16
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 1
  %45 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %46 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mt2032_compute_freq(%struct.dvb_frontend* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i8* %44, i32* %16, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %6
  br label %137

52:                                               ; preds = %6
  %53 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %53, align 16
  %54 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %55 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %57 = call i32 @tuner_i2c_xfer_send(i32* %55, i8* %56, i32 4)
  store i32 %57, i32* %15, align 4
  %58 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 5
  store i8 5, i8* %58, align 1
  %59 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %60 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %62 = getelementptr inbounds i8, i8* %61, i64 5
  %63 = call i32 @tuner_i2c_xfer_send(i32* %60, i8* %62, i32 4)
  store i32 %63, i32* %15, align 4
  %64 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 11
  store i8 11, i8* %64, align 1
  %65 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %66 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %65, i32 0, i32 1
  %67 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %68 = getelementptr inbounds i8, i8* %67, i64 11
  %69 = call i32 @tuner_i2c_xfer_send(i32* %66, i8* %68, i32 3)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 3
  br i1 %71, label %72, label %75

72:                                               ; preds = %52
  %73 = load i32, i32* %15, align 4
  %74 = call i32 (i8*, ...) @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %52
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %117, %75
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %79, label %120

79:                                               ; preds = %76
  %80 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %81 = call i32 @mt2032_check_lo_lock(%struct.dvb_frontend* %80)
  store i32 %81, i32* %17, align 4
  %82 = load i64, i64* @optimize_vco, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @mt2032_optimize_vco(%struct.dvb_frontend* %85, i32 %86, i32 %87)
  store i32 %88, i32* %17, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 6
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %120

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @tuner_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %95 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  store i8 7, i8* %95, align 16
  %96 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %97 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 136, %98
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 1
  store i8 %100, i8* %101, align 1
  %102 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %103 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %102, i32 0, i32 1
  %104 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %105 = call i32 @tuner_i2c_xfer_send(i32* %103, i8* %104, i32 2)
  %106 = call i32 @mdelay(i32 10)
  %107 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %108 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 8, %109
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 1
  store i8 %111, i8* %112, align 1
  %113 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %114 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %113, i32 0, i32 1
  %115 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %116 = call i32 @tuner_i2c_xfer_send(i32* %114, i8* %115, i32 2)
  br label %117

117:                                              ; preds = %93
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %76

120:                                              ; preds = %92, %76
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 6
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call i32 (i8*, ...) @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %120
  %126 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  store i8 2, i8* %126, align 16
  %127 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 1
  store i8 32, i8* %127, align 1
  %128 = load %struct.microtune_priv*, %struct.microtune_priv** %18, align 8
  %129 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %128, i32 0, i32 1
  %130 = getelementptr inbounds [21 x i8], [21 x i8]* %13, i64 0, i64 0
  %131 = call i32 @tuner_i2c_xfer_send(i32* %129, i8* %130, i32 2)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 2
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, i32* %15, align 4
  %136 = call i32 (i8*, ...) @tuner_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %51, %134, %125
  ret void
}

declare dso_local i32 @tuner_dbg(i8*, ...) #1

declare dso_local i32 @tuner_i2c_xfer_send(i32*, i8*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(i32*, i8*, i32) #1

declare dso_local i32 @mt2032_compute_freq(%struct.dvb_frontend*, i32, i32, i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @tuner_warn(i8*, ...) #1

declare dso_local i32 @mt2032_check_lo_lock(%struct.dvb_frontend*) #1

declare dso_local i32 @mt2032_optimize_vco(%struct.dvb_frontend*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
