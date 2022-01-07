; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_enter_hunt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_enter_hunt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"mpsc_enter_hunt[%d]: Hunting...\0A\00", align 1
@MPSC_CHR_2_EH = common dso_local global i32 0, align 4
@MPSC_CHR_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*)* @mpsc_enter_hunt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_enter_hunt(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %3 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %4 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %3, i32 0, i32 3
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %9 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %14 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MPSC_CHR_2_EH, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %19 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MPSC_CHR_2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = call i32 @udelay(i32 100)
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %27 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MPSC_CHR_2, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  %32 = load i32, i32* @MPSC_CHR_2_EH, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %35 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MPSC_CHR_2, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %50, %25
  %41 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %42 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MPSC_CHR_2, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  %47 = load i32, i32* @MPSC_CHR_2_EH, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = call i32 @udelay(i32 10)
  br label %40

52:                                               ; preds = %40
  br label %53

53:                                               ; preds = %52, %12
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
