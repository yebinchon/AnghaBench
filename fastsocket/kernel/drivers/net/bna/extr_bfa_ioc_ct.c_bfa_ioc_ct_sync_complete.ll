; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_sync_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_sync_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BFI_IOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioc*)* @bfa_ioc_ct_sync_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_ct_sync_complete(%struct.bfa_ioc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bfa_ioc_ct_get_sync_reqd(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_ioc_ct_get_sync_ackd(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %24 = call i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc* %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %30 = call i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc* %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %35 = call i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc* %34)
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %27, %20
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @bfa_ioc_ct_clear_sync_ackd(i32 %43)
  %45 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @writel(i32 %44, i32 %48)
  %50 = load i32, i32* @BFI_IOC_FAIL, align 4
  %51 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @writel(i32 %50, i32 %54)
  %56 = load i32, i32* @BFI_IOC_FAIL, align 4
  %57 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writel(i32 %56, i32 %60)
  store i32 1, i32* %2, align 4
  br label %76

62:                                               ; preds = %38
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %71 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @writel(i32 %69, i32 %73)
  br label %75

75:                                               ; preds = %66, %62
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %42, %19
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @bfa_ioc_ct_get_sync_reqd(i32) #1

declare dso_local i32 @bfa_ioc_ct_get_sync_ackd(i32) #1

declare dso_local i32 @bfa_ioc_ct_sync_pos(%struct.bfa_ioc*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_ioc_ct_clear_sync_ackd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
