; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_ampdu.c_brcms_c_ampdu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ampdu_info = type { %struct.brcms_c_info* }
%struct.brcms_c_info = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@SUPPORT_11N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wl%d: driver not nmode enabled\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"wl%d: device not ampdu capable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ampdu_info*, i32)* @brcms_c_ampdu_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_ampdu_set(%struct.ampdu_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ampdu_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_c_info*, align 8
  %7 = alloca %struct.bcma_device*, align 8
  store %struct.ampdu_info* %0, %struct.ampdu_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %9 = getelementptr inbounds %struct.ampdu_info, %struct.ampdu_info* %8, i32 0, i32 0
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %9, align 8
  store %struct.brcms_c_info* %10, %struct.brcms_c_info** %6, align 8
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %12 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.bcma_device*, %struct.bcma_device** %14, align 8
  store %struct.bcma_device* %15, %struct.bcma_device** %7, align 8
  %16 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %17 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %2
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %24 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SUPPORT_11N, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %22
  %32 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %33 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %34 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @brcms_err(%struct.bcma_device* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %22
  %42 = load %struct.ampdu_info*, %struct.ampdu_info** %4, align 8
  %43 = call i32 @brcms_c_ampdu_cap(%struct.ampdu_info* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @brcms_err(%struct.bcma_device* %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ENOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %62

55:                                               ; preds = %41
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %58 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %2
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %45, %31
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @brcms_err(%struct.bcma_device*, i8*, i32) #1

declare dso_local i32 @brcms_c_ampdu_cap(%struct.ampdu_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
