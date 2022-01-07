; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ADDRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to write ADDRL: %d\00", align 1
@ADDRH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to write ADDRH: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_set_mac_address(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %13, %21
  %23 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %22, %30
  %32 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 24
  %40 = or i32 %31, %39
  store i32 %40, i32* %4, align 4
  %41 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %42 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %49 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %47, %55
  store i32 %56, i32* %5, align 4
  %57 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %58 = load i32, i32* @ADDRL, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @smsc95xx_write_reg(%struct.usbnet* %57, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %1
  %64 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @devwarn(%struct.usbnet* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %81

68:                                               ; preds = %1
  %69 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %70 = load i32, i32* @ADDRH, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @smsc95xx_write_reg(%struct.usbnet* %69, i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @devwarn(%struct.usbnet* %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %81

80:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %75, %63
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @devwarn(%struct.usbnet*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
