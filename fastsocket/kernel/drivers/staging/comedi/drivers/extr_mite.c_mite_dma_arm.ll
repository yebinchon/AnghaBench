; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_dma_arm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_dma_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32, i64, %struct.mite_struct* }
%struct.mite_struct = type { i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"mite_dma_arm ch%i\0A\00", align 1
@channel = common dso_local global i32 0, align 4
@CHOR_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mite_dma_arm(%struct.mite_channel* %0) #0 {
  %2 = alloca %struct.mite_channel*, align 8
  %3 = alloca %struct.mite_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.mite_channel* %0, %struct.mite_channel** %2, align 8
  %6 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %7 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %6, i32 0, i32 2
  %8 = load %struct.mite_struct*, %struct.mite_struct** %7, align 8
  store %struct.mite_struct* %8, %struct.mite_struct** %3, align 8
  %9 = load i32, i32* @channel, align 4
  %10 = call i32 @MDPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 (...) @smp_mb()
  %12 = load i32, i32* @CHOR_START, align 4
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %14 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %18 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %21 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %24 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @MITE_CHOR(i32 %25)
  %27 = add nsw i64 %22, %26
  %28 = call i32 @writel(i32 %19, i64 %27)
  %29 = call i32 (...) @mmiowb()
  %30 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %31 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @MDPRINTK(i8*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @MITE_CHOR(i32) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
