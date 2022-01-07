; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_set_beacon_interval.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_set_beacon_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.aw_pt_bi = type { i32 }

@BCN_MODE_IBSS = common dso_local global i32 0, align 4
@BCN_MODE_AP = common dso_local global i32 0, align 4
@CR_BCN_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, i32, i32, i32)* @set_beacon_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_beacon_interval(%struct.zd_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zd_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.aw_pt_bi, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %15 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %14, i32 0, i32 0
  %16 = call i32 @mutex_is_locked(i32* %15)
  %17 = call i32 @ZD_ASSERT(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %26 [
    i32 130, label %22
    i32 128, label %22
    i32 129, label %24
  ]

22:                                               ; preds = %20, %20
  %23 = load i32, i32* @BCN_MODE_IBSS, align 4
  store i32 %23, i32* %13, align 4
  br label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @BCN_MODE_AP, align 4
  store i32 %25, i32* %13, align 4
  br label %27

26:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %26, %24, %22
  br label %29

28:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @CR_BCN_INTERVAL, align 4
  %39 = call i32 @zd_iowrite32_locked(%struct.zd_chip* %36, i32 %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %54

44:                                               ; preds = %29
  %45 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %46 = call i32 @get_aw_pt_bi(%struct.zd_chip* %45, %struct.aw_pt_bi* %11)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load %struct.zd_chip*, %struct.zd_chip** %6, align 8
  %53 = call i32 @set_aw_pt_bi(%struct.zd_chip* %52, %struct.aw_pt_bi* %11)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %49, %42
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @zd_iowrite32_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @get_aw_pt_bi(%struct.zd_chip*, %struct.aw_pt_bi*) #1

declare dso_local i32 @set_aw_pt_bi(%struct.zd_chip*, %struct.aw_pt_bi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
