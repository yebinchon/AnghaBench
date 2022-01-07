; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_sdma_intr_unmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_sdma_intr_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"mpsc_sdma_intr_unmask[%d]: mask: 0x%x\0A\00", align 1
@SDMA_INTR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpsc_port_info*, i32)* @mpsc_sdma_intr_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpsc_sdma_intr_unmask(%struct.mpsc_port_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mpsc_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %7 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %9, i32 %10)
  %12 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %13 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %18 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %24 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SDMA_INTR_MASK, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  br label %31

31:                                               ; preds = %22, %16
  %32 = phi i32 [ %21, %16 ], [ %30, %22 ]
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 15
  store i32 %34, i32* %4, align 4
  %35 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %36 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 8
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %31
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %48 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %54 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %43
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %60 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SDMA_INTR_MASK, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %58, i64 %65)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
