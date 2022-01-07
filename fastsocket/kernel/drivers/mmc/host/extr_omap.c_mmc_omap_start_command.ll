; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_start_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap.c_mmc_omap_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_omap_host = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.mmc_command* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mmc_command = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid response type: %04x\0A\00", align 1
@MMC_CMD_ADTC = common dso_local global i64 0, align 8
@OMAP_MMC_CMDTYPE_ADTC = common dso_local global i32 0, align 4
@MMC_CMD_BC = common dso_local global i64 0, align 8
@OMAP_MMC_CMDTYPE_BC = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i64 0, align 8
@OMAP_MMC_CMDTYPE_BCR = common dso_local global i32 0, align 4
@OMAP_MMC_CMDTYPE_AC = common dso_local global i32 0, align 4
@MMC_BUSMODE_OPENDRAIN = common dso_local global i64 0, align 8
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@CTO = common dso_local global i32 0, align 4
@ARGL = common dso_local global i32 0, align 4
@ARGH = common dso_local global i32 0, align 4
@IE = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_A_EMPTY = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_A_FULL = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_CMD_CRC = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_CMD_TOUT = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_DATA_CRC = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_DATA_TOUT = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_END_OF_CMD = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_CARD_ERR = common dso_local global i32 0, align 4
@OMAP_MMC_STAT_END_OF_DATA = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_omap_host*, %struct.mmc_command*)* @mmc_omap_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_omap_start_command(%struct.mmc_omap_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_omap_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_omap_host* %0, %struct.mmc_omap_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %8 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %9 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %10 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %9, i32 0, i32 4
  store %struct.mmc_command* %8, %struct.mmc_command** %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %12 = call i32 @mmc_resp_type(%struct.mmc_command* %11)
  switch i32 %12, label %17 [
    i32 132, label %13
    i32 131, label %14
    i32 130, label %14
    i32 129, label %15
    i32 128, label %16
  ]

13:                                               ; preds = %2
  br label %25

14:                                               ; preds = %2, %2
  store i32 1, i32* %6, align 4
  br label %25

15:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %25

16:                                               ; preds = %2
  store i32 3, i32* %6, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %19 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mmc_dev(i32 %20)
  %22 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %23 = call i32 @mmc_resp_type(%struct.mmc_command* %22)
  %24 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %17, %16, %15, %14, %13
  %26 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %27 = call i64 @mmc_cmd_type(%struct.mmc_command* %26)
  %28 = load i64, i64* @MMC_CMD_ADTC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @OMAP_MMC_CMDTYPE_ADTC, align 4
  store i32 %31, i32* %7, align 4
  br label %50

32:                                               ; preds = %25
  %33 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %34 = call i64 @mmc_cmd_type(%struct.mmc_command* %33)
  %35 = load i64, i64* @MMC_CMD_BC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @OMAP_MMC_CMDTYPE_BC, align 4
  store i32 %38, i32* %7, align 4
  br label %49

39:                                               ; preds = %32
  %40 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %41 = call i64 @mmc_cmd_type(%struct.mmc_command* %40)
  %42 = load i64, i64* @MMC_CMD_BCR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @OMAP_MMC_CMDTYPE_BCR, align 4
  store i32 %45, i32* %7, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @OMAP_MMC_CMDTYPE_AC, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %44
  br label %49

49:                                               ; preds = %48, %37
  br label %50

50:                                               ; preds = %49, %30
  %51 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %53, %55
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 12
  %59 = or i32 %56, %58
  store i32 %59, i32* %5, align 4
  %60 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %60, i32 0, i32 2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MMC_BUSMODE_OPENDRAIN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %50
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, 64
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %50
  %71 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %72 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MMC_RSP_BUSY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, 2048
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %82 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = icmp ne %struct.TYPE_4__* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %80
  %86 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %87 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MMC_DATA_WRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, 32768
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %85, %80
  %98 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %99 = getelementptr inbounds %struct.mmc_omap_host, %struct.mmc_omap_host* %98, i32 0, i32 0
  %100 = load i64, i64* @jiffies, align 8
  %101 = load i32, i32* @HZ, align 4
  %102 = sdiv i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %100, %103
  %105 = call i32 @mod_timer(i32* %99, i64 %104)
  %106 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %107 = load i32, i32* @CTO, align 4
  %108 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %106, i32 %107, i32 200)
  %109 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %110 = load i32, i32* @ARGL, align 4
  %111 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %112 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 65535
  %115 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %109, i32 %110, i32 %114)
  %116 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %117 = load i32, i32* @ARGH, align 4
  %118 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %119 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = ashr i32 %120, 16
  %122 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %116, i32 %117, i32 %121)
  %123 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %124 = load i32, i32* @IE, align 4
  %125 = load i32, i32* @OMAP_MMC_STAT_A_EMPTY, align 4
  %126 = load i32, i32* @OMAP_MMC_STAT_A_FULL, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @OMAP_MMC_STAT_CMD_CRC, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @OMAP_MMC_STAT_CMD_TOUT, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @OMAP_MMC_STAT_DATA_CRC, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @OMAP_MMC_STAT_DATA_TOUT, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @OMAP_MMC_STAT_END_OF_CMD, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @OMAP_MMC_STAT_CARD_ERR, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @OMAP_MMC_STAT_END_OF_DATA, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %123, i32 %124, i32 %141)
  %143 = load %struct.mmc_omap_host*, %struct.mmc_omap_host** %3, align 8
  %144 = load i32, i32* @CMD, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host* %143, i32 %144, i32 %145)
  ret void
}

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i64 @mmc_cmd_type(%struct.mmc_command*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @OMAP_MMC_WRITE(%struct.mmc_omap_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
