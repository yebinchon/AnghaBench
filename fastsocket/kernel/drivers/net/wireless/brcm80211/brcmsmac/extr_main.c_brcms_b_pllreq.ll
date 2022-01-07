; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_pllreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_b_pllreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i64, i32 }

@BRCMS_PLLREQ_FLIP = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32, i32)* @brcms_b_pllreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_pllreq(%struct.brcms_hardware* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_hardware*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %3
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @mboolisset(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %71

17:                                               ; preds = %9
  %18 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %19 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @mboolset(i32 %20, i32 %21)
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %24 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BRCMS_PLLREQ_FLIP, align 4
  %27 = call i64 @mboolisset(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %17
  %30 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %31 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %36 = load i32, i32* @ON, align 4
  %37 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %17
  br label %71

40:                                               ; preds = %3
  %41 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %42 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @mboolisset(i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %71

48:                                               ; preds = %40
  %49 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %50 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @mboolclr(i32 %51, i32 %52)
  %54 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %55 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BRCMS_PLLREQ_FLIP, align 4
  %58 = call i64 @mboolisset(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %48
  %61 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %62 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %67 = load i32, i32* @OFF, align 4
  %68 = call i32 @brcms_b_xtal(%struct.brcms_hardware* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %16, %47, %70, %39
  ret void
}

declare dso_local i64 @mboolisset(i32, i32) #1

declare dso_local i32 @mboolset(i32, i32) #1

declare dso_local i32 @brcms_b_xtal(%struct.brcms_hardware*, i32) #1

declare dso_local i32 @mboolclr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
