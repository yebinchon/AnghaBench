; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_irq_install_pre_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_irq_64.c_irq_install_pre_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_handler_data = type { void (i32, i8*, i8*)*, i8*, i8* }

@irq_desc = common dso_local global %struct.irq_desc* null, align 8
@pre_flow_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_install_pre_handler(i32 %0, void (i32, i8*, i8*)* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca void (i32, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.irq_handler_data*, align 8
  %10 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %5, align 4
  store void (i32, i8*, i8*)* %1, void (i32, i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.irq_handler_data* @get_irq_chip_data(i32 %11)
  store %struct.irq_handler_data* %12, %struct.irq_handler_data** %9, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** @irq_desc, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %13, i64 %15
  store %struct.irq_desc* %16, %struct.irq_desc** %10, align 8
  %17 = load void (i32, i8*, i8*)*, void (i32, i8*, i8*)** %6, align 8
  %18 = load %struct.irq_handler_data*, %struct.irq_handler_data** %9, align 8
  %19 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %18, i32 0, i32 0
  store void (i32, i8*, i8*)* %17, void (i32, i8*, i8*)** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.irq_handler_data*, %struct.irq_handler_data** %9, align 8
  %22 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.irq_handler_data*, %struct.irq_handler_data** %9, align 8
  %25 = getelementptr inbounds %struct.irq_handler_data, %struct.irq_handler_data* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @pre_flow_handler, align 4
  %27 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %28 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local %struct.irq_handler_data* @get_irq_chip_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
