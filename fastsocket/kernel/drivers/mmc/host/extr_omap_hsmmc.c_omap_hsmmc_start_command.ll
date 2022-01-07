; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_start_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32, i32, i32, i64, %struct.TYPE_2__*, %struct.mmc_command*, i32 }
%struct.TYPE_2__ = type { %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, i32 }
%struct.mmc_data = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: CMD%d, argument 0x%08x\0A\00", align 1
@STAT = common dso_local global i32 0, align 4
@STAT_CLEAR = common dso_local global i32 0, align 4
@ISE = common dso_local global i32 0, align 4
@INT_EN_MASK = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@BRR_ENABLE = common dso_local global i32 0, align 4
@BWR_ENABLE = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@DP_SELECT = common dso_local global i32 0, align 4
@MSBS = common dso_local global i32 0, align 4
@BCE = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DDIR = common dso_local global i32 0, align 4
@DMA_EN = common dso_local global i32 0, align 4
@ARG = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, %struct.mmc_command*, %struct.mmc_data*)* @omap_hsmmc_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_start_command(%struct.omap_hsmmc_host* %0, %struct.mmc_command* %1, %struct.mmc_data* %2) #0 {
  %4 = alloca %struct.omap_hsmmc_host*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %11 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mmc_dev(i32 %12)
  %14 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %15 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mmc_hostname(i32 %16)
  %18 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %26 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %27 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %26, i32 0, i32 6
  store %struct.mmc_command* %25, %struct.mmc_command** %27, align 8
  %28 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %29 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STAT, align 4
  %32 = load i32, i32* @STAT_CLEAR, align 4
  %33 = call i32 @OMAP_HSMMC_WRITE(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %35 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ISE, align 4
  %38 = load i32, i32* @INT_EN_MASK, align 4
  %39 = call i32 @OMAP_HSMMC_WRITE(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %41 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %3
  %45 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %46 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IE, align 4
  %49 = load i32, i32* @INT_EN_MASK, align 4
  %50 = load i32, i32* @BRR_ENABLE, align 4
  %51 = load i32, i32* @BWR_ENABLE, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = call i32 @OMAP_HSMMC_WRITE(i32 %47, i32 %48, i32 %54)
  br label %63

56:                                               ; preds = %3
  %57 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %58 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IE, align 4
  %61 = load i32, i32* @INT_EN_MASK, align 4
  %62 = call i32 @OMAP_HSMMC_WRITE(i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %44
  %64 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %65 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %64, i32 0, i32 0
  store i32 0, i32* %65, align 8
  %66 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %67 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %93

72:                                               ; preds = %63
  %73 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %74 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MMC_RSP_136, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 1, i32* %8, align 4
  br label %92

80:                                               ; preds = %72
  %81 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %82 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MMC_RSP_BUSY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  store i32 3, i32* %8, align 4
  %88 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %89 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %91

90:                                               ; preds = %80
  store i32 2, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %87
  br label %92

92:                                               ; preds = %91, %79
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %95 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %96 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %95, i32 0, i32 5
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load %struct.mmc_command*, %struct.mmc_command** %98, align 8
  %100 = icmp eq %struct.mmc_command* %94, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 3, i32* %9, align 4
  br label %102

102:                                              ; preds = %101, %93
  %103 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %104 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 24
  %107 = load i32, i32* %8, align 4
  %108 = shl i32 %107, 16
  %109 = or i32 %106, %108
  %110 = load i32, i32* %9, align 4
  %111 = shl i32 %110, 22
  %112 = or i32 %109, %111
  store i32 %112, i32* %7, align 4
  %113 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %114 = icmp ne %struct.mmc_data* %113, null
  br i1 %114, label %115, label %139

115:                                              ; preds = %102
  %116 = load i32, i32* @DP_SELECT, align 4
  %117 = load i32, i32* @MSBS, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @BCE, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  %123 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %124 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @MMC_DATA_READ, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %115
  %130 = load i32, i32* @DDIR, align 4
  %131 = load i32, i32* %7, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %7, align 4
  br label %138

133:                                              ; preds = %115
  %134 = load i32, i32* @DDIR, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %133, %129
  br label %139

139:                                              ; preds = %138, %102
  %140 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %141 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32, i32* @DMA_EN, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = call i32 (...) @in_interrupt()
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148
  %152 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %153 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %152, i32 0, i32 3
  %154 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %155 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %153, i32 %156)
  br label %158

158:                                              ; preds = %151, %148
  %159 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %160 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ARG, align 4
  %163 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %164 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @OMAP_HSMMC_WRITE(i32 %161, i32 %162, i32 %165)
  %167 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %4, align 8
  %168 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @CMD, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @OMAP_HSMMC_WRITE(i32 %169, i32 %170, i32 %171)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @OMAP_HSMMC_WRITE(i32, i32, i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
