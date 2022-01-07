; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_hb_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_nw_ioc_hb_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@BFA_IOC_HB_TOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_hb_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bfa_ioc*
  store %struct.bfa_ioc* %6, %struct.bfa_ioc** %3, align 8
  %7 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @readl(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %19 = call i32 @bfa_ioc_recover(%struct.bfa_ioc* %18)
  br label %34

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20
  %25 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %26 = call i32 @bfa_ioc_mbox_poll(%struct.bfa_ioc* %25)
  %27 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %27, i32 0, i32 1
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i32, i32* @BFA_IOC_HB_TOV, align 4
  %31 = call i64 @msecs_to_jiffies(i32 %30)
  %32 = add nsw i64 %29, %31
  %33 = call i32 @mod_timer(i32* %28, i64 %32)
  br label %34

34:                                               ; preds = %24, %17
  ret void
}

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @bfa_ioc_recover(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_mbox_poll(%struct.bfa_ioc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
