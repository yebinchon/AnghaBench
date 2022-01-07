; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_send_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_send_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_3__ = type { %struct.mmc_data* }
%struct.mmc_data = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@HOST_F_XMIT = common dso_local global i32 0, align 4
@AU1XMMC_MAX_TRANSFER = common dso_local global i32 0, align 4
@SD_STATUS_TH = common dso_local global i32 0, align 4
@SD_CONFIG_TH = common dso_local global i32 0, align 4
@HOST_F_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*)* @au1xmmc_send_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_send_pio(%struct.au1xmmc_host* %0) #0 {
  %2 = alloca %struct.au1xmmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %2, align 8
  %11 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.mmc_data*, %struct.mmc_data** %14, align 8
  store %struct.mmc_data* %15, %struct.mmc_data** %3, align 8
  %16 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HOST_F_XMIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %150

23:                                               ; preds = %1
  %24 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 0
  %26 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  %27 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %28 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %26, i64 %30
  store %struct.scatterlist* %31, %struct.scatterlist** %10, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %33 = call i8* @sg_virt(%struct.scatterlist* %32)
  %34 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %35 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %33, i64 %38
  store i8* %39, i8** %7, align 8
  %40 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 0
  %42 = load %struct.scatterlist*, %struct.scatterlist** %41, align 8
  %43 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %44 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %42, i64 %46
  %48 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %51 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %49, %53
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %57 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %55, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %23
  %62 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %63 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  br label %68

66:                                               ; preds = %23
  %67 = load i32, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %65, %61 ], [ %67, %66 ]
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @AU1XMMC_MAX_TRANSFER, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @AU1XMMC_MAX_TRANSFER, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %73, %68
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %99, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %81 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %82 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %81)
  %83 = call i32 @au_readl(i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @SD_STATUS_TH, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  br label %102

89:                                               ; preds = %80
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %7, align 8
  %92 = load i8, i8* %90, align 1
  store i8 %92, i8* %8, align 1
  %93 = load i8, i8* %8, align 1
  %94 = zext i8 %93 to i64
  %95 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %96 = call i32 @HOST_TXPORT(%struct.au1xmmc_host* %95)
  %97 = call i32 @au_writel(i64 %94, i32 %96)
  %98 = call i32 (...) @au_sync()
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %76

102:                                              ; preds = %88, %76
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %105 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, %103
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %111 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, %109
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %102
  %119 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %120 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %125 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 8
  br label %127

127:                                              ; preds = %118, %102
  %128 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %129 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %127
  %134 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %135 = load i32, i32* @SD_CONFIG_TH, align 4
  %136 = call i32 @IRQ_OFF(%struct.au1xmmc_host* %134, i32 %135)
  %137 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %138 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @HOST_F_STOP, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %133
  %144 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %145 = call i32 @SEND_STOP(%struct.au1xmmc_host* %144)
  br label %146

146:                                              ; preds = %143, %133
  %147 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %148 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %147, i32 0, i32 1
  %149 = call i32 @tasklet_schedule(i32* %148)
  br label %150

150:                                              ; preds = %22, %146, %127
  ret void
}

declare dso_local i8* @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @HOST_STATUS(%struct.au1xmmc_host*) #1

declare dso_local i32 @au_writel(i64, i32) #1

declare dso_local i32 @HOST_TXPORT(%struct.au1xmmc_host*) #1

declare dso_local i32 @au_sync(...) #1

declare dso_local i32 @IRQ_OFF(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @SEND_STOP(%struct.au1xmmc_host*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
