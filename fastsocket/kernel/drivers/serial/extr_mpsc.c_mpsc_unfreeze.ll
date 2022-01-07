; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_unfreeze.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_unfreeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { %struct.TYPE_2__, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@MPSC_MPCR = common dso_local global i64 0, align 8
@MPSC_MPCR_FRZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mpsc_unfreeze[%d]: Unfrozen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*)* @mpsc_unfreeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_unfreeze(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  %3 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %4 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %5 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %10 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %14 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MPSC_MPCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %11, %8 ], [ %18, %12 ]
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @MPSC_MPCR_FRZ, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %26 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %32 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %19
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %36 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MPSC_MPCR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %42 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
