; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_set_baudrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_set_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BRG_BCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*, i32)* @mpsc_set_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_set_baudrate(%struct.mpsc_port_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mpsc_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %8 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 5
  %13 = sdiv i32 %10, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %5, align 4
  %15 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %16 = call i32 @mpsc_brg_disable(%struct.mpsc_port_info* %15)
  %17 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %18 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %23 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %27 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @BRG_BCR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  br label %32

32:                                               ; preds = %25, %21
  %33 = phi i32 [ %24, %21 ], [ %31, %25 ]
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, -65536
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 65535
  %38 = or i32 %35, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %40 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %46 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %50 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @BRG_BCR, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %56 = call i32 @mpsc_brg_enable(%struct.mpsc_port_info* %55)
  ret void
}

declare dso_local i32 @mpsc_brg_disable(%struct.mpsc_port_info*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mpsc_brg_enable(%struct.mpsc_port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
