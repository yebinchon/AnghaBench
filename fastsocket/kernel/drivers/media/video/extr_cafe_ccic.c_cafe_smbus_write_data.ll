; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_smbus_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_smbus_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i32, i32 }

@TWSIC0_EN = common dso_local global i32 0, align 4
@TWSIC0_SID_SHIFT = common dso_local global i32 0, align 4
@TWSIC0_SID = common dso_local global i32 0, align 4
@TWSIC0_OVMAGIC = common dso_local global i32 0, align 4
@TWSIC0_CLKDIV = common dso_local global i32 0, align 4
@REG_TWSIC0 = common dso_local global i32 0, align 4
@REG_TWSIC1 = common dso_local global i32 0, align 4
@TWSIC1_ADDR_SHIFT = common dso_local global i32 0, align 4
@TWSIC1_ADDR = common dso_local global i32 0, align 4
@CAFE_SMBUS_TIMEOUT = common dso_local global i32 0, align 4
@TWSIC1_WSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SMBUS write (%02x/%02x/%02x) timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TWSIC1_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"SMBUS write (%02x/%02x/%02x) error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*, i32, i32, i32)* @cafe_smbus_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_smbus_write_data(%struct.cafe_camera* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cafe_camera*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.cafe_camera* %0, %struct.cafe_camera** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %13 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %12, i32 0, i32 0
  %14 = load i64, i64* %11, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load i32, i32* @TWSIC0_EN, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @TWSIC0_SID_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* @TWSIC0_SID, align 4
  %21 = and i32 %19, %20
  %22 = or i32 %16, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @TWSIC0_OVMAGIC, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* @TWSIC0_CLKDIV, align 4
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %30 = load i32, i32* @REG_TWSIC0, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @cafe_reg_write(%struct.cafe_camera* %29, i32 %30, i32 %31)
  %33 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %34 = load i32, i32* @REG_TWSIC1, align 4
  %35 = call i32 @cafe_reg_read(%struct.cafe_camera* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @TWSIC1_ADDR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @TWSIC1_ADDR, align 4
  %41 = and i32 %39, %40
  %42 = or i32 %36, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %44 = load i32, i32* @REG_TWSIC1, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @cafe_reg_write(%struct.cafe_camera* %43, i32 %44, i32 %45)
  %47 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %48 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %47, i32 0, i32 0
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = call i32 @mdelay(i32 2)
  %52 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %53 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %56 = call i32 @cafe_smbus_write_done(%struct.cafe_camera* %55)
  %57 = load i32, i32* @CAFE_SMBUS_TIMEOUT, align 4
  %58 = call i32 @wait_event_timeout(i32 %54, i32 %56, i32 %57)
  %59 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %60 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %59, i32 0, i32 0
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_lock_irqsave(i32* %60, i64 %61)
  %63 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %64 = load i32, i32* @REG_TWSIC1, align 4
  %65 = call i32 @cafe_reg_read(%struct.cafe_camera* %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %67 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %66, i32 0, i32 0
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @TWSIC1_WSTAT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %4
  %75 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @cam_err(%struct.cafe_camera* %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %96

82:                                               ; preds = %4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @TWSIC1_ERROR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.cafe_camera*, %struct.cafe_camera** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @cam_err(%struct.cafe_camera* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %96

95:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %87, %74
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cafe_reg_write(%struct.cafe_camera*, i32, i32) #1

declare dso_local i32 @cafe_reg_read(%struct.cafe_camera*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @cafe_smbus_write_done(%struct.cafe_camera*) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
