; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_security_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_security_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_MMIO_RCMTA_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_security_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_security_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %3 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sge i32 %8, 5
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 58, i32 20
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %18 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = icmp sgt i32 %16, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @B43legacy_WARN_ON(i32 %22)
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %25 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %26 = call i32 @b43legacy_shm_read16(%struct.b43legacy_wldev* %24, i32 %25, i32 86)
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %28 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %30 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 2
  store i32 %32, i32* %30, align 4
  %33 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %34 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 5
  br i1 %39, label %40, label %48

40:                                               ; preds = %1
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %42 = load i32, i32* @B43legacy_MMIO_RCMTA_COUNT, align 4
  %43 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %44 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 8
  %47 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %41, i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @b43legacy_shm_read16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
