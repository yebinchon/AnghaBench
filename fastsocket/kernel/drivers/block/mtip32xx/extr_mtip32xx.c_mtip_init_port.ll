; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_init_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32, i32, i64, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32, i64 }

@HOST_CAP = common dso_local global i64 0, align 8
@HOST_CAP_64 = common dso_local global i32 0, align 4
@PORT_LST_ADDR_HI = common dso_local global i64 0, align 8
@PORT_FIS_ADDR_HI = common dso_local global i64 0, align 8
@PORT_LST_ADDR = common dso_local global i64 0, align 8
@PORT_FIS_ADDR = common dso_local global i64 0, align 8
@PORT_SCR_ERR = common dso_local global i64 0, align 8
@PORT_IRQ_STAT = common dso_local global i64 0, align 8
@HOST_IRQ_STAT = common dso_local global i64 0, align 8
@DEF_PORT_IRQ = common dso_local global i32 0, align 4
@PORT_IRQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtip_port*)* @mtip_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_init_port(%struct.mtip_port* %0) #0 {
  %2 = alloca %struct.mtip_port*, align 8
  %3 = alloca i32, align 4
  store %struct.mtip_port* %0, %struct.mtip_port** %2, align 8
  %4 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %5 = call i32 @mtip_deinit_port(%struct.mtip_port* %4)
  %6 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %7 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HOST_CAP, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = load i32, i32* @HOST_CAP_64, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %19 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 16
  %22 = ashr i32 %21, 16
  %23 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %24 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PORT_LST_ADDR_HI, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %30 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = ashr i32 %32, 16
  %34 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %35 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PORT_FIS_ADDR_HI, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %17, %1
  %41 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %42 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %45 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PORT_LST_ADDR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %51 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %54 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PORT_FIS_ADDR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %60 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PORT_SCR_ERR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @readl(i64 %63)
  %65 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %66 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @PORT_SCR_ERR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %88, %40
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %74 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %71
  %80 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %81 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %80, i32 0, i32 4
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @writel(i32 -1, i64 %86)
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %71

91:                                               ; preds = %71
  %92 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %93 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PORT_IRQ_STAT, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @readl(i64 %96)
  %98 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %99 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @PORT_IRQ_STAT, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %105 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %104, i32 0, i32 3
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HOST_IRQ_STAT, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @readl(i64 %110)
  %112 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %113 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @HOST_IRQ_STAT, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @writel(i32 %111, i64 %118)
  %120 = load i32, i32* @DEF_PORT_IRQ, align 4
  %121 = load %struct.mtip_port*, %struct.mtip_port** %2, align 8
  %122 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @PORT_IRQ_MASK, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  ret void
}

declare dso_local i32 @mtip_deinit_port(%struct.mtip_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
