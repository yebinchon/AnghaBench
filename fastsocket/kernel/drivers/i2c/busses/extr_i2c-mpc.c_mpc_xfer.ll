; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_mpc_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_mpc_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32, i32, i32 }
%struct.mpc_i2c = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@MPC_I2C_SR = common dso_local global i64 0, align 8
@CSR_MBB = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Interrupted\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@CSR_MCF = common dso_local global i32 0, align 4
@CSR_RXAK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Doing %s %d bytes to 0x%02x - %d of %d messages\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @mpc_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mpc_i2c*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %11, align 8
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %15 = call %struct.mpc_i2c* @i2c_get_adapdata(%struct.i2c_adapter* %14)
  store %struct.mpc_i2c* %15, %struct.mpc_i2c** %12, align 8
  %16 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %17 = call i32 @mpc_i2c_start(%struct.mpc_i2c* %16)
  br label %18

18:                                               ; preds = %71, %3
  %19 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %20 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MPC_I2C_SR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readb(i64 %23)
  %25 = load i32, i32* @CSR_MBB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %18
  %29 = load i32, i32* @current, align 4
  %30 = call i64 @signal_pending(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %34 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %38 = call i32 @writeccr(%struct.mpc_i2c* %37, i32 0)
  %39 = load i32, i32* @EINTR, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %156

41:                                               ; preds = %28
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @HZ, align 8
  %45 = add i64 %43, %44
  %46 = call i64 @time_after(i64 %42, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %41
  %49 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %50 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %54 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MPC_I2C_SR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readb(i64 %57)
  %59 = load i32, i32* @CSR_MCF, align 4
  %60 = load i32, i32* @CSR_MBB, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CSR_RXAK, align 4
  %63 = or i32 %61, %62
  %64 = icmp eq i32 %58, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %48
  %66 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %67 = call i32 @mpc_i2c_fixup(%struct.mpc_i2c* %66)
  br label %68

68:                                               ; preds = %65, %48
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %156

71:                                               ; preds = %41
  %72 = call i32 (...) @schedule()
  br label %18

73:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %142, %73
  %75 = load i32, i32* %10, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br label %81

81:                                               ; preds = %77, %74
  %82 = phi i1 [ false, %74 ], [ %80, %77 ]
  br i1 %82, label %83, label %145

83:                                               ; preds = %81
  %84 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %84, i64 %86
  store %struct.i2c_msg* %87, %struct.i2c_msg** %8, align 8
  %88 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %89 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %92 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @I2C_M_RD, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %99 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %103 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i32, i8*, ...) @dev_dbg(i32 %90, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %98, i32 %101, i32 %104, i32 %106, i32 %107)
  %109 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @I2C_M_RD, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %83
  %116 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %117 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %118 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %121 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %124 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @mpc_read(%struct.mpc_i2c* %116, i32 %119, i32 %122, i32 %125, i32 %126)
  store i32 %127, i32* %10, align 4
  br label %141

128:                                              ; preds = %83
  %129 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %130 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %134 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %137 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @mpc_write(%struct.mpc_i2c* %129, i32 %132, i32 %135, i32 %138, i32 %139)
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %128, %115
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %74

145:                                              ; preds = %81
  %146 = load %struct.mpc_i2c*, %struct.mpc_i2c** %12, align 8
  %147 = call i32 @mpc_i2c_stop(%struct.mpc_i2c* %146)
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* %10, align 4
  br label %154

152:                                              ; preds = %145
  %153 = load i32, i32* %7, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %68, %32
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.mpc_i2c* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mpc_i2c_start(%struct.mpc_i2c*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @writeccr(%struct.mpc_i2c*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mpc_i2c_fixup(%struct.mpc_i2c*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mpc_read(%struct.mpc_i2c*, i32, i32, i32, i32) #1

declare dso_local i32 @mpc_write(%struct.mpc_i2c*, i32, i32, i32, i32) #1

declare dso_local i32 @mpc_i2c_stop(%struct.mpc_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
