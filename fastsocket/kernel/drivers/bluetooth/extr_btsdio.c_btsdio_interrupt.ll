; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.btsdio_data = type { %struct.sdio_func*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REG_INTRD = common dso_local global i32 0, align 4
@REG_CL_INTRD = common dso_local global i32 0, align 4
@REG_PC_RRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @btsdio_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btsdio_interrupt(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.btsdio_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %5 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %6 = call %struct.btsdio_data* @sdio_get_drvdata(%struct.sdio_func* %5)
  store %struct.btsdio_data* %6, %struct.btsdio_data** %3, align 8
  %7 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %8 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %14 = load i32, i32* @REG_INTRD, align 4
  %15 = call i32 @sdio_readb(%struct.sdio_func* %13, i32 %14, i32* null)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %1
  %20 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %21 = load i32, i32* @REG_CL_INTRD, align 4
  %22 = call i32 @sdio_writeb(%struct.sdio_func* %20, i32 1, i32 %21, i32* null)
  %23 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %24 = call i64 @btsdio_rx_packet(%struct.btsdio_data* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %28 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %35 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %34, i32 0, i32 0
  %36 = load %struct.sdio_func*, %struct.sdio_func** %35, align 8
  %37 = load i32, i32* @REG_PC_RRT, align 4
  %38 = call i32 @sdio_writeb(%struct.sdio_func* %36, i32 1, i32 %37, i32* null)
  br label %39

39:                                               ; preds = %26, %19
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

declare dso_local %struct.btsdio_data* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @sdio_readb(%struct.sdio_func*, i32, i32*) #1

declare dso_local i32 @sdio_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i64 @btsdio_rx_packet(%struct.btsdio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
