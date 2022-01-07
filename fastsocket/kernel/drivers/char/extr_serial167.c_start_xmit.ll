; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_serial167.c_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_port = type { i32 }

@BASE_ADDR = common dso_local global i64 0, align 8
@CyCAR = common dso_local global i64 0, align 8
@CyTxMpty = common dso_local global i8 0, align 1
@CyIER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_xmit(%struct.cyclades_port* %0) #0 {
  %2 = alloca %struct.cyclades_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.cyclades_port* %0, %struct.cyclades_port** %2, align 8
  %6 = load i64, i64* @BASE_ADDR, align 8
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %4, align 8
  %8 = load %struct.cyclades_port*, %struct.cyclades_port** %2, align 8
  %9 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load i32, i32* %5, align 4
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* @CyCAR, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store volatile i8 %14, i8* %17, align 1
  %18 = load volatile i8, i8* @CyTxMpty, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* @CyIER, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load volatile i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %19
  %26 = trunc i32 %25 to i8
  store volatile i8 %26, i8* %22, align 1
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @local_irq_restore(i64 %27)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
