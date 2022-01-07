; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_dump_mib_mac_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_dump_mib_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mib_mac_addr = type { i32, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MIB_MAC_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"at76_get_mib (MAC_ADDR) failed: %d\0A\00", align 1
@DBG_MIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: MIB MAC_ADDR: mac_addr %pM res 0x%x 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s: MIB MAC_ADDR: group addr %d: %pM, status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at76_priv*)* @at76_dump_mib_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at76_dump_mib_mac_addr(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mib_mac_addr*, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mib_mac_addr* @kmalloc(i32 32, i32 %6)
  store %struct.mib_mac_addr* %7, %struct.mib_mac_addr** %5, align 8
  %8 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %9 = icmp ne %struct.mib_mac_addr* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %88

11:                                               ; preds = %1
  %12 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %13 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MIB_MAC_ADDR, align 4
  %16 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %17 = call i32 @at76_get_mib(i32 %14, i32 %15, %struct.mib_mac_addr* %16, i32 32)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %11
  %21 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %22 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @wiphy_err(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %85

28:                                               ; preds = %11
  %29 = load i32, i32* @DBG_MIB, align 4
  %30 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %31 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wiphy_name(i32 %34)
  %36 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %37 = getelementptr inbounds %struct.mib_mac_addr, %struct.mib_mac_addr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %40 = getelementptr inbounds %struct.mib_mac_addr, %struct.mib_mac_addr* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %45 = getelementptr inbounds %struct.mib_mac_addr, %struct.mib_mac_addr* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @at76_dbg(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38, i32 %43, i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %81, %28
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %53 = getelementptr inbounds %struct.mib_mac_addr, %struct.mib_mac_addr* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %51, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = load i32, i32* @DBG_MIB, align 4
  %59 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %60 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wiphy_name(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %67 = getelementptr inbounds %struct.mib_mac_addr, %struct.mib_mac_addr* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %74 = getelementptr inbounds %struct.mib_mac_addr, %struct.mib_mac_addr* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @at76_dbg(i32 %58, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65, i32 %72, i32 %79)
  br label %81

81:                                               ; preds = %57
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %50

84:                                               ; preds = %50
  br label %85

85:                                               ; preds = %84, %20
  %86 = load %struct.mib_mac_addr*, %struct.mib_mac_addr** %5, align 8
  %87 = call i32 @kfree(%struct.mib_mac_addr* %86)
  br label %88

88:                                               ; preds = %85, %10
  ret void
}

declare dso_local %struct.mib_mac_addr* @kmalloc(i32, i32) #1

declare dso_local i32 @at76_get_mib(i32, i32, %struct.mib_mac_addr*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @kfree(%struct.mib_mac_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
