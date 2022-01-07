; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_ir_change_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-input.c_em28xx_ir_change_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.em28xx_IR* }
%struct.em28xx_IR = type { i32, i32, %struct.em28xx* }
%struct.em28xx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EM2874_IR_RC5 = common dso_local global i32 0, align 4
@RC_TYPE_RC5 = common dso_local global i64 0, align 8
@EM28XX_XCLK_IR_RC5_MODE = common dso_local global i32 0, align 4
@RC_TYPE_NEC = common dso_local global i64 0, align 8
@EM2874_IR_NEC = common dso_local global i32 0, align 4
@RC_TYPE_UNKNOWN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EM28XX_R0F_XCLK = common dso_local global i32 0, align 4
@default_polling_getkey = common dso_local global i32 0, align 4
@em2874_polling_getkey = common dso_local global i32 0, align 4
@EM2874_R50_IR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unrecognized em28xx chip id: IR not supported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_ir_change_protocol(%struct.rc_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx_IR*, align 8
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 0
  %11 = load %struct.em28xx_IR*, %struct.em28xx_IR** %10, align 8
  store %struct.em28xx_IR* %11, %struct.em28xx_IR** %6, align 8
  %12 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %13 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %12, i32 0, i32 2
  %14 = load %struct.em28xx*, %struct.em28xx** %13, align 8
  store %struct.em28xx* %14, %struct.em28xx** %7, align 8
  %15 = load i32, i32* @EM2874_IR_RC5, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @RC_TYPE_RC5, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %21 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %20
  store i32 %25, i32* %23, align 4
  %26 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %27 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %52

28:                                               ; preds = %2
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @RC_TYPE_NEC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @EM2874_IR_NEC, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %42 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %51

43:                                               ; preds = %28
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @RC_TYPE_UNKNOWN, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %43
  br label %51

51:                                               ; preds = %50, %32
  br label %52

52:                                               ; preds = %51, %19
  %53 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %54 = load i32, i32* @EM28XX_R0F_XCLK, align 4
  %55 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %56 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EM28XX_XCLK_IR_RC5_MODE, align 4
  %60 = call i32 @em28xx_write_reg_bits(%struct.em28xx* %53, i32 %54, i32 %58, i32 %59)
  %61 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %62 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %75 [
    i32 130, label %64
    i32 128, label %64
    i32 129, label %68
  ]

64:                                               ; preds = %52, %52
  %65 = load i32, i32* @default_polling_getkey, align 4
  %66 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %67 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %79

68:                                               ; preds = %52
  %69 = load i32, i32* @em2874_polling_getkey, align 4
  %70 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  %71 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %73 = load i32, i32* @EM2874_R50_IR_CONFIG, align 4
  %74 = call i32 @em28xx_write_regs(%struct.em28xx* %72, i32 %73, i32* %8, i32 1)
  br label %79

75:                                               ; preds = %52
  %76 = call i32 @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %68, %64
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @em28xx_write_reg_bits(%struct.em28xx*, i32, i32, i32) #1

declare dso_local i32 @em28xx_write_regs(%struct.em28xx*, i32, i32*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
