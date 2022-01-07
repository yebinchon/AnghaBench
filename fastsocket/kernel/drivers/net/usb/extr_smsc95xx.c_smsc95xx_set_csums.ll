; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_set_csums.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_set_csums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64* }
%struct.smsc95xx_priv = type { i64, i64 }

@COE_CR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to read COE_CR: %d\00", align 1
@Tx_COE_EN_ = common dso_local global i32 0, align 4
@Rx_COE_EN_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to write COE_CR: %d\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"COE_CR = 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_set_csums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_set_csums(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.smsc95xx_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %12, %struct.smsc95xx_priv** %4, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %14 = load i32, i32* @COE_CR, align 4
  %15 = call i32 @smsc95xx_read_reg(%struct.usbnet* %13, i32 %14, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @devwarn(%struct.usbnet* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %72

23:                                               ; preds = %1
  %24 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %25 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @Tx_COE_EN_, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @Tx_COE_EN_, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %39 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @Rx_COE_EN_, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load i32, i32* @Rx_COE_EN_, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %53 = load i32, i32* @COE_CR, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @smsc95xx_write_reg(%struct.usbnet* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @devwarn(%struct.usbnet* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %72

63:                                               ; preds = %51
  %64 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %65 = call i64 @netif_msg_hw(%struct.usbnet* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @devdbg(%struct.usbnet* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %58, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @smsc95xx_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, i32) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i64 @netif_msg_hw(%struct.usbnet*) #1

declare dso_local i32 @devdbg(%struct.usbnet*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
