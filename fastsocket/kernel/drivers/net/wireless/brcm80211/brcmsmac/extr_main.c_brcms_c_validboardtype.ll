; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_validboardtype.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_validboardtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, i32 }

@PCI_VENDOR_ID_BROADCOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_hardware*)* @brcms_c_validboardtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_validboardtype(%struct.brcms_hardware* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %3, align 8
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %10 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 61440
  %14 = ashr i32 %13, 12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 3840
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 240
  %20 = ashr i32 %19, 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 15
  store i32 %22, i32* %8, align 4
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ai_get_boardvendor(i32 %25)
  %27 = load i64, i64* @PCI_VENDOR_ID_BROADCOM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %58

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %58

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = icmp sle i32 %35, 255
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %58

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %56, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 9
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 9
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %54, 9
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50, %47, %44, %41, %38
  store i32 0, i32* %2, align 4
  br label %58

57:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %56, %37, %33, %29
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @ai_get_boardvendor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
