; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm9601_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_dm9601.c_dm9601_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i32* }

@DM_RX_OVERHEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"unexpected tiny rx frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @dm9601_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm9601_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DM_RX_OVERHEAD, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %112

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %32, %38
  %40 = sub nsw i32 %39, 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 191
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %106

45:                                               ; preds = %22
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %49, %45
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 2
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %63 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %61, %57
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %75 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %73, %69
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %87 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %85, %81
  %94 = load i32, i32* %6, align 4
  %95 = and i32 %94, 144
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %99 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %97, %93
  store i32 0, i32* %3, align 4
  br label %112

106:                                              ; preds = %22
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @skb_pull(%struct.sk_buff* %107, i32 3)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @skb_trim(%struct.sk_buff* %109, i32 %110)
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %106, %105, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
