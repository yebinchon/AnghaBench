; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_l64781.c_l64781_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_l64781.c_l64781_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.l64781_state*, i32 }
%struct.l64781_state = type { i32, %struct.dvb_frontend, %struct.i2c_adapter*, %struct.l64781_config* }
%struct.l64781_config = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@__const.l64781_attach.b0 = private unnamed_addr constant [1 x i32] [i32 26], align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"No response to reset and configure broadcast...\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No response to read on I2C bus\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Device doesn't look like L64781\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Read 1 returned unexpcted value\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Read 2 returned unexpcted value\0A\00", align 1
@l64781_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @l64781_attach(%struct.l64781_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.l64781_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.l64781_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca [1 x i32], align 4
  %10 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.l64781_config* %0, %struct.l64781_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.l64781_state* null, %struct.l64781_state** %6, align 8
  store i32 -1, i32* %7, align 4
  %11 = bitcast [1 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast ([1 x i32]* @__const.l64781_attach.b0 to i8*), i64 4, i1 false)
  %12 = bitcast [1 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32 1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %19 = load %struct.l64781_config*, %struct.l64781_config** %4, align 8
  %20 = getelementptr inbounds %struct.l64781_config, %struct.l64781_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i64 1
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 0
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %9, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 2
  %27 = load i32, i32* @I2C_M_RD, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  %29 = load %struct.l64781_config*, %struct.l64781_config** %4, align 8
  %30 = getelementptr inbounds %struct.l64781_config, %struct.l64781_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.l64781_state* @kzalloc(i32 40, i32 %32)
  store %struct.l64781_state* %33, %struct.l64781_state** %6, align 8
  %34 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %35 = icmp eq %struct.l64781_state* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  br label %94

37:                                               ; preds = %2
  %38 = load %struct.l64781_config*, %struct.l64781_config** %4, align 8
  %39 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %40 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %39, i32 0, i32 3
  store %struct.l64781_config* %38, %struct.l64781_config** %40, align 8
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %42 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %43 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %42, i32 0, i32 2
  store %struct.i2c_adapter* %41, %struct.i2c_adapter** %43, align 8
  %44 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %45 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %47 = call i64 @reset_and_configure(%struct.l64781_state* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = call i32 @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %94

51:                                               ; preds = %37
  %52 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %53 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %52, i32 0, i32 2
  %54 = load %struct.i2c_adapter*, %struct.i2c_adapter** %53, align 8
  %55 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %10, i64 0, i64 0
  %56 = call i32 @i2c_transfer(%struct.i2c_adapter* %54, %struct.i2c_msg* %55, i32 2)
  %57 = icmp ne i32 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %94

60:                                               ; preds = %51
  %61 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %62 = call i32 @l64781_readreg(%struct.l64781_state* %61, i32 62)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %94

67:                                               ; preds = %60
  %68 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %69 = call i32 @l64781_writereg(%struct.l64781_state* %68, i32 62, i32 90)
  %70 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %71 = call i32 @l64781_readreg(%struct.l64781_state* %70, i32 26)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %94

75:                                               ; preds = %67
  %76 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %77 = call i32 @l64781_writereg(%struct.l64781_state* %76, i32 62, i32 165)
  %78 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %79 = call i32 @l64781_readreg(%struct.l64781_state* %78, i32 26)
  %80 = icmp ne i32 %79, 161
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %94

83:                                               ; preds = %75
  %84 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %85 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %85, i32 0, i32 1
  %87 = call i32 @memcpy(i32* %86, i32* @l64781_ops, i32 4)
  %88 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %89 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %90 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %90, i32 0, i32 0
  store %struct.l64781_state* %88, %struct.l64781_state** %91, align 8
  %92 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %93 = getelementptr inbounds %struct.l64781_state, %struct.l64781_state* %92, i32 0, i32 1
  store %struct.dvb_frontend* %93, %struct.dvb_frontend** %3, align 8
  br label %104

94:                                               ; preds = %81, %73, %65, %58, %49, %36
  %95 = load i32, i32* %7, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @l64781_writereg(%struct.l64781_state* %98, i32 62, i32 %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.l64781_state*, %struct.l64781_state** %6, align 8
  %103 = call i32 @kfree(%struct.l64781_state* %102)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %104

104:                                              ; preds = %101, %83
  %105 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.l64781_state* @kzalloc(i32, i32) #2

declare dso_local i64 @reset_and_configure(%struct.l64781_state*) #2

declare dso_local i32 @dprintk(i8*) #2

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

declare dso_local i32 @l64781_readreg(%struct.l64781_state*, i32) #2

declare dso_local i32 @l64781_writereg(%struct.l64781_state*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @kfree(%struct.l64781_state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
