; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-xfer-mode.c_ide_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-xfer-mode.c_ide_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.ide_port_ops* }
%struct.ide_port_ops = type { {}*, i32* }

@IDE_HFLAG_NO_SET_MODE = common dso_local global i32 0, align 4
@XFER_PIO_0 = common dso_local global i64 0, align 8
@IDE_HFLAG_POST_SET_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_set_pio_mode(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.ide_port_ops*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.ide_port_ops*, %struct.ide_port_ops** %12, align 8
  store %struct.ide_port_ops* %13, %struct.ide_port_ops** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IDE_HFLAG_NO_SET_MODE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %23 = icmp eq %struct.ide_port_ops* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %26 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.TYPE_9__*, i64)**
  %28 = load i32 (%struct.TYPE_9__*, i64)*, i32 (%struct.TYPE_9__*, i64)** %27, align 8
  %29 = icmp eq i32 (%struct.TYPE_9__*, i64)* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %21
  store i32 -1, i32* %3, align 4
  br label %82

31:                                               ; preds = %24
  %32 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %33 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %38 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.TYPE_9__*, i64)**
  %40 = load i32 (%struct.TYPE_9__*, i64)*, i32 (%struct.TYPE_9__*, i64)** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @XFER_PIO_0, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i32 %40(%struct.TYPE_9__* %41, i64 %44)
  store i32 0, i32* %3, align 4
  br label %82

46:                                               ; preds = %31
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IDE_HFLAG_POST_SET_MODE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @ide_config_drive_speed(%struct.TYPE_9__* %54, i64 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %82

59:                                               ; preds = %53
  %60 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %61 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %60, i32 0, i32 0
  %62 = bitcast {}** %61 to i32 (%struct.TYPE_9__*, i64)**
  %63 = load i32 (%struct.TYPE_9__*, i64)*, i32 (%struct.TYPE_9__*, i64)** %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @XFER_PIO_0, align 8
  %67 = sub nsw i64 %65, %66
  %68 = call i32 %63(%struct.TYPE_9__* %64, i64 %67)
  store i32 0, i32* %3, align 4
  br label %82

69:                                               ; preds = %46
  %70 = load %struct.ide_port_ops*, %struct.ide_port_ops** %7, align 8
  %71 = getelementptr inbounds %struct.ide_port_ops, %struct.ide_port_ops* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.TYPE_9__*, i64)**
  %73 = load i32 (%struct.TYPE_9__*, i64)*, i32 (%struct.TYPE_9__*, i64)** %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @XFER_PIO_0, align 8
  %77 = sub nsw i64 %75, %76
  %78 = call i32 %73(%struct.TYPE_9__* %74, i64 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @ide_config_drive_speed(%struct.TYPE_9__* %79, i64 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %69, %59, %58, %36, %30, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @ide_config_drive_speed(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
