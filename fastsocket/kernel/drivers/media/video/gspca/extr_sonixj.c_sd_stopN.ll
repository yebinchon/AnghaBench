; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_stopN.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_sd_stopN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@sd_stopN.stophv7131 = internal constant [8 x i32] [i32 161, i32 17, i32 2, i32 9, i32 0, i32 0, i32 0, i32 16], align 16
@sd_stopN.stopmi0360 = internal constant [8 x i32] [i32 177, i32 93, i32 7, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sd_stopN.stopov7648 = internal constant [8 x i32] [i32 161, i32 33, i32 118, i32 32, i32 0, i32 0, i32 0, i32 16], align 16
@sd_stopN.stopsoi768 = internal constant [8 x i32] [i32 161, i32 33, i32 18, i32 128, i32 0, i32 0, i32 0, i32 16], align 16
@SEN_CLK_EN = common dso_local global i32 0, align 4
@LED = common dso_local global i32 0, align 4
@V_TX_EN = common dso_local global i32 0, align 4
@SCL_SEL_OD = common dso_local global i32 0, align 4
@S_PWR_DN = common dso_local global i32 0, align 4
@SYS_SEL_48M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @sd_stopN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_stopN(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sd*, %struct.sd** %3, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SEN_CLK_EN, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %85 [
    i32 141, label %20
    i32 140, label %20
    i32 130, label %20
    i32 128, label %20
    i32 139, label %36
    i32 138, label %46
    i32 137, label %46
    i32 136, label %56
    i32 135, label %56
    i32 131, label %56
    i32 134, label %64
    i32 133, label %64
    i32 132, label %74
    i32 129, label %82
  ]

20:                                               ; preds = %1, %1, %1, %1
  %21 = load i32, i32* @LED, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @reg_w1(%struct.gspca_dev* %24, i32 1, i32 %25)
  %27 = load i32, i32* @LED, align 4
  %28 = load i32, i32* @V_TX_EN, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @reg_w1(%struct.gspca_dev* %33, i32 1, i32 %34)
  br label %85

36:                                               ; preds = %1
  %37 = load i32, i32* @V_TX_EN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @reg_w1(%struct.gspca_dev* %41, i32 1, i32 %42)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @i2c_w8(%struct.gspca_dev* %44, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @sd_stopN.stophv7131, i64 0, i64 0))
  br label %85

46:                                               ; preds = %1, %1
  %47 = load i32, i32* @V_TX_EN, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @reg_w1(%struct.gspca_dev* %51, i32 1, i32 %52)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = call i32 @i2c_w8(%struct.gspca_dev* %54, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @sd_stopN.stopmi0360, i64 0, i64 0))
  br label %85

56:                                               ; preds = %1, %1, %1
  %57 = load i32, i32* @V_TX_EN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @reg_w1(%struct.gspca_dev* %61, i32 1, i32 %62)
  br label %85

64:                                               ; preds = %1, %1
  %65 = load i32, i32* @V_TX_EN, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @reg_w1(%struct.gspca_dev* %69, i32 1, i32 %70)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = call i32 @i2c_w8(%struct.gspca_dev* %72, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @sd_stopN.stopov7648, i64 0, i64 0))
  br label %85

74:                                               ; preds = %1
  %75 = load i32, i32* @V_TX_EN, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @reg_w1(%struct.gspca_dev* %79, i32 1, i32 %80)
  br label %85

82:                                               ; preds = %1
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = call i32 @i2c_w8(%struct.gspca_dev* %83, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @sd_stopN.stopsoi768, i64 0, i64 0))
  br label %85

85:                                               ; preds = %1, %82, %74, %64, %56, %46, %36, %20
  %86 = load i32, i32* @SCL_SEL_OD, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @reg_w1(%struct.gspca_dev* %89, i32 1, i32 %90)
  %92 = load i32, i32* @S_PWR_DN, align 4
  %93 = load i32, i32* %4, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %4, align 4
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @reg_w1(%struct.gspca_dev* %95, i32 1, i32 %96)
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @reg_w1(%struct.gspca_dev* %98, i32 23, i32 %99)
  %101 = load i32, i32* @SYS_SEL_48M, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @reg_w1(%struct.gspca_dev* %105, i32 1, i32 %106)
  %108 = load i32, i32* @LED, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @reg_w1(%struct.gspca_dev* %111, i32 1, i32 %112)
  ret void
}

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_w8(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
