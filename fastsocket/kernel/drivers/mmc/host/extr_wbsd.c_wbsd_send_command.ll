; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32, i64 }
%struct.mmc_command = type { i32, i32, i32, i32 }

@WBSD_CMDR = common dso_local global i64 0, align 8
@WBSD_IDX_STATUS = common dso_local global i32 0, align 4
@WBSD_CARDTRAFFIC = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@WBSD_INT_CARD = common dso_local global i32 0, align 4
@ENOMEDIUM = common dso_local global i32 0, align 4
@WBSD_INT_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@WBSD_INT_CRC = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*, %struct.mmc_command*)* @wbsd_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_send_command(%struct.wbsd_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %8 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %9 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %14 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WBSD_CMDR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @outb(i32 %12, i64 %17)
  store i32 3, i32* %5, align 4
  br label %19

19:                                               ; preds = %36, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 8
  %28 = ashr i32 %25, %27
  %29 = and i32 %28, 255
  %30 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %31 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WBSD_CMDR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outb(i32 %29, i64 %34)
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  br label %19

39:                                               ; preds = %19
  %40 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %41 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %40, i32 0, i32 3
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %46, %39
  %43 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %44 = load i32, i32* @WBSD_IDX_STATUS, align 4
  %45 = call i32 @wbsd_read_index(%struct.wbsd_host* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @WBSD_CARDTRAFFIC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %42, label %51

51:                                               ; preds = %46
  %52 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %53 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %117

58:                                               ; preds = %51
  %59 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %60 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @WBSD_INT_CARD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @ENOMEDIUM, align 4
  %68 = sub nsw i32 0, %67
  %69 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %70 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %116

71:                                               ; preds = %58
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @WBSD_INT_TIMEOUT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32, i32* @ETIMEDOUT, align 4
  %78 = sub nsw i32 0, %77
  %79 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %115

81:                                               ; preds = %71
  %82 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MMC_RSP_CRC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @WBSD_INT_CRC, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* @EILSEQ, align 4
  %95 = sub nsw i32 0, %94
  %96 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %97 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %114

98:                                               ; preds = %88, %81
  %99 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %100 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MMC_RSP_136, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %107 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %108 = call i32 @wbsd_get_long_reply(%struct.wbsd_host* %106, %struct.mmc_command* %107)
  br label %113

109:                                              ; preds = %98
  %110 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %111 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %112 = call i32 @wbsd_get_short_reply(%struct.wbsd_host* %110, %struct.mmc_command* %111)
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %76
  br label %116

116:                                              ; preds = %115, %66
  br label %117

117:                                              ; preds = %116, %51
  ret void
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wbsd_read_index(%struct.wbsd_host*, i32) #1

declare dso_local i32 @wbsd_get_long_reply(%struct.wbsd_host*, %struct.mmc_command*) #1

declare dso_local i32 @wbsd_get_short_reply(%struct.wbsd_host*, %struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
