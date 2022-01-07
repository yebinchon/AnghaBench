; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOCheckIsolated.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rioroute.c_RIOCheckIsolated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_info = type { i32 }
%struct.Host = type { i32 }

@RIO_DEBUG_ROUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unit %d is NOT isolated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_info*, %struct.Host*, i32)* @RIOCheckIsolated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RIOCheckIsolated(%struct.rio_info* %0, %struct.Host* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rio_info*, align 8
  %6 = alloca %struct.Host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rio_info* %0, %struct.rio_info** %5, align 8
  store %struct.Host* %1, %struct.Host** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.Host*, %struct.Host** %6, align 8
  %10 = getelementptr inbounds %struct.Host, %struct.Host* %9, i32 0, i32 0
  %11 = load i64, i64* %8, align 8
  %12 = call i32 @rio_spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.Host*, %struct.Host** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @RIOCheck(%struct.Host* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* @RIO_DEBUG_ROUTE, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @rio_dprintk(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.Host*, %struct.Host** %6, align 8
  %22 = getelementptr inbounds %struct.Host, %struct.Host* %21, i32 0, i32 0
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @rio_spin_unlock_irqrestore(i32* %22, i64 %23)
  store i32 0, i32* %4, align 4
  br label %36

25:                                               ; preds = %3
  %26 = load %struct.rio_info*, %struct.rio_info** %5, align 8
  %27 = load %struct.Host*, %struct.Host** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @RIOIsolate(%struct.rio_info* %26, %struct.Host* %27, i32 %28)
  %30 = load %struct.rio_info*, %struct.rio_info** %5, align 8
  %31 = call i32 @RIOSetChange(%struct.rio_info* %30)
  %32 = load %struct.Host*, %struct.Host** %6, align 8
  %33 = getelementptr inbounds %struct.Host, %struct.Host* %32, i32 0, i32 0
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @rio_spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %25, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @rio_spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @RIOCheck(%struct.Host*, i32) #1

declare dso_local i32 @rio_dprintk(i32, i8*, i32) #1

declare dso_local i32 @rio_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @RIOIsolate(%struct.rio_info*, %struct.Host*, i32) #1

declare dso_local i32 @RIOSetChange(%struct.rio_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
