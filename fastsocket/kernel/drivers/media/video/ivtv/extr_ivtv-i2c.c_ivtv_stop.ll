; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-i2c.c_ivtv_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"SCL not low when stopping\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"SCL could not be set low\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SCL could not be set high\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"resetting I2C\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtv_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_stop(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %6 = call i64 @ivtv_getscl(%struct.ivtv* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = call i32 @IVTV_DEBUG_HI_I2C(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %11 = call i32 @ivtv_setscl(%struct.ivtv* %10, i32 0)
  %12 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %13 = call i32 @ivtv_waitscl(%struct.ivtv* %12, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %8
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %20 = call i32 @ivtv_setsda(%struct.ivtv* %19, i32 0)
  %21 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %22 = call i32 @ivtv_scldelay(%struct.ivtv* %21)
  %23 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %24 = call i32 @ivtv_setscl(%struct.ivtv* %23, i32 1)
  %25 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %26 = call i32 @ivtv_waitscl(%struct.ivtv* %25, i32 1)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @EREMOTEIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %65

32:                                               ; preds = %18
  %33 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %34 = call i32 @ivtv_scldelay(%struct.ivtv* %33)
  %35 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %36 = call i32 @ivtv_setsda(%struct.ivtv* %35, i32 1)
  %37 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %38 = call i32 @ivtv_waitsda(%struct.ivtv* %37, i32 1)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %64, label %40

40:                                               ; preds = %32
  %41 = call i32 @IVTV_DEBUG_I2C(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %56, %40
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %47 = call i32 @ivtv_setscl(%struct.ivtv* %46, i32 0)
  %48 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %49 = call i32 @ivtv_scldelay(%struct.ivtv* %48)
  %50 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %51 = call i32 @ivtv_setscl(%struct.ivtv* %50, i32 1)
  %52 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %53 = call i32 @ivtv_scldelay(%struct.ivtv* %52)
  %54 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %55 = call i32 @ivtv_setsda(%struct.ivtv* %54, i32 1)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %61 = call i32 @ivtv_waitsda(%struct.ivtv* %60, i32 1)
  %62 = load i32, i32* @EREMOTEIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %59, %28
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @ivtv_getscl(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_HI_I2C(i8*) #1

declare dso_local i32 @ivtv_setscl(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_waitscl(%struct.ivtv*, i32) #1

declare dso_local i32 @IVTV_DEBUG_I2C(i8*) #1

declare dso_local i32 @ivtv_setsda(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_scldelay(%struct.ivtv*) #1

declare dso_local i32 @ivtv_waitsda(%struct.ivtv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
