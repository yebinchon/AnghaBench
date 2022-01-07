; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_xmit.c_b43legacy_handle_txstatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_xmit.c_b43legacy_handle_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.b43legacy_txstatus = type { i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_handle_txstatus(%struct.b43legacy_wldev* %0, %struct.b43legacy_txstatus* %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_txstatus*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store %struct.b43legacy_txstatus* %1, %struct.b43legacy_txstatus** %4, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %6 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %7 = call i32 @b43legacy_debugfs_log_txstat(%struct.b43legacy_wldev* %5, %struct.b43legacy_txstatus* %6)
  %8 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %9 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %71

13:                                               ; preds = %2
  %14 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %15 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %71

19:                                               ; preds = %13
  %20 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %21 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %26 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %19
  %33 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %34 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %39 = getelementptr inbounds %struct.b43legacy_txstatus, %struct.b43legacy_txstatus* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 15
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %44 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %58

50:                                               ; preds = %37
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %52 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %50, %42
  br label %59

59:                                               ; preds = %58, %32
  %60 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %61 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %65 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %66 = call i32 @b43legacy_pio_handle_txstatus(%struct.b43legacy_wldev* %64, %struct.b43legacy_txstatus* %65)
  br label %71

67:                                               ; preds = %59
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %69 = load %struct.b43legacy_txstatus*, %struct.b43legacy_txstatus** %4, align 8
  %70 = call i32 @b43legacy_dma_handle_txstatus(%struct.b43legacy_wldev* %68, %struct.b43legacy_txstatus* %69)
  br label %71

71:                                               ; preds = %12, %18, %67, %63
  ret void
}

declare dso_local i32 @b43legacy_debugfs_log_txstat(%struct.b43legacy_wldev*, %struct.b43legacy_txstatus*) #1

declare dso_local i64 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_pio_handle_txstatus(%struct.b43legacy_wldev*, %struct.b43legacy_txstatus*) #1

declare dso_local i32 @b43legacy_dma_handle_txstatus(%struct.b43legacy_wldev*, %struct.b43legacy_txstatus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
