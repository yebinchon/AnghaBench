; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_brg_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_brg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, i64 }

@BRG_BCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*)* @mpsc_brg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_brg_enable(%struct.mpsc_port_info* %0) #0 {
  %2 = alloca %struct.mpsc_port_info*, align 8
  %3 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %2, align 8
  %4 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %5 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %10 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %14 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BRG_BCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i32 [ %11, %8 ], [ %18, %12 ]
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, 65536
  store i32 %22, i32* %3, align 4
  %23 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %24 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %30 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %2, align 8
  %34 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BRG_BCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
