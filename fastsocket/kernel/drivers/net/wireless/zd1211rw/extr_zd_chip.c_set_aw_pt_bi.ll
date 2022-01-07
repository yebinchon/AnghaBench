; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_set_aw_pt_bi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_chip.c_set_aw_pt_bi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.aw_pt_bi = type { i32, i32, i32 }
%struct.zd_ioreq32 = type { i32, i32 }

@CR_ATIM_WND_PERIOD = common dso_local global i32 0, align 4
@CR_PRE_TBTT = common dso_local global i32 0, align 4
@CR_BCN_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_chip*, %struct.aw_pt_bi*)* @set_aw_pt_bi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_aw_pt_bi(%struct.zd_chip* %0, %struct.aw_pt_bi* %1) #0 {
  %3 = alloca %struct.zd_chip*, align 8
  %4 = alloca %struct.aw_pt_bi*, align 8
  %5 = alloca [3 x %struct.zd_ioreq32], align 16
  %6 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %3, align 8
  store %struct.aw_pt_bi* %1, %struct.aw_pt_bi** %4, align 8
  %7 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %8 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 65535
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 5
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 5, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %16 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %21 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %14
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %29 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %32 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %35 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %40 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %44 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %30
  %46 = load i32, i32* @CR_ATIM_WND_PERIOD, align 4
  %47 = getelementptr inbounds [3 x %struct.zd_ioreq32], [3 x %struct.zd_ioreq32]* %5, i64 0, i64 0
  %48 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %50 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x %struct.zd_ioreq32], [3 x %struct.zd_ioreq32]* %5, i64 0, i64 0
  %53 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 16
  %54 = load i32, i32* @CR_PRE_TBTT, align 4
  %55 = getelementptr inbounds [3 x %struct.zd_ioreq32], [3 x %struct.zd_ioreq32]* %5, i64 0, i64 1
  %56 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %58 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [3 x %struct.zd_ioreq32], [3 x %struct.zd_ioreq32]* %5, i64 0, i64 1
  %61 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @CR_BCN_INTERVAL, align 4
  %63 = getelementptr inbounds [3 x %struct.zd_ioreq32], [3 x %struct.zd_ioreq32]* %5, i64 0, i64 2
  %64 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.aw_pt_bi*, %struct.aw_pt_bi** %4, align 8
  %66 = getelementptr inbounds %struct.aw_pt_bi, %struct.aw_pt_bi* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, -65536
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %68, %69
  %71 = getelementptr inbounds [3 x %struct.zd_ioreq32], [3 x %struct.zd_ioreq32]* %5, i64 0, i64 2
  %72 = getelementptr inbounds %struct.zd_ioreq32, %struct.zd_ioreq32* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 16
  %73 = load %struct.zd_chip*, %struct.zd_chip** %3, align 8
  %74 = getelementptr inbounds [3 x %struct.zd_ioreq32], [3 x %struct.zd_ioreq32]* %5, i64 0, i64 0
  %75 = getelementptr inbounds [3 x %struct.zd_ioreq32], [3 x %struct.zd_ioreq32]* %5, i64 0, i64 0
  %76 = call i32 @ARRAY_SIZE(%struct.zd_ioreq32* %75)
  %77 = call i32 @zd_iowrite32a_locked(%struct.zd_chip* %73, %struct.zd_ioreq32* %74, i32 %76)
  ret i32 %77
}

declare dso_local i32 @zd_iowrite32a_locked(%struct.zd_chip*, %struct.zd_ioreq32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
