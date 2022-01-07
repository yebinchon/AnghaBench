; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_megaraid.c_megaraid_isr_memmapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_megaraid.c_megaraid_isr_memmapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i64 }

@MAX_FIRMWARE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @megaraid_isr_memmapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megaraid_isr_memmapped(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @MAX_FIRMWARE_STATUS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %91, %2
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = call i32 @RDOUTDOOR(%struct.TYPE_13__* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 268440116
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %93

29:                                               ; preds = %23
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = call i32 @WROUTDOOR(%struct.TYPE_13__* %30, i32 268440116)
  br label %32

32:                                               ; preds = %40, %29
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %9, align 4
  %39 = icmp eq i32 %38, 255
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = call i32 (...) @cpu_relax()
  br label %32

42:                                               ; preds = %32
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i32 255, i32* %47, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = call i32 @atomic_sub(i32 %54, i32* %56)
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @memcpy(i32* %18, i8* %64, i32 %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = call i32 @WRINDOOR(%struct.TYPE_13__* %67, i32 2)
  store i32 1, i32* %12, align 4
  br label %69

69:                                               ; preds = %74, %42
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = call i32 @RDINDOOR(%struct.TYPE_13__* %70)
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (...) @cpu_relax()
  br label %69

76:                                               ; preds = %69
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @mega_cmd_done(%struct.TYPE_13__* %77, i32* %18, i32 %78, i32 %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = call i32 @mega_rundoneq(%struct.TYPE_13__* %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = call i64 @atomic_read(i32* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %76
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = call i32 @mega_runpendq(%struct.TYPE_13__* %88)
  br label %90

90:                                               ; preds = %87, %76
  br label %91

91:                                               ; preds = %90
  br i1 true, label %23, label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92, %28
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @IRQ_RETVAL(i32 %98)
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @RDOUTDOOR(%struct.TYPE_13__*) #2

declare dso_local i32 @WROUTDOOR(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @cpu_relax(...) #2

declare dso_local i32 @atomic_sub(i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @WRINDOOR(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @RDINDOOR(%struct.TYPE_13__*) #2

declare dso_local i32 @mega_cmd_done(%struct.TYPE_13__*, i32*, i32, i32) #2

declare dso_local i32 @mega_rundoneq(%struct.TYPE_13__*) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i32 @mega_runpendq(%struct.TYPE_13__*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @IRQ_RETVAL(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
