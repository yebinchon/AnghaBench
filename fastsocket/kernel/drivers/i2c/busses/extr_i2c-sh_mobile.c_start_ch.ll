; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_start_ch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_start_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, i32, i32, i64, %struct.i2c_msg*, i32 }
%struct.i2c_msg = type { i64, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unsupported zero length i2c read\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ICCR_ICE = common dso_local global i32 0, align 4
@ICIC_WAITE = common dso_local global i32 0, align 4
@ICIC_ALE = common dso_local global i32 0, align 4
@ICIC_TACKE = common dso_local global i32 0, align 4
@ICIC_DTEE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mobile_i2c_data*, %struct.i2c_msg*)* @start_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_ch(%struct.sh_mobile_i2c_data* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sh_mobile_i2c_data*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @I2C_M_RD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %10
  %18 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %10, %2
  %25 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %26 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %25)
  %27 = call i32 @ioread8(i32 %26)
  %28 = load i32, i32* @ICCR_ICE, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %32 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %31)
  %33 = call i32 @iowrite8(i32 %30, i32 %32)
  %34 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %35 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %34)
  %36 = call i32 @ioread8(i32 %35)
  %37 = load i32, i32* @ICCR_ICE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %40 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %39)
  %41 = call i32 @iowrite8(i32 %38, i32 %40)
  %42 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %43 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %46 = call i32 @ICCL(%struct.sh_mobile_i2c_data* %45)
  %47 = call i32 @iowrite8(i32 %44, i32 %46)
  %48 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %49 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %52 = call i32 @ICCH(%struct.sh_mobile_i2c_data* %51)
  %53 = call i32 @iowrite8(i32 %50, i32 %52)
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %55 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %56 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %55, i32 0, i32 4
  store %struct.i2c_msg* %54, %struct.i2c_msg** %56, align 8
  %57 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %58 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %57, i32 0, i32 2
  store i32 -1, i32* %58, align 8
  %59 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %60 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @ICIC_WAITE, align 4
  %62 = load i32, i32* @ICIC_ALE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ICIC_TACKE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @ICIC_DTEE, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %69 = call i32 @ICIC(%struct.sh_mobile_i2c_data* %68)
  %70 = call i32 @iowrite8(i32 %67, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %24, %17
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @ICCR(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @ICCL(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @ICCH(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @ICIC(%struct.sh_mobile_i2c_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
