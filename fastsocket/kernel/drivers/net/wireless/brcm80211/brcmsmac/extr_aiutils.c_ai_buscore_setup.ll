; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_aiutils.c_ai_buscore_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_aiutils.c_ai_buscore_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_info = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32, i32, i8*, i32 }
%struct.bcma_device = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@chipstatus = common dso_local global i32 0, align 4
@capabilities = common dso_local global i32 0, align 4
@CC_CAP_PMU = common dso_local global i32 0, align 4
@pmucapabilities = common dso_local global i32 0, align 4
@PCAP_REV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si_info*, %struct.bcma_device*)* @ai_buscore_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_buscore_setup(%struct.si_info* %0, %struct.bcma_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si_info*, align 8
  %5 = alloca %struct.bcma_device*, align 8
  store %struct.si_info* %0, %struct.si_info** %4, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %5, align 8
  %6 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %7 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

13:                                               ; preds = %2
  %14 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %15 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.si_info*, %struct.si_info** %4, align 8
  %19 = getelementptr inbounds %struct.si_info, %struct.si_info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 8
  %21 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %22 = load i32, i32* @chipstatus, align 4
  %23 = call i32 @CHIPCREGOFFS(i32 %22)
  %24 = call i8* @bcma_read32(%struct.bcma_device* %21, i32 %23)
  %25 = load %struct.si_info*, %struct.si_info** %4, align 8
  %26 = getelementptr inbounds %struct.si_info, %struct.si_info* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %28 = load i32, i32* @capabilities, align 4
  %29 = call i32 @CHIPCREGOFFS(i32 %28)
  %30 = call i8* @bcma_read32(%struct.bcma_device* %27, i32 %29)
  %31 = load %struct.si_info*, %struct.si_info** %4, align 8
  %32 = getelementptr inbounds %struct.si_info, %struct.si_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load %struct.si_info*, %struct.si_info** %4, align 8
  %35 = getelementptr inbounds %struct.si_info, %struct.si_info* %34, i32 0, i32 0
  %36 = call i32 @ai_get_cccaps(%struct.TYPE_6__* %35)
  %37 = load i32, i32* @CC_CAP_PMU, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %13
  %41 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %42 = load i32, i32* @pmucapabilities, align 4
  %43 = call i32 @CHIPCREGOFFS(i32 %42)
  %44 = call i8* @bcma_read32(%struct.bcma_device* %41, i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.si_info*, %struct.si_info** %4, align 8
  %47 = getelementptr inbounds %struct.si_info, %struct.si_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.si_info*, %struct.si_info** %4, align 8
  %50 = getelementptr inbounds %struct.si_info, %struct.si_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PCAP_REV_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.si_info*, %struct.si_info** %4, align 8
  %56 = getelementptr inbounds %struct.si_info, %struct.si_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %40, %13
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i8* @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @CHIPCREGOFFS(i32) #1

declare dso_local i32 @ai_get_cccaps(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
