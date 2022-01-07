; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.jmb38x_ms = type { i32, %struct.TYPE_9__**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.jmb38x_ms_host = type { i32, %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { i32 }

@jmb38x_ms_dummy_submit = common dso_local global i32 0, align 4
@INT_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@INT_STATUS_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"interrupts off\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"host removed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @jmb38x_ms_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmb38x_ms_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.jmb38x_ms*, align 8
  %4 = alloca %struct.jmb38x_ms_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = call %struct.jmb38x_ms* @pci_get_drvdata(%struct.pci_dev* %7)
  store %struct.jmb38x_ms* %8, %struct.jmb38x_ms** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %113, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %12 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %116

15:                                               ; preds = %9
  %16 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %17 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %18, i64 %20
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = icmp ne %struct.TYPE_9__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %116

25:                                               ; preds = %15
  %26 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %27 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %28, i64 %30
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.TYPE_9__* %32)
  store %struct.jmb38x_ms_host* %33, %struct.jmb38x_ms_host** %4, align 8
  %34 = load i32, i32* @jmb38x_ms_dummy_submit, align 4
  %35 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %36 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %37, i64 %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %34, i32* %42, align 4
  %43 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %44 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %43, i32 0, i32 3
  %45 = call i32 @tasklet_kill(i32* %44)
  %46 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %47 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @INT_SIGNAL_ENABLE, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 0, i64 %50)
  %52 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %53 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 0, i64 %56)
  %58 = call i32 (...) @mmiowb()
  %59 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %60 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = call i32 @dev_dbg(i32* %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %65 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %64, i32 0, i32 0
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_lock_irqsave(i32* %65, i64 %66)
  %68 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %69 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = icmp ne %struct.TYPE_7__* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %25
  %73 = load i32, i32* @ETIME, align 4
  %74 = sub nsw i32 0, %73
  %75 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %76 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %75, i32 0, i32 1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %80 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %79, i32 0, i32 1
  %81 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %81, i64 %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = call i32 @jmb38x_ms_complete_cmd(%struct.TYPE_9__* %85, i32 1)
  br label %87

87:                                               ; preds = %72, %25
  %88 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %89 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %88, i32 0, i32 0
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %93 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %94, i64 %96
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = call i32 @memstick_remove_host(%struct.TYPE_9__* %98)
  %100 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %101 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %100, i32 0, i32 2
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = call i32 @dev_dbg(i32* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %106 = getelementptr inbounds %struct.jmb38x_ms, %struct.jmb38x_ms* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %107, i64 %109
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = call i32 @jmb38x_ms_free_host(%struct.TYPE_9__* %111)
  br label %113

113:                                              ; preds = %87
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %9

116:                                              ; preds = %24, %9
  %117 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %118 = call i32 @pci_set_drvdata(%struct.pci_dev* %117, i32* null)
  %119 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %120 = call i32 @pci_release_regions(%struct.pci_dev* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %122 = call i32 @pci_disable_device(%struct.pci_dev* %121)
  %123 = load %struct.jmb38x_ms*, %struct.jmb38x_ms** %3, align 8
  %124 = call i32 @kfree(%struct.jmb38x_ms* %123)
  ret void
}

declare dso_local %struct.jmb38x_ms* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.TYPE_9__*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jmb38x_ms_complete_cmd(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memstick_remove_host(%struct.TYPE_9__*) #1

declare dso_local i32 @jmb38x_ms_free_host(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.jmb38x_ms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
