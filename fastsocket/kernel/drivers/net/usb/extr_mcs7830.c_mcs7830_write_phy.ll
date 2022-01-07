; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_write_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_write_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HIF_REG_PHY_CMD1_WRITE = common dso_local global i32 0, align 4
@HIF_REG_PHY_CMD1_PHYADDR = common dso_local global i32 0, align 4
@HIF_REG_PHY_CMD2_PEND_FLAG_BIT = common dso_local global i32 0, align 4
@HIF_REG_PHY_DATA = common dso_local global i32 0, align 4
@HIF_REG_PHY_CMD1 = common dso_local global i32 0, align 4
@HIF_REG_PHY_CMD2_READY_FLAG_BIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"write PHY reg %02x: %04x (%d tries)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32)* @mcs7830_write_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs7830_write_phy(%struct.usbnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %12 = load i32, i32* @HIF_REG_PHY_CMD1_WRITE, align 4
  %13 = load i32, i32* @HIF_REG_PHY_CMD1_PHYADDR, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds i32, i32* %11, i64 1
  %16 = load i32, i32* @HIF_REG_PHY_CMD2_PEND_FLAG_BIT, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 31
  %19 = or i32 %16, %18
  store i32 %19, i32* %15, align 4
  %20 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @cpu_to_le16(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = load i32, i32* @HIF_REG_PHY_DATA, align 4
  %27 = call i32 @mcs7830_set_reg(%struct.usbnet* %25, i32 %26, i32 2, i32* %9)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %77

31:                                               ; preds = %3
  %32 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %33 = load i32, i32* @HIF_REG_PHY_CMD1, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %35 = call i32 @mcs7830_set_reg(%struct.usbnet* %32, i32 %33, i32 2, i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %77

39:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %45 = load i32, i32* @HIF_REG_PHY_CMD1, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %47 = call i32 @mcs7830_get_reg(%struct.usbnet* %44, i32 %45, i32 2, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HIF_REG_PHY_CMD2_READY_FLAG_BIT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %43
  br label %64

57:                                               ; preds = %50
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  %60 = call i32 @msleep(i32 1)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %40

64:                                               ; preds = %56, %40
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %77

68:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  %69 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %70 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @dev_dbg(i32* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %67, %38, %30
  %78 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @mcs7830_set_reg(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @mcs7830_get_reg(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
