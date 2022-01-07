; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_command_desync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_command_desync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwicap_drvdata = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.hwicap_drvdata*, i32*, i32)* }
%struct.TYPE_4__ = type { i32 }

@XHI_CMD_DESYNCH = common dso_local global i32 0, align 4
@XHI_NOOP_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwicap_drvdata*)* @hwicap_command_desync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwicap_command_desync(%struct.hwicap_drvdata* %0) #0 {
  %2 = alloca %struct.hwicap_drvdata*, align 8
  %3 = alloca [4 x i32], align 16
  %4 = alloca i32, align 4
  store %struct.hwicap_drvdata* %0, %struct.hwicap_drvdata** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %2, align 8
  %6 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @hwicap_type_1_write(i32 %9)
  %11 = or i32 %10, 1
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %14
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @XHI_CMD_DESYNCH, align 4
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @XHI_NOOP_PACKET, align 4
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %24
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @XHI_NOOP_PACKET, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %2, align 8
  %32 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.hwicap_drvdata*, i32*, i32)*, i32 (%struct.hwicap_drvdata*, i32*, i32)** %34, align 8
  %36 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %2, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %3, i64 0, i64 0
  %38 = load i32, i32* %4, align 4
  %39 = call i32 %35(%struct.hwicap_drvdata* %36, i32* %37, i32 %38)
  ret i32 %39
}

declare dso_local i32 @hwicap_type_1_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
