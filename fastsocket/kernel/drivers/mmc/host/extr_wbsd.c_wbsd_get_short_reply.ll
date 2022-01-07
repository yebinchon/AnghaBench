; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_get_short_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_wbsd.c_wbsd_get_short_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i32 }
%struct.mmc_command = type { i32*, i32 }

@WBSD_IDX_RSPLEN = common dso_local global i32 0, align 4
@WBSD_RSP_SHORT = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@WBSD_IDX_RESP12 = common dso_local global i32 0, align 4
@WBSD_IDX_RESP13 = common dso_local global i32 0, align 4
@WBSD_IDX_RESP14 = common dso_local global i32 0, align 4
@WBSD_IDX_RESP15 = common dso_local global i32 0, align 4
@WBSD_IDX_RESP16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*, %struct.mmc_command*)* @wbsd_get_short_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_get_short_reply(%struct.wbsd_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %5 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %6 = load i32, i32* @WBSD_IDX_RSPLEN, align 4
  %7 = call i32 @wbsd_read_index(%struct.wbsd_host* %5, i32 %6)
  %8 = load i32, i32* @WBSD_RSP_SHORT, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @EILSEQ, align 4
  %12 = sub nsw i32 0, %11
  %13 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %17 = load i32, i32* @WBSD_IDX_RESP12, align 4
  %18 = call i32 @wbsd_read_index(%struct.wbsd_host* %16, i32 %17)
  %19 = shl i32 %18, 24
  %20 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %25 = load i32, i32* @WBSD_IDX_RESP13, align 4
  %26 = call i32 @wbsd_read_index(%struct.wbsd_host* %24, i32 %25)
  %27 = shl i32 %26, 16
  %28 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  %34 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %35 = load i32, i32* @WBSD_IDX_RESP14, align 4
  %36 = call i32 @wbsd_read_index(%struct.wbsd_host* %34, i32 %35)
  %37 = shl i32 %36, 8
  %38 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  %44 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %45 = load i32, i32* @WBSD_IDX_RESP15, align 4
  %46 = call i32 @wbsd_read_index(%struct.wbsd_host* %44, i32 %45)
  %47 = shl i32 %46, 0
  %48 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %49 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %55 = load i32, i32* @WBSD_IDX_RESP16, align 4
  %56 = call i32 @wbsd_read_index(%struct.wbsd_host* %54, i32 %55)
  %57 = shl i32 %56, 24
  %58 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %59 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %15, %10
  ret void
}

declare dso_local i32 @wbsd_read_index(%struct.wbsd_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
