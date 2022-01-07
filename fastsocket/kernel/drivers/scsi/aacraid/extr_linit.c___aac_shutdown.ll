; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_linit.c___aac_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_linit.c___aac_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_8__*, i64, i32, %struct.fib*, %struct.TYPE_5__*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.fib = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AAC_NUM_MGT_FIB = common dso_local global i32 0, align 4
@NoResponseExpected = common dso_local global i32 0, align 4
@Async = common dso_local global i32 0, align 4
@ResponseExpected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*)* @__aac_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__aac_shutdown(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fib*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %5 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %6 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %63

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %55, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %13 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AAC_NUM_MGT_FIB, align 4
  %18 = add nsw i32 %16, %17
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %10
  %21 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %22 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %21, i32 0, i32 3
  %23 = load %struct.fib*, %struct.fib** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.fib, %struct.fib* %23, i64 %25
  store %struct.fib* %26, %struct.fib** %4, align 8
  %27 = load %struct.fib*, %struct.fib** %4, align 8
  %28 = getelementptr inbounds %struct.fib, %struct.fib* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NoResponseExpected, align 4
  %34 = load i32, i32* @Async, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @cpu_to_le32(i32 %35)
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %20
  %40 = load %struct.fib*, %struct.fib** %4, align 8
  %41 = getelementptr inbounds %struct.fib, %struct.fib* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ResponseExpected, align 4
  %47 = call i32 @cpu_to_le32(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load %struct.fib*, %struct.fib** %4, align 8
  %52 = getelementptr inbounds %struct.fib, %struct.fib* %51, i32 0, i32 0
  %53 = call i32 @up(i32* %52)
  br label %54

54:                                               ; preds = %50, %39, %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %10

58:                                               ; preds = %10
  %59 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %60 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @kthread_stop(i32 %61)
  br label %63

63:                                               ; preds = %58, %1
  %64 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %65 = call i32 @aac_send_shutdown(%struct.aac_dev* %64)
  %66 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %67 = call i32 @aac_adapter_disable_int(%struct.aac_dev* %66)
  %68 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %69 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %74 = call i32 @free_irq(i32 %72, %struct.aac_dev* %73)
  %75 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %76 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %63
  %80 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %81 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 @pci_disable_msi(%struct.TYPE_8__* %82)
  br label %84

84:                                               ; preds = %79, %63
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @aac_send_shutdown(%struct.aac_dev*) #1

declare dso_local i32 @aac_adapter_disable_int(%struct.aac_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.aac_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
