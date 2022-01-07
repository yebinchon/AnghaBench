; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_get_int_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_get_int_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.btmrvl_sdio_card* }
%struct.btmrvl_sdio_card = type { i32 }

@HOST_INTSTATUS_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"sdio_readb: read int status register failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"sdio_ireg = 0x%x\00", align 1
@DN_LD_HOST_INT_STATUS = common dso_local global i32 0, align 4
@UP_LD_HOST_INT_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"sdio_writeb: clear int status register failed\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"tx_done already received:  int_status=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_private*, i32*)* @btmrvl_sdio_get_int_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_get_int_status(%struct.btmrvl_private* %0, i32* %1) #0 {
  %3 = alloca %struct.btmrvl_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btmrvl_sdio_card*, align 8
  store %struct.btmrvl_private* %0, %struct.btmrvl_private** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %9 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %10, align 8
  store %struct.btmrvl_sdio_card* %11, %struct.btmrvl_sdio_card** %7, align 8
  %12 = load i32*, i32** %4, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %7, align 8
  %14 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HOST_INTSTATUS_REG, align 4
  %17 = call i32 @sdio_readb(i32 %15, i32 %16, i32* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = call i32 @BT_ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %78

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %7, align 8
  %31 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* @DN_LD_HOST_INT_STATUS, align 4
  %36 = load i32, i32* @UP_LD_HOST_INT_STATUS, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = load i32, i32* @HOST_INTSTATUS_REG, align 4
  %40 = call i32 @sdio_writeb(i32 %32, i32 %38, i32 %39, i32* %5)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = call i32 @BT_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %78

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DN_LD_HOST_INT_STATUS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %55 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @BT_DBG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %60)
  br label %66

62:                                               ; preds = %53
  %63 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %64 = getelementptr inbounds %struct.btmrvl_private, %struct.btmrvl_private* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %59
  br label %67

67:                                               ; preds = %66, %48
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @UP_LD_HOST_INT_STATUS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.btmrvl_private*, %struct.btmrvl_private** %3, align 8
  %74 = call i32 @btmrvl_sdio_card_to_host(%struct.btmrvl_private* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %4, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %43, %20
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @sdio_readb(i32, i32, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @sdio_writeb(i32, i32, i32, i32*) #1

declare dso_local i32 @btmrvl_sdio_card_to_host(%struct.btmrvl_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
