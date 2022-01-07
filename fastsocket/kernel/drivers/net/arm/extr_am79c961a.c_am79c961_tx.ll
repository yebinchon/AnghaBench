; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_am79c961a.c_am79c961_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i16, i32, i32, i32, i32, i32 }

@TMD_OWN = common dso_local global i32 0, align 4
@TX_BUFFERS = common dso_local global i32 0, align 4
@TMD_ERR = common dso_local global i32 0, align 4
@TST_RTRY = common dso_local global i32 0, align 4
@TST_LCOL = common dso_local global i32 0, align 4
@TST_LCAR = common dso_local global i32 0, align 4
@TST_UFLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dev_priv*)* @am79c961_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am79c961_tx(%struct.net_device* %0, %struct.dev_priv* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dev_priv*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dev_priv* %1, %struct.dev_priv** %4, align 8
  br label %9

9:                                                ; preds = %126, %2
  %10 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %11 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %14 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 3
  %17 = add nsw i32 %12, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 2
  %21 = call i8* @am_readword(%struct.net_device* %18, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @TMD_OWN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  br label %134

28:                                               ; preds = %9
  %29 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %30 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %34 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TX_BUFFERS, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %40 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @TMD_ERR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %105

46:                                               ; preds = %41
  %47 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %48 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 6
  %55 = call i8* @am_readword(%struct.net_device* %52, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %8, align 4
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 6
  %60 = call i32 @am_writeword(%struct.net_device* %57, i32 %59, i32 0)
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @TST_RTRY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %46
  %66 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %67 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 16
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %46
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @TST_LCOL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %78 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @TST_LCAR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %89 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @TST_UFLO, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %100 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %93
  br label %126

105:                                              ; preds = %41
  %106 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %107 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 4
  %114 = call i8* @am_readword(%struct.net_device* %111, i32 %113)
  %115 = ptrtoint i8* %114 to i16
  store i16 %115, i16* %5, align 2
  %116 = load i16, i16* %5, align 2
  %117 = sext i16 %116 to i32
  %118 = sub nsw i32 0, %117
  %119 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %120 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i16, i16* %121, align 4
  %123 = sext i16 %122 to i32
  %124 = add nsw i32 %123, %118
  %125 = trunc i32 %124 to i16
  store i16 %125, i16* %121, align 4
  br label %126

126:                                              ; preds = %105, %104
  %127 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %128 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %131 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %129, %132
  br i1 %133, label %9, label %134

134:                                              ; preds = %126, %27
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = call i32 @netif_wake_queue(%struct.net_device* %135)
  ret void
}

declare dso_local i8* @am_readword(%struct.net_device*, i32) #1

declare dso_local i32 @am_writeword(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
