; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_add_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_t = type { i32, i32, i32, i8*, i8*, %struct.at_state_t* }
%struct.cardstate = type { i32, i32, i32, %struct.event_t*, i32 }
%struct.at_state_t = type { i32 }

@MAX_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"event queue full\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_t* @gigaset_add_event(%struct.cardstate* %0, %struct.at_state_t* %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.cardstate*, align 8
  %8 = alloca %struct.at_state_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.event_t*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %7, align 8
  store %struct.at_state_t* %1, %struct.at_state_t** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store %struct.event_t* null, %struct.event_t** %16, align 8
  %17 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 2
  %19 = load i64, i64* %13, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %22 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = add i32 %24, 1
  %26 = load i32, i32* @MAX_EVENTS, align 4
  %27 = urem i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %30 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %6
  %37 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %68

41:                                               ; preds = %6
  %42 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %43 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %42, i32 0, i32 3
  %44 = load %struct.event_t*, %struct.event_t** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.event_t, %struct.event_t* %44, i64 %46
  store %struct.event_t* %47, %struct.event_t** %16, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.event_t*, %struct.event_t** %16, align 8
  %50 = getelementptr inbounds %struct.event_t, %struct.event_t* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  %52 = load %struct.event_t*, %struct.event_t** %16, align 8
  %53 = getelementptr inbounds %struct.event_t, %struct.event_t* %52, i32 0, i32 5
  store %struct.at_state_t* %51, %struct.at_state_t** %53, align 8
  %54 = load %struct.event_t*, %struct.event_t** %16, align 8
  %55 = getelementptr inbounds %struct.event_t, %struct.event_t* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load %struct.event_t*, %struct.event_t** %16, align 8
  %58 = getelementptr inbounds %struct.event_t, %struct.event_t* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load %struct.event_t*, %struct.event_t** %16, align 8
  %61 = getelementptr inbounds %struct.event_t, %struct.event_t* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.event_t*, %struct.event_t** %16, align 8
  %64 = getelementptr inbounds %struct.event_t, %struct.event_t* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %67 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %41, %36
  %69 = load %struct.cardstate*, %struct.cardstate** %7, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 2
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.event_t*, %struct.event_t** %16, align 8
  ret %struct.event_t* %73
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
