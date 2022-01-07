; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_cmd_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_cmd_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i32, i32, i64, %struct.mmc_request* }
%struct.mmc_request = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i32*, i32 }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@SD_RESP3 = common dso_local global i64 0, align 8
@SD_RESP2 = common dso_local global i64 0, align 8
@SD_RESP1 = common dso_local global i64 0, align 8
@SD_RESP0 = common dso_local global i64 0, align 8
@SD_STATUS_SC = common dso_local global i32 0, align 4
@SD_STATUS_WC = common dso_local global i32 0, align 4
@SD_STATUS_RC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@HOST_F_XMIT = common dso_local global i32 0, align 4
@HOST_F_RECV = common dso_local global i32 0, align 4
@SD_CONFIG_TH = common dso_local global i32 0, align 4
@SD_CONFIG_RA = common dso_local global i32 0, align 4
@SD_CONFIG_RF = common dso_local global i32 0, align 4
@HOST_S_DATA = common dso_local global i32 0, align 4
@HOST_F_DMA = common dso_local global i32 0, align 4
@SD_STATUS_DB = common dso_local global i32 0, align 4
@SD_STATUS_NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*, i32)* @au1xmmc_cmd_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_cmd_complete(%struct.au1xmmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.au1xmmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %11 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %10, i32 0, i32 4
  %12 = load %struct.mmc_request*, %struct.mmc_request** %11, align 8
  store %struct.mmc_request* %12, %struct.mmc_request** %5, align 8
  %13 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %13, i32 0, i32 4
  %15 = load %struct.mmc_request*, %struct.mmc_request** %14, align 8
  %16 = icmp ne %struct.mmc_request* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %173

18:                                               ; preds = %2
  %19 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %19, i32 0, i32 0
  %21 = load %struct.mmc_command*, %struct.mmc_command** %20, align 8
  store %struct.mmc_command* %21, %struct.mmc_command** %6, align 8
  %22 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %122

30:                                               ; preds = %18
  %31 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %32 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MMC_RSP_136, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %109

37:                                               ; preds = %30
  %38 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SD_RESP3, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i8* @au_readl(i64 %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %44, i32* %45, align 16
  %46 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %47 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SD_RESP2, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i8* @au_readl(i64 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %55 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SD_RESP1, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i8* @au_readl(i64 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %60, i32* %61, align 8
  %62 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %63 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SD_RESP0, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i8* @au_readl(i64 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %105, %37
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %108

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 16777215
  %79 = shl i32 %78, 8
  %80 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %81 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %88, label %104

88:                                               ; preds = %73
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -16777216
  %95 = lshr i32 %94, 24
  %96 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %97 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %95
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %88, %73
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %70

108:                                              ; preds = %70
  br label %121

109:                                              ; preds = %30
  %110 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %111 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SD_RESP0, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i8* @au_readl(i64 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %118 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %109, %108
  br label %122

122:                                              ; preds = %121, %18
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @SD_STATUS_SC, align 4
  %125 = load i32, i32* @SD_STATUS_WC, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @SD_STATUS_RC, align 4
  %128 = or i32 %126, %127
  %129 = and i32 %123, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load i32, i32* @EILSEQ, align 4
  %133 = sub nsw i32 0, %132
  %134 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %135 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %131, %122
  %137 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %138 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @HOST_F_XMIT, align 4
  %141 = load i32, i32* @HOST_F_RECV, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %139, %142
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %148 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %146, %136
  %152 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %153 = load i32, i32* @SD_CONFIG_TH, align 4
  %154 = load i32, i32* @SD_CONFIG_RA, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @SD_CONFIG_RF, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @IRQ_OFF(%struct.au1xmmc_host* %152, i32 %157)
  %159 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %160 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %159, i32 0, i32 2
  %161 = call i32 @tasklet_schedule(i32* %160)
  br label %173

162:                                              ; preds = %146
  %163 = load i32, i32* @HOST_S_DATA, align 4
  %164 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %165 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %3, align 8
  %167 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @HOST_F_DMA, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  br label %173

173:                                              ; preds = %17, %151, %172, %162
  ret void
}

declare dso_local i8* @au_readl(i64) #1

declare dso_local i32 @IRQ_OFF(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
