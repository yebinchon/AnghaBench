; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_detach_mfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_detach_mfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.brcms_c_info*, %struct.brcms_c_info**, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, %struct.brcms_c_info*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @brcms_c_detach_mfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_detach_mfree(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %3 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %4 = icmp eq %struct.brcms_c_info* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %61

6:                                                ; preds = %1
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @brcms_c_bsscfg_mfree(i32 %9)
  %11 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %11, i32 0, i32 8
  %13 = load %struct.brcms_c_info*, %struct.brcms_c_info** %12, align 8
  %14 = call i32 @kfree(%struct.brcms_c_info* %13)
  %15 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %15, i32 0, i32 7
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %16, align 8
  %18 = call i32 @kfree(%struct.brcms_c_info* %17)
  %19 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %19, i32 0, i32 6
  %21 = load %struct.brcms_c_info*, %struct.brcms_c_info** %20, align 8
  %22 = call i32 @kfree(%struct.brcms_c_info* %21)
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %24 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %23, i32 0, i32 5
  %25 = load %struct.brcms_c_info*, %struct.brcms_c_info** %24, align 8
  %26 = call i32 @kfree(%struct.brcms_c_info* %25)
  %27 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %28 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %27, i32 0, i32 4
  %29 = load %struct.brcms_c_info*, %struct.brcms_c_info** %28, align 8
  %30 = call i32 @kfree(%struct.brcms_c_info* %29)
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %32 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %31, i32 0, i32 1
  %33 = load %struct.brcms_c_info**, %struct.brcms_c_info*** %32, align 8
  %34 = getelementptr inbounds %struct.brcms_c_info*, %struct.brcms_c_info** %33, i64 0
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %34, align 8
  %36 = call i32 @kfree(%struct.brcms_c_info* %35)
  %37 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %38 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %37, i32 0, i32 2
  %39 = load %struct.brcms_c_info*, %struct.brcms_c_info** %38, align 8
  %40 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %39, i32 0, i32 3
  %41 = load %struct.brcms_c_info*, %struct.brcms_c_info** %40, align 8
  %42 = call i32 @kfree(%struct.brcms_c_info* %41)
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %44 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %43, i32 0, i32 2
  %45 = load %struct.brcms_c_info*, %struct.brcms_c_info** %44, align 8
  %46 = call i32 @kfree(%struct.brcms_c_info* %45)
  %47 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %48 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %47, i32 0, i32 0
  %49 = load %struct.brcms_c_info*, %struct.brcms_c_info** %48, align 8
  %50 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %49, i32 0, i32 1
  %51 = load %struct.brcms_c_info**, %struct.brcms_c_info*** %50, align 8
  %52 = getelementptr inbounds %struct.brcms_c_info*, %struct.brcms_c_info** %51, i64 0
  %53 = load %struct.brcms_c_info*, %struct.brcms_c_info** %52, align 8
  %54 = call i32 @kfree(%struct.brcms_c_info* %53)
  %55 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %56 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %55, i32 0, i32 0
  %57 = load %struct.brcms_c_info*, %struct.brcms_c_info** %56, align 8
  %58 = call i32 @kfree(%struct.brcms_c_info* %57)
  %59 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %60 = call i32 @kfree(%struct.brcms_c_info* %59)
  store %struct.brcms_c_info* null, %struct.brcms_c_info** %2, align 8
  br label %61

61:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @brcms_c_bsscfg_mfree(i32) #1

declare dso_local i32 @kfree(%struct.brcms_c_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
