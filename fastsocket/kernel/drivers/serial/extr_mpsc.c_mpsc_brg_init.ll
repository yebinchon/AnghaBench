; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_brg_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_brg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { i32, i64, i64, i64 }

@BRG_BCR = common dso_local global i64 0, align 8
@BRG_BTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*, i32)* @mpsc_brg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_brg_init(%struct.mpsc_port_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mpsc_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %7 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %12 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %16 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BRG_BCR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i32 [ %13, %10 ], [ %20, %14 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -3932161
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 15
  %27 = shl i32 %26, 18
  %28 = or i32 %24, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %30 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, -33554433
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %38 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %44 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %48 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BRG_BCR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %54 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BRG_BTR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = and i32 %58, -65536
  %60 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %61 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BRG_BTR, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
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
