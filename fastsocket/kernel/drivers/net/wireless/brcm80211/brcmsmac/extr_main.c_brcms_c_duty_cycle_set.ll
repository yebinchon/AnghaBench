; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_duty_cycle_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_duty_cycle_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i8*, i8*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@M_TX_IDLE_BUSY_RATIO_X_16_OFDM = common dso_local global i32 0, align 4
@M_TX_IDLE_BUSY_RATIO_X_16_CCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"wl%d:  duty cycle value off limit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32, i32, i32)* @brcms_c_duty_cycle_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_c_duty_cycle_set(%struct.brcms_c_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_c_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @M_TX_IDLE_BUSY_RATIO_X_16_OFDM, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @M_TX_IDLE_BUSY_RATIO_X_16_CCK, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 100
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %22, %18
  %26 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %27 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %32 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @brcms_err(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %76

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 100, %43
  %45 = mul nsw i32 %44, 16
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %53 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @brcms_b_write_shm(%struct.TYPE_4__* %54, i32 %55, i8* %58)
  br label %60

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %68 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  br label %75

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.brcms_c_info*, %struct.brcms_c_info** %6, align 8
  %74 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %69, %63
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @brcms_err(i32, i8*, i32) #1

declare dso_local i32 @brcms_b_write_shm(%struct.TYPE_4__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
