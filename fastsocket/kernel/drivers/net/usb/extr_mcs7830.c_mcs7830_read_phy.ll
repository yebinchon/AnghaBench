; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_read_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_read_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HIF_REG_PHY_CMD1_READ = common dso_local global i32 0, align 4
@HIF_REG_PHY_CMD1_PHYADDR = common dso_local global i32 0, align 4
@HIF_REG_PHY_CMD2_PEND_FLAG_BIT = common dso_local global i32 0, align 4
@HIF_REG_PHY_CMD1 = common dso_local global i32 0, align 4
@HIF_REG_PHY_CMD2_READY_FLAG_BIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HIF_REG_PHY_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"read PHY reg %02x: %04x (%d tries)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @mcs7830_read_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs7830_read_phy(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @HIF_REG_PHY_CMD1_READ, align 4
  %11 = load i32, i32* @HIF_REG_PHY_CMD1_PHYADDR, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds i32, i32* %9, i64 1
  %14 = load i32, i32* @HIF_REG_PHY_CMD2_PEND_FLAG_BIT, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %21 = load i32, i32* @HIF_REG_PHY_CMD1, align 4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %23 = call i32 @mcs7830_set_reg(%struct.usbnet* %20, i32 %21, i32 2, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %74

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %33 = load i32, i32* @HIF_REG_PHY_CMD1, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %35 = call i32 @mcs7830_get_reg(%struct.usbnet* %32, i32 %33, i32 2, i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HIF_REG_PHY_CMD2_READY_FLAG_BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %31
  br label %52

45:                                               ; preds = %38
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  %48 = call i32 @msleep(i32 1)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %28

52:                                               ; preds = %44, %28
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %74

56:                                               ; preds = %52
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = load i32, i32* @HIF_REG_PHY_DATA, align 4
  %59 = call i32 @mcs7830_get_reg(%struct.usbnet* %57, i32 %58, i32 2, i32* %7)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %74

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @dev_dbg(i32* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %63, %62, %55, %26
  %75 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %76 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mcs7830_set_reg(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @mcs7830_get_reg(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
