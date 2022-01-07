; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-xfer-mode.c_ide_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-xfer-mode.c_ide_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.ide_port_ops* }
%struct.ide_port_ops = type { {}* }

@IDE_HFLAG_NO_SET_MODE = common dso_local global i32 0, align 4
@IDE_HFLAG_POST_SET_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_set_dma_mode(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.ide_port_ops*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load %struct.ide_port_ops*, %struct.ide_port_ops** %12, align 8
  store %struct.ide_port_ops* %13, %struct.ide_port_ops** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IDE_HFLAG_NO_SET_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %23 = icmp eq %struct.ide_port_ops* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %26 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.TYPE_8__*, i32)**
  %28 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %27, align 8
  %29 = icmp eq i32 (%struct.TYPE_8__*, i32)* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %21
  store i32 -1, i32* %3, align 4
  br label %63

31:                                               ; preds = %24
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IDE_HFLAG_POST_SET_MODE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ide_config_drive_speed(%struct.TYPE_8__* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %63

44:                                               ; preds = %38
  %45 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %46 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %45, i32 0, i32 0
  %47 = bitcast {}** %46 to i32 (%struct.TYPE_8__*, i32)**
  %48 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 %48(%struct.TYPE_8__* %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %63

52:                                               ; preds = %31
  %53 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %54 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %53, i32 0, i32 0
  %55 = bitcast {}** %54 to i32 (%struct.TYPE_8__*, i32)**
  %56 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 %56(%struct.TYPE_8__* %57, i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @ide_config_drive_speed(%struct.TYPE_8__* %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %52, %44, %43, %30, %20
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ide_config_drive_speed(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
