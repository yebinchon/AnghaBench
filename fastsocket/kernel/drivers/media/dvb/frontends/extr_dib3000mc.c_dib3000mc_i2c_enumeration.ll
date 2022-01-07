; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_i2c_enumeration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib3000mc.c_dib3000mc_i2c_enumeration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.dib3000mc_config = type { i32 }
%struct.dib3000mc_state = type { i32, %struct.dib3000mc_config*, %struct.i2c_adapter* }

@dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS = internal global [4 x i32] [i32 20, i32 22, i32 24, i32 26], align 16
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"-E-  DiB3000P/MC #%d: not identified\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OUTMODE_MPEG2_PAR_CONT_CLK = common dso_local global i32 0, align 4
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dib3000mc_i2c_enumeration(%struct.i2c_adapter* %0, i32 %1, i32 %2, %struct.dib3000mc_config* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dib3000mc_config*, align 8
  %10 = alloca %struct.dib3000mc_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dib3000mc_config* %3, %struct.dib3000mc_config** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dib3000mc_state* @kzalloc(i32 24, i32 %13)
  store %struct.dib3000mc_state* %14, %struct.dib3000mc_state** %10, align 8
  %15 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %16 = icmp eq %struct.dib3000mc_state* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %109

20:                                               ; preds = %4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %22 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %23 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %22, i32 0, i32 2
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %73, %20
  %27 = load i32, i32* %11, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  %30 = load %struct.dib3000mc_config*, %struct.dib3000mc_config** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dib3000mc_config, %struct.dib3000mc_config* %30, i64 %32
  %34 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %35 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %34, i32 0, i32 1
  store %struct.dib3000mc_config* %33, %struct.dib3000mc_config** %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %42 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %44 = call i64 @dib3000mc_identify(%struct.dib3000mc_state* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %29
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %49 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %51 = call i64 @dib3000mc_identify(%struct.dib3000mc_state* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %57 = call i32 @kfree(%struct.dib3000mc_state* %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %109

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %63 = load i32, i32* @OUTMODE_MPEG2_PAR_CONT_CLK, align 4
  %64 = call i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state* %62, i32 %63)
  %65 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 %66, 3
  %68 = or i32 %67, 1
  %69 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %65, i32 1024, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %72 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %11, align 4
  br label %26

76:                                               ; preds = %26
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %103, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %77
  %82 = load %struct.dib3000mc_config*, %struct.dib3000mc_config** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.dib3000mc_config, %struct.dib3000mc_config* %82, i64 %84
  %86 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %87 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %86, i32 0, i32 1
  store %struct.dib3000mc_config* %85, %struct.dib3000mc_config** %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* @dib3000mc_i2c_enumeration.DIB3000MC_I2C_ADDRESS, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %93 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %95 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %96 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 %97, 3
  %99 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %94, i32 1024, i32 %98)
  %100 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %101 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %102 = call i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state* %100, i32 %101)
  br label %103

103:                                              ; preds = %81
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %77

106:                                              ; preds = %77
  %107 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %10, align 8
  %108 = call i32 @kfree(%struct.dib3000mc_state* %107)
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %106, %53, %17
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.dib3000mc_state* @kzalloc(i32, i32) #1

declare dso_local i64 @dib3000mc_identify(%struct.dib3000mc_state*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @kfree(%struct.dib3000mc_state*) #1

declare dso_local i32 @dib3000mc_set_output_mode(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
