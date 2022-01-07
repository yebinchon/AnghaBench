; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_dma_tcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_mite.c_mite_dma_tcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32, %struct.mite_struct* }
%struct.mite_struct = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"mite_dma_tcr ch%i, lkar=0x%08x tcr=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mite_dma_tcr(%struct.mite_channel* %0) #0 {
  %2 = alloca %struct.mite_channel*, align 8
  %3 = alloca %struct.mite_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mite_channel* %0, %struct.mite_channel** %2, align 8
  %6 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %7 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %6, i32 0, i32 1
  %8 = load %struct.mite_struct*, %struct.mite_struct** %7, align 8
  store %struct.mite_struct* %8, %struct.mite_struct** %3, align 8
  %9 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %10 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %13 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @MITE_LKAR(i32 %14)
  %16 = add nsw i64 %11, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mite_struct*, %struct.mite_struct** %3, align 8
  %19 = getelementptr inbounds %struct.mite_struct, %struct.mite_struct* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %22 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @MITE_TCR(i32 %23)
  %25 = add nsw i64 %20, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.mite_channel*, %struct.mite_channel** %2, align 8
  %28 = getelementptr inbounds %struct.mite_channel, %struct.mite_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @MDPRINTK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MITE_LKAR(i32) #1

declare dso_local i64 @MITE_TCR(i32) #1

declare dso_local i32 @MDPRINTK(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
