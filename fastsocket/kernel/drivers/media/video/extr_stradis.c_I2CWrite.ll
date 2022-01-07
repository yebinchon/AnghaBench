; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_I2CWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_I2CWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@SAA7146_I2C_STATUS = common dso_local global i32 0, align 4
@SAA7146_I2C_BUSY = common dso_local global i32 0, align 4
@SAA7146_I2C_TRANSFER = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_I2C = common dso_local global i32 0, align 4
@SAA7146_MC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146*, i8, i8, i8, i32)* @I2CWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @I2CWrite(%struct.saa7146* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca %struct.saa7146*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store %struct.saa7146* %0, %struct.saa7146** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %14 = call i32 @saaread(i32 %13)
  %15 = and i32 %14, 60
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %19 = call i32 @I2CWipe(%struct.saa7146* %18)
  br label %20

20:                                               ; preds = %17, %5
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 1000
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %26 = call i32 @saaread(i32 %25)
  %27 = load i32, i32* @SAA7146_I2C_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i1 [ false, %21 ], [ %29, %24 ]
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = call i32 (...) @schedule()
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %11, align 4
  br label %21

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %38, 1000
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.saa7146*, %struct.saa7146** %6, align 8
  %42 = call i32 @I2CWipe(%struct.saa7146* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i8, i8* %7, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, 254
  %47 = shl i32 %46, 24
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 255
  %51 = shl i32 %50, 16
  %52 = or i32 %47, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %12, align 1
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %43
  %57 = load i8, i8* %9, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 255
  %60 = shl i32 %59, 8
  %61 = or i32 %60, 229
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i32
  %64 = or i32 %63, %61
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %12, align 1
  br label %71

66:                                               ; preds = %43
  %67 = load i8, i8* %12, align 1
  %68 = zext i8 %67 to i32
  %69 = or i32 %68, 209
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %12, align 1
  br label %71

71:                                               ; preds = %66, %56
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32, i32* @SAA7146_I2C_TRANSFER, align 4
  %75 = call i32 @saawrite(i32 %73, i32 %74)
  %76 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SAA7146_MC2, align 4
  %81 = call i32 @saawrite(i32 %79, i32 %80)
  ret i32 0
}

declare dso_local i32 @saaread(i32) #1

declare dso_local i32 @I2CWipe(%struct.saa7146*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @saawrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
