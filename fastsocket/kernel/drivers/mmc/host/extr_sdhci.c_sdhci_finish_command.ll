; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_finish_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_sdhci.c_sdhci_finish_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32, i32*, i32, i64 }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SDHCI_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @sdhci_finish_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_finish_command(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp eq %struct.TYPE_2__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %1
  %19 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %20 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MMC_RSP_136, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %72, %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %75

31:                                               ; preds = %28
  %32 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %33 = load i64, i64* @SDHCI_RESPONSE, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 3, %34
  %36 = mul nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %33, %37
  %39 = call i32 @sdhci_readl(%struct.sdhci_host* %32, i64 %38)
  %40 = shl i32 %39, 8
  %41 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %42 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %40, i32* %48, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %71

51:                                               ; preds = %31
  %52 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %53 = load i64, i64* @SDHCI_RESPONSE, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sub nsw i32 3, %54
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = sub nsw i64 %58, 1
  %60 = call i32 @sdhci_readb(%struct.sdhci_host* %52, i64 %59)
  %61 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %62 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %60
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %51, %31
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %28

75:                                               ; preds = %28
  br label %86

76:                                               ; preds = %18
  %77 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %78 = load i64, i64* @SDHCI_RESPONSE, align 8
  %79 = call i32 @sdhci_readl(%struct.sdhci_host* %77, i64 %78)
  %80 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %81 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %76, %75
  br label %87

87:                                               ; preds = %86, %1
  %88 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %89 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %93 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %98 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %103 = call i32 @sdhci_finish_data(%struct.sdhci_host* %102)
  br label %104

104:                                              ; preds = %101, %96, %87
  %105 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %106 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %104
  %112 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %113 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %112, i32 0, i32 1
  %114 = call i32 @tasklet_schedule(i32* %113)
  br label %115

115:                                              ; preds = %111, %104
  %116 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %117 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %116, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %117, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sdhci_readl(%struct.sdhci_host*, i64) #1

declare dso_local i32 @sdhci_readb(%struct.sdhci_host*, i64) #1

declare dso_local i32 @sdhci_finish_data(%struct.sdhci_host*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
