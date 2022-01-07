; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_get_free_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_ev-layer.c_get_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i32, i32 }
%struct.cardstate = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.at_state_t }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.at_state_t* (%struct.cardstate*, i32)* @get_free_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.at_state_t* @get_free_channel(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca %struct.at_state_t*, align 8
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.at_state_t*, align 8
  store %struct.cardstate* %0, %struct.cardstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %37, %2
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %17 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = call i64 @gigaset_get_channel(%struct.TYPE_2__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %15
  %25 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %26 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.at_state_t* %31, %struct.at_state_t** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  %34 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  store %struct.at_state_t* %35, %struct.at_state_t** %3, align 8
  br label %65

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %9

40:                                               ; preds = %9
  %41 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %42 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %41, i32 0, i32 1
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.at_state_t* @kmalloc(i32 8, i32 %45)
  store %struct.at_state_t* %46, %struct.at_state_t** %8, align 8
  %47 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  %48 = icmp ne %struct.at_state_t* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  %51 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @gigaset_at_init(%struct.at_state_t* %50, i32* null, %struct.cardstate* %51, i32 %52)
  %54 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  %55 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %54, i32 0, i32 1
  %56 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %57 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %56, i32 0, i32 2
  %58 = call i32 @list_add(i32* %55, i32* %57)
  br label %59

59:                                               ; preds = %49, %40
  %60 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %61 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %60, i32 0, i32 1
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.at_state_t*, %struct.at_state_t** %8, align 8
  store %struct.at_state_t* %64, %struct.at_state_t** %3, align 8
  br label %65

65:                                               ; preds = %59, %24
  %66 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  ret %struct.at_state_t* %66
}

declare dso_local i64 @gigaset_get_channel(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.at_state_t* @kmalloc(i32, i32) #1

declare dso_local i32 @gigaset_at_init(%struct.at_state_t*, i32*, %struct.cardstate*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
