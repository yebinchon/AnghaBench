; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_notify_fail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc_ct.c_bfa_ioc_ct_notify_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@__FW_INIT_HALT_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_ct_notify_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_ct_notify_fail(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %3 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %4 = call i64 @bfa_ioc_is_cna(%struct.bfa_ioc_s* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load i32, i32* @__FW_INIT_HALT_P, align 4
  %8 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %9 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @writel(i32 %7, i32 %11)
  %13 = load i32, i32* @__FW_INIT_HALT_P, align 4
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @writel(i32 %13, i32 %17)
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @readl(i32 %22)
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @readl(i32 %27)
  br label %40

29:                                               ; preds = %1
  %30 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %31 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @writel(i32 -1, i32 %33)
  %35 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %36 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @readl(i32 %38)
  br label %40

40:                                               ; preds = %29, %6
  ret void
}

declare dso_local i64 @bfa_ioc_is_cna(%struct.bfa_ioc_s*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
