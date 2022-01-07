; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_I2CWipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_I2CWipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@SAA7146_I2C_ABORT = common dso_local global i32 0, align 4
@SAA7146_I2C_STATUS = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_I2C = common dso_local global i32 0, align 4
@SAA7146_MC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7146*)* @I2CWipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @I2CWipe(%struct.saa7146* %0) #0 {
  %2 = alloca %struct.saa7146*, align 8
  %3 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %2, align 8
  %4 = load i32, i32* @SAA7146_I2C_ABORT, align 4
  %5 = or i32 1536, %4
  %6 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %7 = call i32 @saawrite(i32 %5, i32 %6)
  %8 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %9 = shl i32 %8, 16
  %10 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SAA7146_MC2, align 4
  %13 = call i32 @saawrite(i32 %11, i32 %12)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %28, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 1000
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* @SAA7146_MC2, align 4
  %19 = call i32 @saaread(i32 %18)
  %20 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %17, %14
  %25 = phi i1 [ false, %14 ], [ %23, %17 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = call i32 (...) @schedule()
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %14

31:                                               ; preds = %24
  %32 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %33 = call i32 @saawrite(i32 1536, i32 %32)
  %34 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SAA7146_MC2, align 4
  %39 = call i32 @saawrite(i32 %37, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %54, %31
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 1000
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* @SAA7146_MC2, align 4
  %45 = call i32 @saaread(i32 %44)
  %46 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %43, %40
  %51 = phi i1 [ false, %40 ], [ %49, %43 ]
  br i1 %51, label %52, label %57

52:                                               ; preds = %50
  %53 = call i32 (...) @schedule()
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %40

57:                                               ; preds = %50
  %58 = load i32, i32* @SAA7146_I2C_STATUS, align 4
  %59 = call i32 @saawrite(i32 1536, i32 %58)
  %60 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SAA7146_MC2, align 4
  %65 = call i32 @saawrite(i32 %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %80, %57
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 1000
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* @SAA7146_MC2, align 4
  %71 = call i32 @saaread(i32 %70)
  %72 = load i32, i32* @SAA7146_MC2_UPLD_I2C, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %69, %66
  %77 = phi i1 [ false, %66 ], [ %75, %69 ]
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = call i32 (...) @schedule()
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %66

83:                                               ; preds = %76
  ret void
}

declare dso_local i32 @saawrite(i32, i32) #1

declare dso_local i32 @saaread(i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
