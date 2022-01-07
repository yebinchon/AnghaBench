; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sbni.c_change_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_sbni.c_change_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.net_local = type { i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@rxl_tab = common dso_local global i32* null, align 8
@CSR0 = common dso_local global i64 0, align 8
@CSR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @change_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_level(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.net_local* @netdev_priv(%struct.net_device* %4)
  store %struct.net_local* %5, %struct.net_local** %3, align 8
  %6 = load %struct.net_local*, %struct.net_local** %3, align 8
  %7 = getelementptr inbounds %struct.net_local, %struct.net_local* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %82

11:                                               ; preds = %1
  %12 = load %struct.net_local*, %struct.net_local** %3, align 8
  %13 = getelementptr inbounds %struct.net_local, %struct.net_local* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.net_local*, %struct.net_local** %3, align 8
  %18 = getelementptr inbounds %struct.net_local, %struct.net_local* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %44

19:                                               ; preds = %11
  %20 = load %struct.net_local*, %struct.net_local** %3, align 8
  %21 = getelementptr inbounds %struct.net_local, %struct.net_local* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 15
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.net_local*, %struct.net_local** %3, align 8
  %26 = getelementptr inbounds %struct.net_local, %struct.net_local* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  br label %43

27:                                               ; preds = %19
  %28 = load %struct.net_local*, %struct.net_local** %3, align 8
  %29 = getelementptr inbounds %struct.net_local, %struct.net_local* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.net_local*, %struct.net_local** %3, align 8
  %32 = getelementptr inbounds %struct.net_local, %struct.net_local* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.net_local*, %struct.net_local** %3, align 8
  %37 = getelementptr inbounds %struct.net_local, %struct.net_local* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 0, %38
  %40 = load %struct.net_local*, %struct.net_local** %3, align 8
  %41 = getelementptr inbounds %struct.net_local, %struct.net_local* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %27
  br label %43

43:                                               ; preds = %42, %24
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32*, i32** @rxl_tab, align 8
  %46 = load %struct.net_local*, %struct.net_local** %3, align 8
  %47 = getelementptr inbounds %struct.net_local, %struct.net_local* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.net_local*, %struct.net_local** %3, align 8
  %50 = getelementptr inbounds %struct.net_local, %struct.net_local* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %45, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_local*, %struct.net_local** %3, align 8
  %57 = getelementptr inbounds %struct.net_local, %struct.net_local* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CSR0, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @inb(i64 %63)
  %65 = load %struct.net_local*, %struct.net_local** %3, align 8
  %66 = getelementptr inbounds %struct.net_local, %struct.net_local* %65, i32 0, i32 4
  %67 = bitcast %struct.TYPE_2__* %66 to i32*
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CSR1, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @outb(i32 %68, i64 %73)
  %75 = load %struct.net_local*, %struct.net_local** %3, align 8
  %76 = getelementptr inbounds %struct.net_local, %struct.net_local* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.net_local*, %struct.net_local** %3, align 8
  %79 = getelementptr inbounds %struct.net_local, %struct.net_local* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load %struct.net_local*, %struct.net_local** %3, align 8
  %81 = getelementptr inbounds %struct.net_local, %struct.net_local* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %44, %10
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
