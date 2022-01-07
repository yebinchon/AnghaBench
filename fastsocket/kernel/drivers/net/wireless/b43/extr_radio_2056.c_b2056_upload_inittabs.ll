; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2056.c_b2056_upload_inittabs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_radio_2056.c_b2056_upload_inittabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b2056_inittabs_pts = type { i32, i32, i32, i32, i32, i32 }
%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@b2056_inittabs = common dso_local global %struct.b2056_inittabs_pts* null, align 8
@B2056_SYN = common dso_local global i32 0, align 4
@B2056_TX0 = common dso_local global i32 0, align 4
@B2056_TX1 = common dso_local global i32 0, align 4
@B2056_RX0 = common dso_local global i32 0, align 4
@B2056_RX1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b2056_upload_inittabs(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b2056_inittabs_pts*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** @b2056_inittabs, align 8
  %13 = call i64 @ARRAY_SIZE(%struct.b2056_inittabs_pts* %12)
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = call i32 @B43_WARN_ON(i32 1)
  br label %79

17:                                               ; preds = %3
  %18 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** @b2056_inittabs, align 8
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %20 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %18, i64 %22
  store %struct.b2056_inittabs_pts* %23, %struct.b2056_inittabs_pts** %7, align 8
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @B2056_SYN, align 4
  %28 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %29 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %32 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %24, i32 %25, i32 %26, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @B2056_TX0, align 4
  %39 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %40 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %43 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %35, i32 %36, i32 %37, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @B2056_TX1, align 4
  %50 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %51 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %54 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %46, i32 %47, i32 %48, i32 %49, i32 %52, i32 %55)
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @B2056_RX0, align 4
  %61 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %62 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %65 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %57, i32 %58, i32 %59, i32 %60, i32 %63, i32 %66)
  %68 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @B2056_RX1, align 4
  %72 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %73 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.b2056_inittabs_pts*, %struct.b2056_inittabs_pts** %7, align 8
  %76 = getelementptr inbounds %struct.b2056_inittabs_pts, %struct.b2056_inittabs_pts* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @b2056_upload_inittab(%struct.b43_wldev* %68, i32 %69, i32 %70, i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %17, %15
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.b2056_inittabs_pts*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b2056_upload_inittab(%struct.b43_wldev*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
