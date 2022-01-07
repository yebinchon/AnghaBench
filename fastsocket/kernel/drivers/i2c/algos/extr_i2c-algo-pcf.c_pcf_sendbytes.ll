; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pcf.c_pcf_sendbytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/algos/extr_i2c-algo-pcf.c_pcf_sendbytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.i2c_algo_pcf_data* }
%struct.i2c_algo_pcf_data = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"i2c_write: writing %2.2X\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"i2c_write: error - timeout.\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@I2C_PCF_LRB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"i2c_write: error - no ack.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i8*, i32, i32)* @pcf_sendbytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf_sendbytes(%struct.i2c_adapter* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_algo_pcf_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %14, i32 0, i32 1
  %16 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %15, align 8
  store %struct.i2c_algo_pcf_data* %16, %struct.i2c_algo_pcf_data** %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %75, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %17
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %22, i32 0, i32 0
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  %32 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 signext %31)
  %33 = call i32 @DEB2(i32 %32)
  %34 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %10, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @i2c_outb(%struct.i2c_algo_pcf_data* %34, i8 signext %39)
  %41 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %10, align 8
  %42 = call i32 @wait_for_pin(%struct.i2c_algo_pcf_data* %41, i32* %12)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %21
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @EINTR, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINTR, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %89

53:                                               ; preds = %45
  %54 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %10, align 8
  %55 = call i32 @i2c_stop(%struct.i2c_algo_pcf_data* %54)
  %56 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EREMOTEIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %89

61:                                               ; preds = %21
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @I2C_PCF_LRB, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %10, align 8
  %68 = call i32 @i2c_stop(%struct.i2c_algo_pcf_data* %67)
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %70 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %69, i32 0, i32 0
  %71 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @EREMOTEIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %89

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %17

78:                                               ; preds = %17
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %10, align 8
  %83 = call i32 @i2c_stop(%struct.i2c_algo_pcf_data* %82)
  br label %87

84:                                               ; preds = %78
  %85 = load %struct.i2c_algo_pcf_data*, %struct.i2c_algo_pcf_data** %10, align 8
  %86 = call i32 @i2c_repstart(%struct.i2c_algo_pcf_data* %85)
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %87, %66, %53, %50
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @DEB2(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8 signext) #1

declare dso_local i32 @i2c_outb(%struct.i2c_algo_pcf_data*, i8 signext) #1

declare dso_local i32 @wait_for_pin(%struct.i2c_algo_pcf_data*, i32*) #1

declare dso_local i32 @i2c_stop(%struct.i2c_algo_pcf_data*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_repstart(%struct.i2c_algo_pcf_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
