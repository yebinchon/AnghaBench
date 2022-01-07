; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_write_rate_shm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/extr_main.c_brcms_c_write_rate_shm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32 }

@M_RT_DIRMAP_A = common dso_local global i64 0, align 8
@M_RT_DIRMAP_B = common dso_local global i64 0, align 8
@M_RT_BBRSMAP_A = common dso_local global i64 0, align 8
@M_RT_BBRSMAP_B = common dso_local global i64 0, align 8
@rate_info = common dso_local global i64* null, align 8
@BRCMS_RATE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i64, i64)* @brcms_c_write_rate_shm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_write_rate_shm(%struct.brcms_c_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @is_ofdm_rate(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @M_RT_DIRMAP_A, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @M_RT_DIRMAP_B, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @is_ofdm_rate(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @M_RT_BBRSMAP_A, align 8
  br label %30

28:                                               ; preds = %21
  %29 = load i64, i64* @M_RT_BBRSMAP_B, align 8
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i64 [ %27, %26 ], [ %29, %28 ]
  store i64 %31, i64* %12, align 8
  %32 = load i64*, i64** @rate_info, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BRCMS_RATE_MASK, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64*, i64** @rate_info, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @BRCMS_RATE_MASK, align 8
  %43 = and i64 %41, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %7, align 8
  %45 = and i64 %44, 15
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = and i64 %46, 15
  store i64 %47, i64* %10, align 8
  %48 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %49 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = mul i64 %52, 2
  %54 = add i64 %51, %53
  %55 = call i64 @brcms_b_read_shm(i32 %50, i64 %54)
  store i64 %55, i64* %13, align 8
  %56 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %57 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %8, align 8
  %61 = mul i64 %60, 2
  %62 = add i64 %59, %61
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @brcms_b_write_shm(i32 %58, i64 %62, i64 %63)
  ret void
}

declare dso_local i64 @is_ofdm_rate(i64) #1

declare dso_local i64 @brcms_b_read_shm(i32, i64) #1

declare dso_local i32 @brcms_b_write_shm(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
