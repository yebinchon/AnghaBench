; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_receive_pio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_au1xmmc.c_au1xmmc_receive_pio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1xmmc_host = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.mmc_data* }
%struct.mmc_data = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@HOST_F_RECV = common dso_local global i32 0, align 4
@AU1XMMC_MAX_TRANSFER = common dso_local global i32 0, align 4
@SD_STATUS_NE = common dso_local global i32 0, align 4
@SD_STATUS_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"RX CRC Error [%d + %d].\0A\00", align 1
@SD_STATUS_RO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RX Overrun [%d + %d]\0A\00", align 1
@SD_STATUS_RU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"RX Underrun [%d + %d]\0A\00", align 1
@SD_CONFIG_NE = common dso_local global i32 0, align 4
@HOST_F_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1xmmc_host*)* @au1xmmc_receive_pio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1xmmc_receive_pio(%struct.au1xmmc_host* %0) #0 {
  %2 = alloca %struct.au1xmmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  store %struct.au1xmmc_host* %0, %struct.au1xmmc_host** %2, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %11 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %11, i32 0, i32 5
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.mmc_data*, %struct.mmc_data** %14, align 8
  store %struct.mmc_data* %15, %struct.mmc_data** %3, align 8
  %16 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %17 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HOST_F_RECV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %213

23:                                               ; preds = %1
  %24 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %25 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %29 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %33 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %23
  %38 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 0
  %40 = load %struct.scatterlist*, %struct.scatterlist** %39, align 8
  %41 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %42 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i64 %44
  store %struct.scatterlist* %45, %struct.scatterlist** %10, align 8
  %46 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %47 = call i8* @sg_virt(%struct.scatterlist* %46)
  %48 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %49 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %47, i64 %52
  store i8* %53, i8** %7, align 8
  %54 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 0
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  %57 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %58 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i64 %60
  %62 = call i32 @sg_dma_len(%struct.scatterlist* %61)
  %63 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %64 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %62, %66
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %37
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %37
  br label %74

74:                                               ; preds = %73, %23
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @AU1XMMC_MAX_TRANSFER, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @AU1XMMC_MAX_TRANSFER, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %74
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %159, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %162

85:                                               ; preds = %81
  %86 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %87 = call i32 @HOST_STATUS(%struct.au1xmmc_host* %86)
  %88 = call i32 @au_readl(i32 %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @SD_STATUS_NE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %85
  br label %162

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @SD_STATUS_RC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %101 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %100, i32 0, i32 3
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %106 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %108, i32 %109)
  br label %162

111:                                              ; preds = %94
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @SD_STATUS_RO, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %118 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %117, i32 0, i32 3
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %123 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %125, i32 %126)
  br label %162

128:                                              ; preds = %111
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @SD_STATUS_RU, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %135 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %134, i32 0, i32 3
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %140 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %138, i32 %142, i32 %143)
  br label %162

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %148 = call i32 @HOST_RXPORT(%struct.au1xmmc_host* %147)
  %149 = call i32 @au_readl(i32 %148)
  store i32 %149, i32* %9, align 4
  %150 = load i8*, i8** %7, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load i32, i32* %9, align 4
  %154 = and i32 %153, 255
  %155 = trunc i32 %154 to i8
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  store i8 %155, i8* %156, align 1
  br label %158

158:                                              ; preds = %152, %146
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %5, align 4
  br label %81

162:                                              ; preds = %133, %116, %99, %93, %81
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %165 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, %163
  store i32 %168, i32* %166, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %171 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, %169
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %162
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %183 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %184, align 8
  %187 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %188 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  store i32 0, i32* %189, align 8
  br label %190

190:                                              ; preds = %181, %177, %162
  %191 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %192 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %213

196:                                              ; preds = %190
  %197 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %198 = load i32, i32* @SD_CONFIG_NE, align 4
  %199 = call i32 @IRQ_OFF(%struct.au1xmmc_host* %197, i32 %198)
  %200 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %201 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @HOST_F_STOP, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %196
  %207 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %208 = call i32 @SEND_STOP(%struct.au1xmmc_host* %207)
  br label %209

209:                                              ; preds = %206, %196
  %210 = load %struct.au1xmmc_host*, %struct.au1xmmc_host** %2, align 8
  %211 = getelementptr inbounds %struct.au1xmmc_host, %struct.au1xmmc_host* %210, i32 0, i32 1
  %212 = call i32 @tasklet_schedule(i32* %211)
  br label %213

213:                                              ; preds = %22, %209, %190
  ret void
}

declare dso_local i8* @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @au_readl(i32) #1

declare dso_local i32 @HOST_STATUS(%struct.au1xmmc_host*) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @HOST_RXPORT(%struct.au1xmmc_host*) #1

declare dso_local i32 @IRQ_OFF(%struct.au1xmmc_host*, i32) #1

declare dso_local i32 @SEND_STOP(%struct.au1xmmc_host*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
