; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_lgdt3305.c_lgdt3305_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3305_state*, i32 }
%struct.lgdt3305_state = type { i32, i32, %struct.dvb_frontend, %struct.i2c_adapter*, %struct.lgdt3305_config* }
%struct.lgdt3305_config = type { i32, i32 }
%struct.i2c_adapter = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"(%d-%04x)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@lgdt3304_ops = common dso_local global i32 0, align 4
@lgdt3305_ops = common dso_local global i32 0, align 4
@LGDT3305_GEN_CTRL_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unable to detect %s hardware\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"LGDT3304\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LGDT3305\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @lgdt3305_attach(%struct.lgdt3305_config* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.lgdt3305_config*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.lgdt3305_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lgdt3305_config* %0, %struct.lgdt3305_config** %4, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %5, align 8
  store %struct.lgdt3305_state* null, %struct.lgdt3305_state** %6, align 8
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %10 = icmp ne %struct.i2c_adapter* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %13 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %12)
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ]
  %17 = load %struct.lgdt3305_config*, %struct.lgdt3305_config** %4, align 8
  %18 = icmp ne %struct.lgdt3305_config* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.lgdt3305_config*, %struct.lgdt3305_config** %4, align 8
  %21 = getelementptr inbounds %struct.lgdt3305_config, %struct.lgdt3305_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  %26 = call i32 @lg_dbg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.lgdt3305_state* @kzalloc(i32 40, i32 %27)
  store %struct.lgdt3305_state* %28, %struct.lgdt3305_state** %6, align 8
  %29 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %30 = icmp eq %struct.lgdt3305_state* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %101

32:                                               ; preds = %24
  %33 = load %struct.lgdt3305_config*, %struct.lgdt3305_config** %4, align 8
  %34 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %35 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %34, i32 0, i32 4
  store %struct.lgdt3305_config* %33, %struct.lgdt3305_config** %35, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %37 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %38 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %37, i32 0, i32 3
  store %struct.i2c_adapter* %36, %struct.i2c_adapter** %38, align 8
  %39 = load %struct.lgdt3305_config*, %struct.lgdt3305_config** %4, align 8
  %40 = getelementptr inbounds %struct.lgdt3305_config, %struct.lgdt3305_config* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %52 [
    i32 129, label %42
    i32 128, label %47
  ]

42:                                               ; preds = %32
  %43 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %44 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %44, i32 0, i32 1
  %46 = call i32 @memcpy(i32* %45, i32* @lgdt3304_ops, i32 4)
  br label %53

47:                                               ; preds = %32
  %48 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %49 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %49, i32 0, i32 1
  %51 = call i32 @memcpy(i32* %50, i32* @lgdt3305_ops, i32 4)
  br label %53

52:                                               ; preds = %32
  br label %101

53:                                               ; preds = %47, %42
  %54 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %55 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %56 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %56, i32 0, i32 0
  store %struct.lgdt3305_state* %54, %struct.lgdt3305_state** %57, align 8
  %58 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %59 = load i32, i32* @LGDT3305_GEN_CTRL_2, align 4
  %60 = call i32 @lgdt3305_read_reg(%struct.lgdt3305_state* %58, i32 %59, i32* %8)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @lg_fail(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = or i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %101

69:                                               ; preds = %53
  %70 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %71 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %70, i32 2056, i32 128)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @lg_fail(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %101

76:                                               ; preds = %69
  %77 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %78 = call i32 @lgdt3305_read_reg(%struct.lgdt3305_state* %77, i32 2056, i32* %8)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @lg_fail(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 128
  %83 = zext i1 %82 to i32
  %84 = or i32 %80, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %101

87:                                               ; preds = %76
  %88 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %89 = call i32 @lgdt3305_write_reg(%struct.lgdt3305_state* %88, i32 2056, i32 0)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @lg_fail(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %101

94:                                               ; preds = %87
  %95 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %96 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %95, i32 0, i32 0
  store i32 -1, i32* %96, align 8
  %97 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %98 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %97, i32 0, i32 1
  store i32 -1, i32* %98, align 4
  %99 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %100 = getelementptr inbounds %struct.lgdt3305_state, %struct.lgdt3305_state* %99, i32 0, i32 2
  store %struct.dvb_frontend* %100, %struct.dvb_frontend** %3, align 8
  br label %111

101:                                              ; preds = %93, %86, %75, %68, %52, %31
  %102 = load %struct.lgdt3305_config*, %struct.lgdt3305_config** %4, align 8
  %103 = getelementptr inbounds %struct.lgdt3305_config, %struct.lgdt3305_config* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %108 = call i32 @lg_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %107)
  %109 = load %struct.lgdt3305_state*, %struct.lgdt3305_state** %6, align 8
  %110 = call i32 @kfree(%struct.lgdt3305_state* %109)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %3, align 8
  br label %111

111:                                              ; preds = %101, %94
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  ret %struct.dvb_frontend* %112
}

declare dso_local i32 @lg_dbg(i8*, i32, i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local %struct.lgdt3305_state* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @lgdt3305_read_reg(%struct.lgdt3305_state*, i32, i32*) #1

declare dso_local i32 @lg_fail(i32) #1

declare dso_local i32 @lgdt3305_write_reg(%struct.lgdt3305_state*, i32, i32) #1

declare dso_local i32 @lg_warn(i8*, i8*) #1

declare dso_local i32 @kfree(%struct.lgdt3305_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
