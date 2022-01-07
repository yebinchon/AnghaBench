; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_scb_on_qoutfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_scb_on_qoutfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i64*, i32 }
%struct.aic7xxx_scb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SCB_LIST_NULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aic7xxx_host*, %struct.aic7xxx_scb*)* @aic7xxx_scb_on_qoutfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7xxx_scb_on_qoutfifo(%struct.aic7xxx_host* %0, %struct.aic7xxx_scb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aic7xxx_host*, align 8
  %5 = alloca %struct.aic7xxx_scb*, align 8
  %6 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %4, align 8
  store %struct.aic7xxx_scb* %1, %struct.aic7xxx_scb** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %46, %2
  %8 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %9 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %12 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = and i32 %15, 255
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %10, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SCB_LIST_NULL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %7
  %23 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %24 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %4, align 8
  %27 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %25, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %5, align 8
  %36 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %34, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %22
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %22
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43
  br label %7

47:                                               ; preds = %7
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %41
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
