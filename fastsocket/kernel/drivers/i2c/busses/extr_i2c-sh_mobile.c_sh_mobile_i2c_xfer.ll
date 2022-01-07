; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32 }
%struct.sh_mobile_i2c_data = type { i32, i32, i32 }

@OP_START = common dso_local global i32 0, align 4
@ICSR_TACK = common dso_local global i32 0, align 4
@SW_DONE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Transfer request timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"val 0x%02x pd->sr 0x%02x\0A\00", align 1
@ICSR_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Polling timed out\0A\00", align 1
@ICSR_AL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @sh_mobile_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_mobile_i2c_data*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %15 = call %struct.sh_mobile_i2c_data* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.sh_mobile_i2c_data* %15, %struct.sh_mobile_i2c_data** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %17 = call i32 @activate_ch(%struct.sh_mobile_i2c_data* %16)
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %102, %3
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %105

22:                                               ; preds = %18
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i64 %25
  store %struct.i2c_msg* %26, %struct.i2c_msg** %8, align 8
  %27 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %29 = call i32 @start_ch(%struct.sh_mobile_i2c_data* %27, %struct.i2c_msg* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %105

33:                                               ; preds = %22
  %34 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %35 = load i32, i32* @OP_START, align 4
  %36 = call i32 @i2c_op(%struct.sh_mobile_i2c_data* %34, i32 %35, i32 0)
  %37 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %38 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %41 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ICSR_TACK, align 4
  %44 = load i32, i32* @SW_DONE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 5, %47
  %49 = call i32 @wait_event_timeout(i32 %39, i32 %46, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %33
  %53 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %54 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %33
  store i32 1000, i32* %13, align 4
  br label %58

58:                                               ; preds = %79, %57
  %59 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %60 = call i32 @ICSR(%struct.sh_mobile_i2c_data* %59)
  %61 = call i32 @ioread8(i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %63 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %67 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @ICSR_BUSY, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %58
  %75 = call i32 @udelay(i32 10)
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %13, align 4
  %78 = icmp ne i32 %76, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %58

80:                                               ; preds = %74
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %9, align 4
  %83 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %84 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %105

87:                                               ; preds = %58
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %90 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  %93 = load i32, i32* @ICSR_TACK, align 4
  %94 = load i32, i32* @ICSR_AL, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %87
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %105

101:                                              ; preds = %87
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  br label %18

105:                                              ; preds = %98, %80, %32, %18
  %106 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %7, align 8
  %107 = call i32 @deactivate_ch(%struct.sh_mobile_i2c_data* %106)
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local %struct.sh_mobile_i2c_data* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @activate_ch(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @start_ch(%struct.sh_mobile_i2c_data*, %struct.i2c_msg*) #1

declare dso_local i32 @i2c_op(%struct.sh_mobile_i2c_data*, i32, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ICSR(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @deactivate_ch(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
