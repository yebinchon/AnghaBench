; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_cmd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_omap_hsmmc.c_omap_hsmmc_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hsmmc_host = type { i32, i32*, i32, i32*, i32, i32* }
%struct.mmc_command = type { i32, i32, i64, i8** }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@RSP10 = common dso_local global i32 0, align 4
@RSP32 = common dso_local global i32 0, align 4
@RSP54 = common dso_local global i32 0, align 4
@RSP76 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hsmmc_host*, %struct.mmc_command*)* @omap_hsmmc_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_hsmmc_cmd_done(%struct.omap_hsmmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.omap_hsmmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.omap_hsmmc_host* %0, %struct.omap_hsmmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %5 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %5, i32 0, i32 5
  store i32* null, i32** %6, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %2
  %14 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MMC_RSP_136, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %13
  %21 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %22 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RSP10, align 4
  %25 = call i8* @OMAP_HSMMC_READ(i32 %23, i32 %24)
  %26 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  store i8* %25, i8** %29, align 8
  %30 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RSP32, align 4
  %34 = call i8* @OMAP_HSMMC_READ(i32 %32, i32 %33)
  %35 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 3
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 2
  store i8* %34, i8** %38, align 8
  %39 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RSP54, align 4
  %43 = call i8* @OMAP_HSMMC_READ(i32 %41, i32 %42)
  %44 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %44, i32 0, i32 3
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  store i8* %43, i8** %47, align 8
  %48 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %49 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @RSP76, align 4
  %52 = call i8* @OMAP_HSMMC_READ(i32 %50, i32 %51)
  %53 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %53, i32 0, i32 3
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  store i8* %52, i8** %56, align 8
  br label %67

57:                                               ; preds = %13
  %58 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %59 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @RSP10, align 4
  %62 = call i8* @OMAP_HSMMC_READ(i32 %60, i32 %61)
  %63 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %63, i32 0, i32 3
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %62, i8** %66, align 8
  br label %67

67:                                               ; preds = %57, %20
  br label %68

68:                                               ; preds = %67, %2
  %69 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %70 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %75 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73, %68
  %79 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78, %73
  %84 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %85 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.omap_hsmmc_host*, %struct.omap_hsmmc_host** %3, align 8
  %87 = getelementptr inbounds %struct.omap_hsmmc_host, %struct.omap_hsmmc_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %90 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mmc_request_done(i32 %88, i32 %91)
  br label %93

93:                                               ; preds = %83, %78
  ret void
}

declare dso_local i8* @OMAP_HSMMC_READ(i32, i32) #1

declare dso_local i32 @mmc_request_done(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
