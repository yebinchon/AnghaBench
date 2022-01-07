; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_mii_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_mii_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i64 }
%struct.smsc9420_pdata = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MII_ACCESS = common dso_local global i32 0, align 4
@MII_ACCESS_MII_BUSY_ = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"MII is busy???\00", align 1
@MII_ACCESS_MII_READ_ = common dso_local global i32 0, align 4
@MII_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MII busy timeout!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @smsc9420_mii_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_mii_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smsc9420_pdata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.smsc9420_pdata*
  store %struct.smsc9420_pdata* %15, %struct.smsc9420_pdata** %7, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %19 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %23 = load i32, i32* @MII_ACCESS, align 4
  %24 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %22, i32 %23)
  %25 = load i32, i32* @MII_ACCESS_MII_BUSY_, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @DRV, align 4
  %30 = call i32 @smsc_warn(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %67

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 31
  %34 = shl i32 %33, 11
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 31
  %37 = shl i32 %36, 6
  %38 = or i32 %34, %37
  %39 = load i32, i32* @MII_ACCESS_MII_READ_, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %42 = load i32, i32* @MII_ACCESS, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %41, i32 %42, i32 %43)
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %61, %31
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 5
  br i1 %47, label %48, label %64

48:                                               ; preds = %45
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %50 = load i32, i32* @MII_ACCESS, align 4
  %51 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %49, i32 %50)
  %52 = load i32, i32* @MII_ACCESS_MII_BUSY_, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %57 = load i32, i32* @MII_DATA, align 4
  %58 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  br label %67

59:                                               ; preds = %48
  %60 = call i32 @udelay(i32 10)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %45

64:                                               ; preds = %45
  %65 = load i32, i32* @DRV, align 4
  %66 = call i32 @smsc_warn(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %55, %28
  %68 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %7, align 8
  %69 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @smsc_warn(i32, i8*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
