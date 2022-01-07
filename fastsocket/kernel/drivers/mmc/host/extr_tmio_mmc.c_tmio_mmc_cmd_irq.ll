; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_cmd_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.c_tmio_mmc_cmd_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { %struct.TYPE_2__*, %struct.mmc_command* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_command = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Spurious CMD irq\0A\00", align 1
@CTL_RESPONSE = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_RSP_R3 = common dso_local global i32 0, align 4
@TMIO_STAT_CMDTIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@TMIO_STAT_CRCFAIL = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@TMIO_MASK_READOP = common dso_local global i32 0, align 4
@TMIO_MASK_WRITEOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32)* @tmio_mmc_cmd_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_cmd_irq(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 1
  %10 = load %struct.mmc_command*, %struct.mmc_command** %9, align 8
  store %struct.mmc_command* %10, %struct.mmc_command** %5, align 8
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %11, i32 0, i32 1
  %13 = load %struct.mmc_command*, %struct.mmc_command** %12, align 8
  %14 = icmp ne %struct.mmc_command* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %182

17:                                               ; preds = %2
  %18 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %19 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %18, i32 0, i32 1
  store %struct.mmc_command* null, %struct.mmc_command** %19, align 8
  store i32 3, i32* %6, align 4
  %20 = load i32, i32* @CTL_RESPONSE, align 4
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %34, %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @sd_ctrl_read32(%struct.tmio_mmc_host* %25, i32 %26)
  %28 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 4
  store i32 %38, i32* %7, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MMC_RSP_136, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %104

46:                                               ; preds = %39
  %47 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %48 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 8
  %53 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 24
  %59 = or i32 %52, %58
  %60 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %61 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %59, i32* %63, align 4
  %64 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %65 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 8
  %70 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %71 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 24
  %76 = or i32 %69, %75
  %77 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %78 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %82 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 24
  %93 = or i32 %86, %92
  %94 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %95 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  store i32 %93, i32* %97, align 4
  %98 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %99 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 8
  store i32 %103, i32* %101, align 4
  br label %122

104:                                              ; preds = %39
  %105 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %106 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MMC_RSP_R3, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %113 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %118 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %111, %104
  br label %122

122:                                              ; preds = %121, %46
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @TMIO_STAT_CMDTIMEOUT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load i32, i32* @ETIMEDOUT, align 4
  %129 = sub nsw i32 0, %128
  %130 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %131 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %150

132:                                              ; preds = %122
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @TMIO_STAT_CRCFAIL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %139 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @MMC_RSP_CRC, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i32, i32* @EILSEQ, align 4
  %146 = sub nsw i32 0, %145
  %147 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %148 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %137, %132
  br label %150

150:                                              ; preds = %149, %127
  %151 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %152 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %151, i32 0, i32 0
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = icmp ne %struct.TYPE_2__* %153, null
  br i1 %154, label %155, label %178

155:                                              ; preds = %150
  %156 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %157 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %178, label %160

160:                                              ; preds = %155
  %161 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %162 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @MMC_DATA_READ, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %160
  %170 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %171 = load i32, i32* @TMIO_MASK_READOP, align 4
  %172 = call i32 @enable_mmc_irqs(%struct.tmio_mmc_host* %170, i32 %171)
  br label %177

173:                                              ; preds = %160
  %174 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %175 = load i32, i32* @TMIO_MASK_WRITEOP, align 4
  %176 = call i32 @enable_mmc_irqs(%struct.tmio_mmc_host* %174, i32 %175)
  br label %177

177:                                              ; preds = %173, %169
  br label %181

178:                                              ; preds = %155, %150
  %179 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %180 = call i32 @tmio_mmc_finish_request(%struct.tmio_mmc_host* %179)
  br label %181

181:                                              ; preds = %178, %177
  br label %182

182:                                              ; preds = %181, %15
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @sd_ctrl_read32(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @enable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_finish_request(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
