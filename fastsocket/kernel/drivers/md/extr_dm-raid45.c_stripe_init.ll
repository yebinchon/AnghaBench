; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_cache = type { i32 }
%struct.stripe = type { %struct.TYPE_5__, i32, i64, %struct.stripe_cache* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.stripe_chunk = type { i64, %struct.stripe*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_cache*, %struct.stripe*)* @stripe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripe_init(%struct.stripe_cache* %0, %struct.stripe* %1) #0 {
  %3 = alloca %struct.stripe_cache*, align 8
  %4 = alloca %struct.stripe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stripe_chunk*, align 8
  store %struct.stripe_cache* %0, %struct.stripe_cache** %3, align 8
  store %struct.stripe* %1, %struct.stripe** %4, align 8
  %8 = load %struct.stripe_cache*, %struct.stripe_cache** %3, align 8
  %9 = call %struct.TYPE_6__* @RS(%struct.stripe_cache* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %43, %2
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load %struct.stripe*, %struct.stripe** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.stripe_chunk* @CHUNK(%struct.stripe* %18, i32 %19)
  store %struct.stripe_chunk* %20, %struct.stripe_chunk** %7, align 8
  %21 = load %struct.stripe_chunk*, %struct.stripe_chunk** %7, align 8
  %22 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %21, i32 0, i32 2
  %23 = call i32 @atomic_set(i32* %22, i32 0)
  %24 = load %struct.stripe*, %struct.stripe** %4, align 8
  %25 = load %struct.stripe_chunk*, %struct.stripe_chunk** %7, align 8
  %26 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %25, i32 0, i32 1
  store %struct.stripe* %24, %struct.stripe** %26, align 8
  %27 = load %struct.stripe_chunk*, %struct.stripe_chunk** %7, align 8
  %28 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ARRAY_SIZE(i64 %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %35, %17
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %5, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.stripe_chunk*, %struct.stripe_chunk** %7, align 8
  %37 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @bio_list_init(i64 %41)
  br label %31

43:                                               ; preds = %31
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.stripe_cache*, %struct.stripe_cache** %3, align 8
  %46 = load %struct.stripe*, %struct.stripe** %4, align 8
  %47 = getelementptr inbounds %struct.stripe, %struct.stripe* %46, i32 0, i32 3
  store %struct.stripe_cache* %45, %struct.stripe_cache** %47, align 8
  %48 = load %struct.stripe*, %struct.stripe** %4, align 8
  %49 = getelementptr inbounds %struct.stripe, %struct.stripe* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ARRAY_SIZE(i64 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %56, %44
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, -1
  store i32 %54, i32* %5, align 4
  %55 = icmp ne i32 %53, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.stripe*, %struct.stripe** %4, align 8
  %58 = getelementptr inbounds %struct.stripe, %struct.stripe* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @INIT_LIST_HEAD(i64 %62)
  br label %52

64:                                               ; preds = %52
  %65 = load %struct.stripe_cache*, %struct.stripe_cache** %3, align 8
  %66 = call %struct.TYPE_6__* @RS(%struct.stripe_cache* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.stripe*, %struct.stripe** %4, align 8
  %71 = getelementptr inbounds %struct.stripe, %struct.stripe* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.stripe*, %struct.stripe** %4, align 8
  %74 = getelementptr inbounds %struct.stripe, %struct.stripe* %73, i32 0, i32 1
  %75 = call i32 @atomic_set(i32* %74, i32 0)
  %76 = load %struct.stripe*, %struct.stripe** %4, align 8
  %77 = getelementptr inbounds %struct.stripe, %struct.stripe* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @atomic_set(i32* %78, i32 0)
  %80 = load %struct.stripe*, %struct.stripe** %4, align 8
  %81 = call i32 @stripe_invalidate(%struct.stripe* %80)
  ret void
}

declare dso_local %struct.TYPE_6__* @RS(%struct.stripe_cache*) #1

declare dso_local %struct.stripe_chunk* @CHUNK(%struct.stripe*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i64) #1

declare dso_local i32 @bio_list_init(i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i64) #1

declare dso_local i32 @stripe_invalidate(%struct.stripe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
