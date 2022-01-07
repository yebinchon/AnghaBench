; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_sdma_intr_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_mpsc.c_mpsc_sdma_intr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpsc_port_info = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"mpsc_sdma_intr_mask[%d]: mask: 0x%x\0A\00", align 1
@SDMA_INTR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpsc_port_info*, i32)* @mpsc_sdma_intr_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpsc_sdma_intr_mask(%struct.mpsc_port_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mpsc_port_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mpsc_port_info* %0, %struct.mpsc_port_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %8 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %11)
  %13 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %14 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %19 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %25 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SDMA_INTR_MASK, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  br label %32

32:                                               ; preds = %23, %17
  %33 = phi i32 [ %22, %17 ], [ %31, %23 ]
  store i32 %33, i32* %6, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %4, align 4
  %36 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %37 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 %42, 8
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %32
  %45 = load i32, i32* %4, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %50 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %56 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 8
  br label %59

59:                                               ; preds = %53, %44
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %62 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SDMA_INTR_MASK, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %60, i64 %67)
  %69 = load %struct.mpsc_port_info*, %struct.mpsc_port_info** %3, align 8
  %70 = getelementptr inbounds %struct.mpsc_port_info, %struct.mpsc_port_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = load i32, i32* %5, align 4
  %76 = ashr i32 %75, 8
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %59
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 15
  ret i32 %79
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
