; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_get_configuration_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/xilinx_hwicap/extr_xilinx_hwicap.c_hwicap_get_configuration_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwicap_drvdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hwicap_drvdata*, i32*, i32)*, i32 (%struct.hwicap_drvdata*)*, i32 (%struct.hwicap_drvdata*, i32*, i32)* }

@XHI_DUMMY_PACKET = common dso_local global i32 0, align 4
@XHI_NOOP_PACKET = common dso_local global i32 0, align 4
@XHI_SYNC_PACKET = common dso_local global i32 0, align 4
@XHI_SR_DALIGN_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwicap_drvdata*, i32, i32*)* @hwicap_get_configuration_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwicap_get_configuration_register(%struct.hwicap_drvdata* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwicap_drvdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.hwicap_drvdata* %0, %struct.hwicap_drvdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @XHI_DUMMY_PACKET, align 4
  %12 = load i32, i32* %10, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %10, align 4
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %14
  store i32 %11, i32* %15, align 4
  %16 = load i32, i32* @XHI_NOOP_PACKET, align 4
  %17 = load i32, i32* %10, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* @XHI_SYNC_PACKET, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %10, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %24
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @XHI_NOOP_PACKET, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %29
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @XHI_NOOP_PACKET, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %37 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.hwicap_drvdata*, i32*, i32)*, i32 (%struct.hwicap_drvdata*, i32*, i32)** %39, align 8
  %41 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %42 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %43 = load i32, i32* %10, align 4
  %44 = call i32 %40(%struct.hwicap_drvdata* %41, i32* %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %3
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %110

49:                                               ; preds = %3
  %50 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %51 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32 (%struct.hwicap_drvdata*)*, i32 (%struct.hwicap_drvdata*)** %53, align 8
  %55 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %56 = call i32 %54(%struct.hwicap_drvdata* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @XHI_SR_DALIGN_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @XHI_SR_DALIGN_MASK, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %49
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %110

65:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @hwicap_type_1_read(i32 %66)
  %68 = or i32 %67, 1
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @XHI_NOOP_PACKET, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %76
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* @XHI_NOOP_PACKET, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %81
  store i32 %78, i32* %82, align 4
  %83 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %84 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32 (%struct.hwicap_drvdata*, i32*, i32)*, i32 (%struct.hwicap_drvdata*, i32*, i32)** %86, align 8
  %88 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %89 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %90 = load i32, i32* %10, align 4
  %91 = call i32 %87(%struct.hwicap_drvdata* %88, i32* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %65
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %110

96:                                               ; preds = %65
  %97 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %98 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32 (%struct.hwicap_drvdata*, i32*, i32)*, i32 (%struct.hwicap_drvdata*, i32*, i32)** %100, align 8
  %102 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 %101(%struct.hwicap_drvdata* %102, i32* %103, i32 1)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %110

109:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %107, %94, %62, %47
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @hwicap_type_1_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
