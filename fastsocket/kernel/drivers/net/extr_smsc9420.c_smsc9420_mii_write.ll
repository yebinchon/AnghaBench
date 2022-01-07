; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_mii_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc9420.c_smsc9420_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i64 }
%struct.smsc9420_pdata = type { i32 }

@EIO = common dso_local global i32 0, align 4
@MII_ACCESS = common dso_local global i32 0, align 4
@MII_ACCESS_MII_BUSY_ = common dso_local global i32 0, align 4
@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"MII is busy???\00", align 1
@MII_DATA = common dso_local global i32 0, align 4
@MII_ACCESS_MII_WRITE_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MII busy timeout!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i64)* @smsc9420_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_mii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.smsc9420_pdata*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %14 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smsc9420_pdata*
  store %struct.smsc9420_pdata* %17, %struct.smsc9420_pdata** %9, align 8
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %21 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %20, i32 0, i32 0
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %25 = load i32, i32* @MII_ACCESS, align 4
  %26 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %24, i32 %25)
  %27 = load i32, i32* @MII_ACCESS_MII_BUSY_, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @DRV, align 4
  %32 = call i32 @smsc_warn(i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %71

33:                                               ; preds = %4
  %34 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %35 = load i32, i32* @MII_DATA, align 4
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %34, i32 %35, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 31
  %41 = shl i32 %40, 11
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 31
  %44 = shl i32 %43, 6
  %45 = or i32 %41, %44
  %46 = load i32, i32* @MII_ACCESS_MII_WRITE_, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %49 = load i32, i32* @MII_ACCESS, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %48, i32 %49, i32 %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %65, %33
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 5
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %57 = load i32, i32* @MII_ACCESS, align 4
  %58 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %56, i32 %57)
  %59 = load i32, i32* @MII_ACCESS_MII_BUSY_, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  store i32 0, i32* %13, align 4
  br label %71

63:                                               ; preds = %55
  %64 = call i32 @udelay(i32 10)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %52

68:                                               ; preds = %52
  %69 = load i32, i32* @DRV, align 4
  %70 = call i32 @smsc_warn(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %62, %30
  %72 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %9, align 8
  %73 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %13, align 4
  ret i32 %76
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
