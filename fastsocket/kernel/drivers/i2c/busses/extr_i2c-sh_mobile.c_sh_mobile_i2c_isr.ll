; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sh_mobile_i2c_data = type { i8, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"i2c_isr 0x%02x 0x%02x %s %d %d!\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@ICSR_AL = common dso_local global i8 0, align 1
@ICSR_TACK = common dso_local global i8 0, align 1
@ICSR_WAIT = common dso_local global i8 0, align 1
@SW_DONE = common dso_local global i8 0, align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_mobile_i2c_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mobile_i2c_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sh_mobile_i2c_data*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.platform_device*
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = call %struct.sh_mobile_i2c_data* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.sh_mobile_i2c_data* %12, %struct.sh_mobile_i2c_data** %6, align 8
  %13 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %14 = call i32 @ICSR(%struct.sh_mobile_i2c_data* %13)
  %15 = call zeroext i8 @ioread8(i32 %14)
  store i8 %15, i8* %7, align 1
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %19 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = zext i8 %20 to i32
  %22 = or i32 %21, %17
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %19, align 8
  %24 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %25 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load i8, i8* %7, align 1
  %28 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %29 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %32 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @I2C_M_RD, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %41 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %42 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %45 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %27, i8 zeroext %30, i8* %40, i32 %43, i32 %48)
  %50 = load i8, i8* %7, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @ICSR_AL, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* @ICSR_TACK, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = and i32 %51, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %2
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @ICSR_AL, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, i8* @ICSR_TACK, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %63, %65
  %67 = xor i32 %66, -1
  %68 = and i32 %61, %67
  %69 = trunc i32 %68 to i8
  %70 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %71 = call i32 @ICSR(%struct.sh_mobile_i2c_data* %70)
  %72 = call i32 @iowrite8(i8 zeroext %69, i32 %71)
  store i32 0, i32* %8, align 4
  br label %89

73:                                               ; preds = %2
  %74 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %75 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @I2C_M_RD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %84 = call i32 @sh_mobile_i2c_isr_rx(%struct.sh_mobile_i2c_data* %83)
  store i32 %84, i32* %8, align 4
  br label %88

85:                                               ; preds = %73
  %86 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %87 = call i32 @sh_mobile_i2c_isr_tx(%struct.sh_mobile_i2c_data* %86)
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %59
  %90 = load i8, i8* %7, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @ICSR_WAIT, align 1
  %93 = zext i8 %92 to i32
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load i8, i8* %7, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* @ICSR_WAIT, align 1
  %100 = zext i8 %99 to i32
  %101 = xor i32 %100, -1
  %102 = and i32 %98, %101
  %103 = trunc i32 %102 to i8
  %104 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %105 = call i32 @ICSR(%struct.sh_mobile_i2c_data* %104)
  %106 = call i32 @iowrite8(i8 zeroext %103, i32 %105)
  br label %107

107:                                              ; preds = %96, %89
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i8, i8* @SW_DONE, align 1
  %112 = zext i8 %111 to i32
  %113 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %114 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %113, i32 0, i32 0
  %115 = load i8, i8* %114, align 8
  %116 = zext i8 %115 to i32
  %117 = or i32 %116, %112
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %114, align 8
  %119 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %6, align 8
  %120 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %119, i32 0, i32 1
  %121 = call i32 @wake_up(i32* %120)
  br label %122

122:                                              ; preds = %110, %107
  %123 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %123
}

declare dso_local %struct.sh_mobile_i2c_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local zeroext i8 @ioread8(i32) #1

declare dso_local i32 @ICSR(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext, i8 zeroext, i8*, i32, i32) #1

declare dso_local i32 @iowrite8(i8 zeroext, i32) #1

declare dso_local i32 @sh_mobile_i2c_isr_rx(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @sh_mobile_i2c_isr_tx(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
