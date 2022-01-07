; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_ftimer_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_ftimer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"ftimer flags %04x\00", align 1
@BC_FLG_FTI_RUN = common dso_local global i32 0, align 4
@BC_FLG_LL_CONN = common dso_local global i32 0, align 4
@B_LL_CONNECT = common dso_local global i32 0, align 4
@BC_FLG_FTI_FTS = common dso_local global i32 0, align 4
@B_LL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*)* @ftimer_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftimer_handler(%struct.BCState* %0) #0 {
  %2 = alloca %struct.BCState*, align 8
  store %struct.BCState* %0, %struct.BCState** %2, align 8
  %3 = load %struct.BCState*, %struct.BCState** %2, align 8
  %4 = getelementptr inbounds %struct.BCState, %struct.BCState* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.BCState*, %struct.BCState** %2, align 8
  %11 = getelementptr inbounds %struct.BCState, %struct.BCState* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load %struct.BCState*, %struct.BCState** %2, align 8
  %14 = getelementptr inbounds %struct.BCState, %struct.BCState* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @debugl1(%struct.TYPE_2__* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load i32, i32* @BC_FLG_FTI_RUN, align 4
  %19 = load %struct.BCState*, %struct.BCState** %2, align 8
  %20 = getelementptr inbounds %struct.BCState, %struct.BCState* %19, i32 0, i32 0
  %21 = call i64 @test_and_clear_bit(i32 %18, i32* %20)
  %22 = load i32, i32* @BC_FLG_LL_CONN, align 4
  %23 = load %struct.BCState*, %struct.BCState** %2, align 8
  %24 = getelementptr inbounds %struct.BCState, %struct.BCState* %23, i32 0, i32 0
  %25 = call i64 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.BCState*, %struct.BCState** %2, align 8
  %29 = load i32, i32* @B_LL_CONNECT, align 4
  %30 = call i32 @schedule_event(%struct.BCState* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %17
  %32 = load i32, i32* @BC_FLG_FTI_FTS, align 4
  %33 = load %struct.BCState*, %struct.BCState** %2, align 8
  %34 = getelementptr inbounds %struct.BCState, %struct.BCState* %33, i32 0, i32 0
  %35 = call i64 @test_and_clear_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.BCState*, %struct.BCState** %2, align 8
  %39 = load i32, i32* @B_LL_OK, align 4
  %40 = call i32 @schedule_event(%struct.BCState* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %31
  ret void
}

declare dso_local i32 @debugl1(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
