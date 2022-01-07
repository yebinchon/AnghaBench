; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_rx_tkip_phase1_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_rx_tkip_phase1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_NR_GROUP_KEYS = common dso_local global i32 0, align 4
@modparam_hwtkip = common dso_local global i32 0, align 4
@B43_NR_PAIRWISE_KEYS = common dso_local global i32 0, align 4
@B43_DBG_KEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"rx_tkip_phase1_write : idx 0x%x, iv32 0x%x\0A\00", align 1
@B43_SHM_SH_TKIPTSCTTAK = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32*)* @rx_tkip_phase1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_tkip_phase1_write(%struct.b43_wldev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @B43_NR_GROUP_KEYS, align 4
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @modparam_hwtkip, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %95

17:                                               ; preds = %4
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %19 = call i64 @b43_new_kidx_api(%struct.b43_wldev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @B43_NR_GROUP_KEYS, align 4
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @B43_WARN_ON(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @B43_NR_PAIRWISE_KEYS, align 4
  %34 = icmp sge i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @B43_WARN_ON(i32 %35)
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %38 = load i32, i32* @B43_DBG_KEYS, align 4
  %39 = call i64 @b43_debug(%struct.b43_wldev* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %23
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %43 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @b43dbg(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %23
  %49 = load i32, i32* @B43_SHM_SH_TKIPTSCTTAK, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 14
  %52 = add nsw i32 %49, %51
  store i32 %52, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %75, %48
  %54 = load i32, i32* %9, align 4
  %55 = icmp ult i32 %54, 10
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %58 = load i32, i32* @B43_SHM_SHARED, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %59, %60
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = udiv i32 %66, 2
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %64
  %73 = phi i32 [ %70, %64 ], [ 0, %71 ]
  %74 = call i32 @b43_shm_write16(%struct.b43_wldev* %57, i32 %58, i32 %61, i32 %73)
  br label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = add i32 %76, 2
  store i32 %77, i32* %9, align 4
  br label %53

78:                                               ; preds = %53
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %80 = load i32, i32* @B43_SHM_SHARED, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @b43_shm_write16(%struct.b43_wldev* %79, i32 %80, i32 %83, i32 %84)
  %86 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %87 = load i32, i32* @B43_SHM_SHARED, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %88, %89
  %91 = add i32 %90, 2
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 16
  %94 = call i32 @b43_shm_write16(%struct.b43_wldev* %86, i32 %87, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %78, %16
  ret void
}

declare dso_local i64 @b43_new_kidx_api(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @b43_debug(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
