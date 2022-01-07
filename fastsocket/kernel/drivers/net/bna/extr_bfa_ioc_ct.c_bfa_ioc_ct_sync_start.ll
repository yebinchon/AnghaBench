; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_sync_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_sync_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc*)* @bfa_ioc_ct_sync_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_ct_sync_start(%struct.bfa_ioc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  %6 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @bfa_ioc_ct_get_sync_reqd(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %15 = call i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc* %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %1
  %19 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @writel(i32 0, i32 %22)
  %24 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @writel(i32 1, i32 %27)
  %29 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %30 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel(i32 %29, i32 %33)
  %35 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %36 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @writel(i32 %35, i32 %39)
  store i32 1, i32* %2, align 4
  br label %44

41:                                               ; preds = %1
  %42 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %43 = call i32 @bfa_ioc_ct_sync_complete(%struct.bfa_ioc* %42)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @bfa_ioc_ct_get_sync_reqd(i32) #1

declare dso_local i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_ioc_ct_sync_complete(%struct.bfa_ioc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
