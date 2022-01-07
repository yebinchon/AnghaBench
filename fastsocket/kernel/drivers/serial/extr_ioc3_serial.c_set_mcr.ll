; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_set_mcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc3_serial.c_set_mcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ioc3_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@SSCR_DMA_EN = common dso_local global i32 0, align 4
@SSCR_DMA_PAUSE = common dso_local global i32 0, align 4
@SSCR_PAUSE_STATE = common dso_local global i32 0, align 4
@MAXITER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, i32, i32)* @set_mcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mcr(%struct.uart_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ioc3_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %13 = call %struct.ioc3_port* @get_ioc3_port(%struct.uart_port* %12)
  store %struct.ioc3_port* %13, %struct.ioc3_port** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %15 = icmp ne %struct.ioc3_port* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %99

17:                                               ; preds = %3
  %18 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %19 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SSCR_DMA_EN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %17
  %25 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %26 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SSCR_DMA_PAUSE, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %31 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @writel(i32 %29, i32* %33)
  br label %35

35:                                               ; preds = %51, %24
  %36 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %37 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = call i32 @readl(i32* %39)
  %41 = load i32, i32* @SSCR_PAUSE_STATE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %35
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MAXITER, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %99

51:                                               ; preds = %44
  br label %35

52:                                               ; preds = %35
  br label %53

53:                                               ; preds = %52, %17
  %54 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %55 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @readl(i32* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, -16777216
  %61 = lshr i32 %60, 24
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %11, align 1
  %63 = load i32, i32* %6, align 4
  %64 = load i8, i8* %11, align 1
  %65 = sext i8 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %11, align 1
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i8, i8* %11, align 1
  %72 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %73 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %72, i32 0, i32 2
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @writeb(i8 signext %71, i32* %75)
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %79 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = call i32 @writel(i32 %77, i32* %81)
  %83 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %84 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @SSCR_DMA_EN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %53
  %90 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %91 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ioc3_port*, %struct.ioc3_port** %8, align 8
  %94 = getelementptr inbounds %struct.ioc3_port, %struct.ioc3_port* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = call i32 @writel(i32 %92, i32* %96)
  br label %98

98:                                               ; preds = %89, %53
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %50, %16
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.ioc3_port* @get_ioc3_port(%struct.uart_port*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writeb(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
