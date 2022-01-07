; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_dump_mib_mac_wep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_at76c50x-usb.c_at76_dump_mib_mac_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mib_mac_wep = type { i32, i32*, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MIB_MAC_WEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"at76_get_mib (MAC_WEP) failed: %d\0A\00", align 1
@DBG_MIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [125 x i8] c"%s: MIB MAC_WEP: priv_invoked %u def_key_id %u key_len %u excl_unencr %u wep_icv_err %u wep_excluded %u encr_level %u key %d\00", align 1
@WEP_SMALL_KEY_LEN = common dso_local global i32 0, align 4
@WEP_LARGE_KEY_LEN = common dso_local global i32 0, align 4
@WEP_KEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: MIB MAC_WEP: key %d: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at76_priv*)* @at76_dump_mib_mac_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at76_dump_mib_mac_wep(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mib_mac_wep*, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.mib_mac_wep* @kmalloc(i32 40, i32 %7)
  store %struct.mib_mac_wep* %8, %struct.mib_mac_wep** %6, align 8
  %9 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %10 = icmp ne %struct.mib_mac_wep* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %104

12:                                               ; preds = %1
  %13 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %14 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MIB_MAC_WEP, align 4
  %17 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %18 = call i32 @at76_get_mib(i32 %15, i32 %16, %struct.mib_mac_wep* %17, i32 40)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %12
  %22 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %23 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @wiphy_err(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %101

29:                                               ; preds = %12
  %30 = load i32, i32* @DBG_MIB, align 4
  %31 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %32 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wiphy_name(i32 %35)
  %37 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %38 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %41 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %44 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %47 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %50 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @le32_to_cpu(i32 %51)
  %53 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %54 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %58 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %61 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, i32, i32, ...) @at76_dbg(i32 %30, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %52, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %65 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %29
  %69 = load i32, i32* @WEP_SMALL_KEY_LEN, align 4
  br label %72

70:                                               ; preds = %29
  %71 = load i32, i32* @WEP_LARGE_KEY_LEN, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %97, %72
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @WEP_KEYS, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = load i32, i32* @DBG_MIB, align 4
  %80 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %81 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wiphy_name(i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %88 = getelementptr inbounds %struct.mib_mac_wep, %struct.mib_mac_wep* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @hex2str(i32 %93, i32 %94)
  %96 = call i32 (i32, i8*, i32, i32, i32, ...) @at76_dbg(i32 %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86, i32 %95)
  br label %97

97:                                               ; preds = %78
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %74

100:                                              ; preds = %74
  br label %101

101:                                              ; preds = %100, %21
  %102 = load %struct.mib_mac_wep*, %struct.mib_mac_wep** %6, align 8
  %103 = call i32 @kfree(%struct.mib_mac_wep* %102)
  br label %104

104:                                              ; preds = %101, %11
  ret void
}

declare dso_local %struct.mib_mac_wep* @kmalloc(i32, i32) #1

declare dso_local i32 @at76_get_mib(i32, i32, %struct.mib_mac_wep*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @hex2str(i32, i32) #1

declare dso_local i32 @kfree(%struct.mib_mac_wep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
