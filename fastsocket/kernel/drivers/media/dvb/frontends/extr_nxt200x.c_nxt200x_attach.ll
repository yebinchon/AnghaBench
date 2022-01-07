; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt200x_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt200x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt200x_state*, i32 }
%struct.nxt200x_state = type { i32, %struct.dvb_frontend, i64, %struct.i2c_adapter*, %struct.nxt200x_config* }
%struct.nxt200x_config = type { i32 }
%struct.i2c_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"NXT info: %02X %02X %02X %02X %02X\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"nxt200x: NXT2002 Detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"nxt200x: NXT2004 Detected\0A\00", align 1
@nxt200x_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Unknown/Unsupported NXT chip: %02X %02X %02X %02X %02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @nxt200x_attach(%struct.nxt200x_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.nxt200x_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.nxt200x_state*, align 8
  %7 = alloca [5 x i32], align 16
  store %struct.nxt200x_config* %0, %struct.nxt200x_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.nxt200x_state* null, %struct.nxt200x_state** %6, align 8
  %8 = bitcast [5 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 20, i1 false)
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nxt200x_state* @kzalloc(i32 48, i32 %9)
  store %struct.nxt200x_state* %10, %struct.nxt200x_state** %6, align 8
  %11 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %12 = icmp eq %struct.nxt200x_state* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %96

14:                                               ; preds = %2
  %15 = load %struct.nxt200x_config*, %struct.nxt200x_config** %4, align 8
  %16 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %17 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %16, i32 0, i32 4
  store %struct.nxt200x_config* %15, %struct.nxt200x_config** %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %19 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %20 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %19, i32 0, i32 3
  store %struct.i2c_adapter* %18, %struct.i2c_adapter** %20, align 8
  %21 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %22 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %25 = call i32 @nxt200x_readbytes(%struct.nxt200x_state* %23, i32 0, i32* %24, i32 5)
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %27 = load i32, i32* %26, align 16
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %35 = load i32, i32* %34, align 16
  %36 = call i32 @dprintk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i32 %33, i32 %35)
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %38 = load i32, i32* %37, align 16
  switch i32 %38, label %47 [
    i32 4, label %39
    i32 5, label %43
  ]

39:                                               ; preds = %14
  %40 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %41 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %40, i32 0, i32 0
  store i32 129, i32* %41, align 8
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %48

43:                                               ; preds = %14
  %44 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %45 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %44, i32 0, i32 0
  store i32 128, i32* %45, align 8
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %48

47:                                               ; preds = %14
  br label %96

48:                                               ; preds = %43, %39
  %49 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %50 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %84 [
    i32 129, label %52
    i32 128, label %78
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %54 = load i32, i32* %53, align 16
  %55 = icmp ne i32 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %96

57:                                               ; preds = %52
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %96

62:                                               ; preds = %57
  %63 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 17
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %96

67:                                               ; preds = %62
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 32
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %96

72:                                               ; preds = %67
  %73 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %74 = load i32, i32* %73, align 16
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %96

77:                                               ; preds = %72
  br label %85

78:                                               ; preds = %48
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = icmp ne i32 %80, 5
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %96

83:                                               ; preds = %78
  br label %85

84:                                               ; preds = %48
  br label %96

85:                                               ; preds = %83, %77
  %86 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %87 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %87, i32 0, i32 1
  %89 = call i32 @memcpy(i32* %88, i32* @nxt200x_ops, i32 4)
  %90 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %91 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %92 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %92, i32 0, i32 0
  store %struct.nxt200x_state* %90, %struct.nxt200x_state** %93, align 8
  %94 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %95 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %94, i32 0, i32 1
  store %struct.dvb_frontend* %95, %struct.dvb_frontend** %3, align 8
  br label %110

96:                                               ; preds = %84, %82, %76, %71, %66, %61, %56, %47, %13
  %97 = load %struct.nxt200x_state*, %struct.nxt200x_state** %6, align 8
  %98 = call i32 @kfree(%struct.nxt200x_state* %97)
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %100 = load i32, i32* %99, align 16
  %101 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  %108 = load i32, i32* %107, align 16
  %109 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %102, i32 %104, i32 %106, i32 %108)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %110

110:                                              ; preds = %96, %85
  %111 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.nxt200x_state* @kzalloc(i32, i32) #2

declare dso_local i32 @nxt200x_readbytes(%struct.nxt200x_state*, i32, i32*, i32) #2

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @printk(i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @kfree(%struct.nxt200x_state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
