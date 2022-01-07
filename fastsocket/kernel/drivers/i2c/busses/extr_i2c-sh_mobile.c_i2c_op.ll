; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_i2c_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-sh_mobile.c_i2c_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_i2c_data = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"op %d, data in 0x%02x\0A\00", align 1
@ICIC_WAITE = common dso_local global i32 0, align 4
@ICIC_ALE = common dso_local global i32 0, align 4
@ICIC_TACKE = common dso_local global i32 0, align 4
@ICIC_DTEE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"op %d, data out 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.sh_mobile_i2c_data*, i32, i8)* @i2c_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @i2c_op(%struct.sh_mobile_i2c_data* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.sh_mobile_i2c_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store %struct.sh_mobile_i2c_data* %0, %struct.sh_mobile_i2c_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  store i8 0, i8* %7, align 1
  %9 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %10 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i8, i8* %6, align 1
  %14 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12, i8 zeroext %13)
  %15 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %16 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %15, i32 0, i32 1
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %92 [
    i32 132, label %20
    i32 130, label %24
    i32 131, label %38
    i32 129, label %44
    i32 128, label %53
    i32 135, label %57
    i32 134, label %61
    i32 133, label %75
  ]

20:                                               ; preds = %3
  %21 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %22 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %21)
  %23 = call i32 @iowrite8(i32 148, i32 %22)
  br label %92

24:                                               ; preds = %3
  %25 = load i32, i32* @ICIC_WAITE, align 4
  %26 = load i32, i32* @ICIC_ALE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ICIC_TACKE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %31 = call i32 @ICIC(%struct.sh_mobile_i2c_data* %30)
  %32 = call i32 @iowrite8(i32 %29, i32 %31)
  %33 = load i8, i8* %6, align 1
  %34 = zext i8 %33 to i32
  %35 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %36 = call i32 @ICDR(%struct.sh_mobile_i2c_data* %35)
  %37 = call i32 @iowrite8(i32 %34, i32 %36)
  br label %92

38:                                               ; preds = %3
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %42 = call i32 @ICDR(%struct.sh_mobile_i2c_data* %41)
  %43 = call i32 @iowrite8(i32 %40, i32 %42)
  br label %92

44:                                               ; preds = %3
  %45 = load i8, i8* %6, align 1
  %46 = zext i8 %45 to i32
  %47 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %48 = call i32 @ICDR(%struct.sh_mobile_i2c_data* %47)
  %49 = call i32 @iowrite8(i32 %46, i32 %48)
  %50 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %51 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %50)
  %52 = call i32 @iowrite8(i32 144, i32 %51)
  br label %92

53:                                               ; preds = %3
  %54 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %55 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %54)
  %56 = call i32 @iowrite8(i32 129, i32 %55)
  br label %92

57:                                               ; preds = %3
  %58 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %59 = call i32 @ICDR(%struct.sh_mobile_i2c_data* %58)
  %60 = call zeroext i8 @ioread8(i32 %59)
  store i8 %60, i8* %7, align 1
  br label %92

61:                                               ; preds = %3
  %62 = load i32, i32* @ICIC_DTEE, align 4
  %63 = load i32, i32* @ICIC_WAITE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @ICIC_ALE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ICIC_TACKE, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %70 = call i32 @ICIC(%struct.sh_mobile_i2c_data* %69)
  %71 = call i32 @iowrite8(i32 %68, i32 %70)
  %72 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %73 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %72)
  %74 = call i32 @iowrite8(i32 192, i32 %73)
  br label %92

75:                                               ; preds = %3
  %76 = load i32, i32* @ICIC_DTEE, align 4
  %77 = load i32, i32* @ICIC_WAITE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @ICIC_ALE, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @ICIC_TACKE, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %84 = call i32 @ICIC(%struct.sh_mobile_i2c_data* %83)
  %85 = call i32 @iowrite8(i32 %82, i32 %84)
  %86 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %87 = call i32 @ICDR(%struct.sh_mobile_i2c_data* %86)
  %88 = call zeroext i8 @ioread8(i32 %87)
  store i8 %88, i8* %7, align 1
  %89 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %90 = call i32 @ICCR(%struct.sh_mobile_i2c_data* %89)
  %91 = call i32 @iowrite8(i32 192, i32 %90)
  br label %92

92:                                               ; preds = %3, %75, %61, %57, %53, %44, %38, %24, %20
  %93 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %94 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %93, i32 0, i32 1
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load %struct.sh_mobile_i2c_data*, %struct.sh_mobile_i2c_data** %4, align 8
  %98 = getelementptr inbounds %struct.sh_mobile_i2c_data, %struct.sh_mobile_i2c_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i8, i8* %7, align 1
  %102 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %100, i8 zeroext %101)
  %103 = load i8, i8* %7, align 1
  ret i8 %103
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8 zeroext) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @ICCR(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @ICIC(%struct.sh_mobile_i2c_data*) #1

declare dso_local i32 @ICDR(%struct.sh_mobile_i2c_data*) #1

declare dso_local zeroext i8 @ioread8(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
