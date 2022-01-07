; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_set_rsscpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_set_rsscpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, i32 }
%union.vnic_rss_cpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*, i32)* @enic_set_rsscpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_set_rsscpu(%struct.enic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.vnic_rss_cpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.vnic_rss_cpu* null, %union.vnic_rss_cpu** %7, align 8
  %10 = load %struct.enic*, %struct.enic** %4, align 8
  %11 = getelementptr inbounds %struct.enic, %struct.enic* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %union.vnic_rss_cpu* @pci_alloc_consistent(i32 %12, i32 8, i32* %6)
  store %union.vnic_rss_cpu* %13, %union.vnic_rss_cpu** %7, align 8
  %14 = load %union.vnic_rss_cpu*, %union.vnic_rss_cpu** %7, align 8
  %15 = icmp ne %union.vnic_rss_cpu* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %64

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.enic*, %struct.enic** %4, align 8
  %28 = getelementptr inbounds %struct.enic, %struct.enic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = urem i32 %26, %29
  %31 = load %union.vnic_rss_cpu*, %union.vnic_rss_cpu** %7, align 8
  %32 = bitcast %union.vnic_rss_cpu* %31 to %struct.TYPE_2__**
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = udiv i32 %34, 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = urem i32 %40, 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 %30, i32* %43, align 4
  br label %44

44:                                               ; preds = %25
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %20

47:                                               ; preds = %20
  %48 = load %struct.enic*, %struct.enic** %4, align 8
  %49 = getelementptr inbounds %struct.enic, %struct.enic* %48, i32 0, i32 2
  %50 = call i32 @spin_lock(i32* %49)
  %51 = load %struct.enic*, %struct.enic** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @enic_set_rss_cpu(%struct.enic* %51, i32 %52, i32 8)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.enic*, %struct.enic** %4, align 8
  %55 = getelementptr inbounds %struct.enic, %struct.enic* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.enic*, %struct.enic** %4, align 8
  %58 = getelementptr inbounds %struct.enic, %struct.enic* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %union.vnic_rss_cpu*, %union.vnic_rss_cpu** %7, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @pci_free_consistent(i32 %59, i32 8, %union.vnic_rss_cpu* %60, i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %47, %16
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %union.vnic_rss_cpu* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @enic_set_rss_cpu(%struct.enic*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %union.vnic_rss_cpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
