; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_poll_vp_lockup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_poll_vp_lockup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.vxge_ring }
%struct.vxge_ring = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@VXGE_HW_OK = common dso_local global i32 0, align 4
@VXGE_HW_FAIL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vxge_poll_vp_lockup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_poll_vp_lockup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vxgedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_ring*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.vxgedev*
  store %struct.vxgedev* %8, %struct.vxgedev** %3, align 8
  %9 = load i32, i32* @VXGE_HW_OK, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %78, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %13 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %10
  %17 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %18 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store %struct.vxge_ring* %23, %struct.vxge_ring** %5, align 8
  %24 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %25 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %29 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %67

33:                                               ; preds = %16
  %34 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %35 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @vxge_hw_vpath_check_leak(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @VXGE_HW_FAIL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %33
  %42 = load i32, i32* @VXGE_HW_FAIL, align 4
  %43 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %44 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load i32, i32* %4, align 4
  %49 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %50 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %49, i32 0, i32 3
  %51 = call i32 @test_and_set_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @vxge_vpath_intr_disable(%struct.vxgedev* %54, i32 %55)
  %57 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %58 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %57, i32 0, i32 2
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @vxge_stop_tx_queue(i32* %63)
  br label %78

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %41, %33
  br label %67

67:                                               ; preds = %66, %16
  %68 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %69 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %73 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.vxge_ring*, %struct.vxge_ring** %5, align 8
  %77 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %67, %53
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %10

81:                                               ; preds = %10
  %82 = load %struct.vxgedev*, %struct.vxgedev** %3, align 8
  %83 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %82, i32 0, i32 1
  %84 = load i64, i64* @jiffies, align 8
  %85 = load i32, i32* @HZ, align 4
  %86 = sdiv i32 %85, 1000
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %84, %87
  %89 = call i32 @mod_timer(i32* %83, i64 %88)
  ret void
}

declare dso_local i32 @vxge_hw_vpath_check_leak(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @vxge_vpath_intr_disable(%struct.vxgedev*, i32) #1

declare dso_local i32 @vxge_stop_tx_queue(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
