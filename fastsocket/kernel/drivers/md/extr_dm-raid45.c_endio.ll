; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_endio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_endio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_chunk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@S_STRIPE_ERROR = common dso_local global i64 0, align 8
@CLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i8*)* @endio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @endio(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stripe_chunk*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.stripe_chunk*
  store %struct.stripe_chunk* %7, %struct.stripe_chunk** %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @unlikely(i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %13 = load i32, i32* @ERROR, align 4
  %14 = call i32 @chunk_set(%struct.stripe_chunk* %12, i32 %13)
  %15 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %16 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_5__* @RS(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @S_STRIPE_ERROR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @atomic_inc(i64 %24)
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %28 = load i32, i32* @CLEAN, align 4
  %29 = call i32 @chunk_set(%struct.stripe_chunk* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %11
  %31 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %32 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i64 @StripeRecover(%struct.TYPE_4__* %33)
  %35 = call i64 @unlikely(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %39 = call i32 @ClearChunkLocked(%struct.stripe_chunk* %38)
  br label %43

40:                                               ; preds = %30
  %41 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %42 = call i32 @SetChunkUnlock(%struct.stripe_chunk* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %45 = getelementptr inbounds %struct.stripe_chunk, %struct.stripe_chunk* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = call i32 @stripe_put_references(%struct.TYPE_4__* %46)
  ret void
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @chunk_set(%struct.stripe_chunk*, i32) #1

declare dso_local i32 @atomic_inc(i64) #1

declare dso_local %struct.TYPE_5__* @RS(i32) #1

declare dso_local i64 @StripeRecover(%struct.TYPE_4__*) #1

declare dso_local i32 @ClearChunkLocked(%struct.stripe_chunk*) #1

declare dso_local i32 @SetChunkUnlock(%struct.stripe_chunk*) #1

declare dso_local i32 @stripe_put_references(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
