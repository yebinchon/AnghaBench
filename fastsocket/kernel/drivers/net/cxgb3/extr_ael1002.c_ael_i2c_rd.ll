; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael_i2c_rd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael_i2c_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@AEL_I2C_CTRL = common dso_local global i32 0, align 4
@AEL_I2C_STAT = common dso_local global i32 0, align 4
@AEL_I2C_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"PHY %u i2c read of dev.addr %#x.%#x timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32, i32)* @ael_i2c_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael_i2c_rd(%struct.cphy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.cphy*, %struct.cphy** %5, align 8
  %13 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %14 = load i32, i32* @AEL_I2C_CTRL, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %16, 256
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @t3_mdio_write(%struct.cphy* %12, i32 %13, i32 %14, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %56, %25
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 200
  br i1 %28, label %29, label %59

29:                                               ; preds = %26
  %30 = call i32 @msleep(i32 1)
  %31 = load %struct.cphy*, %struct.cphy** %5, align 8
  %32 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %33 = load i32, i32* @AEL_I2C_STAT, align 4
  %34 = call i32 @t3_mdio_read(%struct.cphy* %31, i32 %32, i32 %33, i32* %10)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %72

39:                                               ; preds = %29
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load %struct.cphy*, %struct.cphy** %5, align 8
  %45 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %46 = load i32, i32* @AEL_I2C_DATA, align 4
  %47 = call i32 @t3_mdio_read(%struct.cphy* %44, i32 %45, i32 %46, i32* %11)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %72

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  %54 = lshr i32 %53, 8
  store i32 %54, i32* %4, align 4
  br label %72

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %26

59:                                               ; preds = %26
  %60 = load %struct.cphy*, %struct.cphy** %5, align 8
  %61 = getelementptr inbounds %struct.cphy, %struct.cphy* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cphy*, %struct.cphy** %5, align 8
  %64 = getelementptr inbounds %struct.cphy, %struct.cphy* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @CH_WARN(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @ETIMEDOUT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %59, %52, %50, %37, %23
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @t3_mdio_write(%struct.cphy*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @CH_WARN(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
