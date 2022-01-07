; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_microtune_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_microtune_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_8__, %struct.microtune_priv* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.microtune_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mt20xx\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"MT20xx hexdump:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"microtune: companycode=%04x part=%02x rev=%02x\0A\00", align 1
@microtune_part = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"microtune %s found, not (yet?) supported, sorry :-/\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"microtune %s found, OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @microtune_attach(%struct.dvb_frontend* %0, %struct.i2c_adapter* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.microtune_priv*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [21 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.microtune_priv* null, %struct.microtune_priv** %8, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.microtune_priv* @kzalloc(i32 24, i32 %13)
  store %struct.microtune_priv* %14, %struct.microtune_priv** %8, align 8
  %15 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %16 = icmp eq %struct.microtune_priv* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %133

18:                                               ; preds = %3
  %19 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 1
  store %struct.microtune_priv* %19, %struct.microtune_priv** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %24 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  store i32 %22, i32* %25, align 8
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %27 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %28 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store %struct.i2c_adapter* %26, %struct.i2c_adapter** %29, align 8
  %30 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %31 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %34 = call i32 @memset(i8* %33, i32 0, i32 21)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %35 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %36 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %38 = call i32 @tuner_i2c_xfer_send(%struct.TYPE_9__* %36, i8* %37, i32 1)
  %39 = load %struct.microtune_priv*, %struct.microtune_priv** %8, align 8
  %40 = getelementptr inbounds %struct.microtune_priv, %struct.microtune_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 0
  %42 = call i32 @tuner_i2c_xfer_recv(%struct.TYPE_9__* %40, i8* %41, i32 21)
  %43 = load i64, i64* @debug, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %18
  %46 = call i32 @tuner_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %64, %45
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 21
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = srem i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %47

67:                                               ; preds = %47
  %68 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %18
  %70 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 17
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 8
  %74 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 18
  %75 = load i8, i8* %74, align 2
  %76 = zext i8 %75 to i32
  %77 = or i32 %73, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 20
  %83 = load i8, i8* %82, align 4
  %84 = zext i8 %83 to i32
  %85 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %81, i32 %84)
  %86 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i8**, i8*** @microtune_part, align 8
  %90 = call zeroext i8 @ARRAY_SIZE(i8** %89)
  %91 = zext i8 %90 to i32
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %69
  %94 = load i8**, i8*** @microtune_part, align 8
  %95 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %94, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* null, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load i8**, i8*** @microtune_part, align 8
  %103 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %102, i64 %105
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %9, align 8
  br label %108

108:                                              ; preds = %101, %93, %69
  %109 = getelementptr inbounds [21 x i8], [21 x i8]* %10, i64 0, i64 19
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  switch i32 %111, label %118 [
    i32 129, label %112
    i32 128, label %115
  ]

112:                                              ; preds = %108
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %114 = call i32 @mt2032_init(%struct.dvb_frontend* %113)
  br label %121

115:                                              ; preds = %108
  %116 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %117 = call i32 @mt2050_init(%struct.dvb_frontend* %116)
  br label %121

118:                                              ; preds = %108
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %119)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %133

121:                                              ; preds = %115, %112
  %122 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %123 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @strlcpy(i32 %127, i8* %128, i32 4)
  %130 = load i8*, i8** %9, align 8
  %131 = call i32 (i8*, ...) @tuner_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %130)
  %132 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  store %struct.dvb_frontend* %132, %struct.dvb_frontend** %4, align 8
  br label %133

133:                                              ; preds = %121, %118, %17
  %134 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %134
}

declare dso_local %struct.microtune_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tuner_i2c_xfer_send(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @tuner_i2c_xfer_recv(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @tuner_dbg(i8*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @tuner_info(i8*, ...) #1

declare dso_local zeroext i8 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @mt2032_init(%struct.dvb_frontend*) #1

declare dso_local i32 @mt2050_init(%struct.dvb_frontend*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
