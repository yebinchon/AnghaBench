; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_hb_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_hb_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_ioc_hb_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_hb_check(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bfa_ioc_s*
  store %struct.bfa_ioc_s* %6, %struct.bfa_ioc_s** %3, align 8
  %7 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @readl(i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %19 = call i32 @bfa_ioc_recover(%struct.bfa_ioc_s* %18)
  br label %29

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %24

24:                                               ; preds = %20
  %25 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %26 = call i32 @bfa_ioc_mbox_poll(%struct.bfa_ioc_s* %25)
  %27 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %28 = call i32 @bfa_hb_timer_start(%struct.bfa_ioc_s* %27)
  br label %29

29:                                               ; preds = %24, %17
  ret void
}

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @bfa_ioc_recover(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_ioc_mbox_poll(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_hb_timer_start(%struct.bfa_ioc_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
