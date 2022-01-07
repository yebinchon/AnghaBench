; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_set_parity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_set_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"mpsc_set_parity[%d]: parity bits: 0x%x\0A\00", align 1
@MPSC_CHR_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*, i32)* @mpsc_set_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_set_parity(%struct.mpsc_port_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mpsc_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %7 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %13 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %18 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  br label %27

20:                                               ; preds = %2
  %21 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %22 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MPSC_CHR_2, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %19, %16 ], [ %26, %20 ]
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 3
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, -786445
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %33, 18
  %35 = or i32 %32, %34
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 %36, 2
  %38 = or i32 %35, %37
  store i32 %38, i32* %5, align 4
  %39 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %40 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %27
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %46 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %27
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %50 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MPSC_CHR_2, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
