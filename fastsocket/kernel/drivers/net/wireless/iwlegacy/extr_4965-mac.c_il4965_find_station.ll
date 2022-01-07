; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_find_station.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_4965-mac.c_il4965_find_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32, %struct.TYPE_8__*, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@IL_INVALID_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IL_STA_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can not find STA %pM total %d\0A\00", align 1
@IL_STA_UCODE_ACTIVE = common dso_local global i32 0, align 4
@IL_STA_UCODE_INPROGRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Requested station info for sta %d before ready.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, i32*)* @il4965_find_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_find_station(%struct.il_priv* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @IL_INVALID_STATION, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IL_STA_ID, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @is_broadcast_ether_addr(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %126

27:                                               ; preds = %18
  %28 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %29 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %67, %27
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %36 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %33
  %41 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %40
  %51 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %52 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @ether_addr_equal(i32 %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %8, align 4
  br label %76

66:                                               ; preds = %50, %40
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %33

70:                                               ; preds = %33
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %73 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @D_ASSOC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @IL_INVALID_STATION, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %120

80:                                               ; preds = %76
  %81 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %82 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @IL_STA_UCODE_ACTIVE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %80
  %93 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @IL_STA_UCODE_ACTIVE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %92
  %105 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %106 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %105, i32 0, i32 2
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IL_STA_UCODE_INPROGRESS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %104, %80
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @IL_ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @IL_INVALID_STATION, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %116, %104, %92, %76
  %121 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %122 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %121, i32 0, i32 1
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %120, %22
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @D_ASSOC(i8*, i32*, i32) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
