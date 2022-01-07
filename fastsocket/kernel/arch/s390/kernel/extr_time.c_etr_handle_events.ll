; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_handle_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_time.c_etr_handle_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etr_eacr = type { i64, i32, i64, i32, i64, i64 }

@ETR_EVENT_SYNC_CHECK = common dso_local global i32 0, align 4
@etr_events = common dso_local global i32 0, align 4
@ETR_EVENT_SWITCH_LOCAL = common dso_local global i32 0, align 4
@ETR_EVENT_PORT_ALERT = common dso_local global i32 0, align 4
@etr_port1_uptodate = common dso_local global i64 0, align 8
@etr_port0_uptodate = common dso_local global i64 0, align 8
@ETR_EVENT_PORT0_CHANGE = common dso_local global i32 0, align 4
@etr_tolec = common dso_local global i32 0, align 4
@etr_port0_online = common dso_local global i32 0, align 4
@ETR_EVENT_PORT1_CHANGE = common dso_local global i32 0, align 4
@etr_port1_online = common dso_local global i32 0, align 4
@ETR_EVENT_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.etr_eacr*, %struct.etr_eacr*)* @etr_handle_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etr_handle_events(%struct.etr_eacr* noalias sret %0, %struct.etr_eacr* byval(%struct.etr_eacr) align 8 %1) #0 {
  %3 = load i32, i32* @ETR_EVENT_SYNC_CHECK, align 4
  %4 = call i64 @test_and_clear_bit(i32 %3, i32* @etr_events)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 5
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %6, %2
  %9 = load i32, i32* @ETR_EVENT_SWITCH_LOCAL, align 4
  %10 = call i64 @test_and_clear_bit(i32 %9, i32* @etr_events)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 5
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12, %8
  %16 = load i32, i32* @ETR_EVENT_PORT_ALERT, align 4
  %17 = call i64 @test_and_clear_bit(i32 %16, i32* @etr_events)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i64 0, i64* @etr_port1_uptodate, align 8
  store i64 0, i64* @etr_port0_uptodate, align 8
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* @ETR_EVENT_PORT0_CHANGE, align 4
  %22 = call i64 @test_and_clear_bit(i32 %21, i32* @etr_events)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @get_clock()
  store i32 %29, i32* @etr_tolec, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* @etr_port0_online, align 4
  %32 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 2
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %36, %30
  store i64 0, i64* @etr_port0_uptodate, align 8
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i32, i32* @ETR_EVENT_PORT1_CHANGE, align 4
  %41 = call i64 @test_and_clear_bit(i32 %40, i32* @etr_events)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 (...) @get_clock()
  store i32 %48, i32* @etr_tolec, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* @etr_port1_online, align 4
  %51 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.etr_eacr, %struct.etr_eacr* %1, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %55, %49
  store i64 0, i64* @etr_port1_uptodate, align 8
  br label %58

58:                                               ; preds = %57, %39
  %59 = load i32, i32* @ETR_EVENT_UPDATE, align 4
  %60 = call i32 @clear_bit(i32 %59, i32* @etr_events)
  %61 = bitcast %struct.etr_eacr* %0 to i8*
  %62 = bitcast %struct.etr_eacr* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 48, i1 false)
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
