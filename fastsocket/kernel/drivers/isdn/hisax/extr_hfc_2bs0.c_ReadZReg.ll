; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bs0.c_ReadZReg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_2bs0.c_ReadZReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@HFC_DATA = common dso_local global i32 0, align 4
@HFC_CIP = common dso_local global i32 0, align 4
@HFC_Z_HIGH = common dso_local global i32 0, align 4
@HFC_Z_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BCState*, i32)* @ReadZReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadZReg(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.BCState*, %struct.BCState** %3, align 8
  %7 = getelementptr inbounds %struct.BCState, %struct.BCState* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call i32 @WaitNoBusy(%struct.TYPE_4__* %8)
  %10 = load %struct.BCState*, %struct.BCState** %3, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %13, align 8
  %15 = load %struct.BCState*, %struct.BCState** %3, align 8
  %16 = getelementptr inbounds %struct.BCState, %struct.BCState* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* @HFC_DATA, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @HFC_CIP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HFC_Z_HIGH, align 4
  %23 = or i32 %21, %22
  %24 = call i32 %14(%struct.TYPE_4__* %17, i32 %18, i32 %23)
  %25 = mul nsw i32 256, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.BCState*, %struct.BCState** %3, align 8
  %27 = getelementptr inbounds %struct.BCState, %struct.BCState* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @WaitNoBusy(%struct.TYPE_4__* %28)
  %30 = load %struct.BCState*, %struct.BCState** %3, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %33, align 8
  %35 = load %struct.BCState*, %struct.BCState** %3, align 8
  %36 = getelementptr inbounds %struct.BCState, %struct.BCState* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* @HFC_DATA, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @HFC_CIP, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @HFC_Z_LOW, align 4
  %43 = or i32 %41, %42
  %44 = call i32 %34(%struct.TYPE_4__* %37, i32 %38, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @WaitNoBusy(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
