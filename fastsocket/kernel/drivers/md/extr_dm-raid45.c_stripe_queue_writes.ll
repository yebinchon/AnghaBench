; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_queue_writes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_queue_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { i32 }
%struct.stripe_chunk = type { i32 }
%struct.bio_list = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@WRITE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*)* @stripe_queue_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_queue_writes(%struct.stripe* %0) #0 {
  %2 = alloca %struct.stripe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.stripe_chunk*, align 8
  %6 = alloca %struct.bio_list*, align 8
  store %struct.stripe* %0, %struct.stripe** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.stripe*, %struct.stripe** %2, align 8
  %8 = getelementptr inbounds %struct.stripe, %struct.stripe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_4__* @RS(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %38, %1
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = load %struct.stripe*, %struct.stripe** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.stripe_chunk* @CHUNK(%struct.stripe* %19, i32 %20)
  store %struct.stripe_chunk* %21, %struct.stripe_chunk** %5, align 8
  %22 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %23 = load i32, i32* @WRITE, align 4
  %24 = call %struct.bio_list* @BL_CHUNK(%struct.stripe_chunk* %22, i32 %23)
  store %struct.bio_list* %24, %struct.bio_list** %6, align 8
  %25 = load %struct.bio_list*, %struct.bio_list** %6, align 8
  %26 = call i32 @bio_list_empty(%struct.bio_list* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %30 = load i32, i32* @WRITE_QUEUED, align 4
  %31 = call %struct.bio_list* @BL_CHUNK(%struct.stripe_chunk* %29, i32 %30)
  %32 = load %struct.bio_list*, %struct.bio_list** %6, align 8
  %33 = call i32 @bio_list_merge(%struct.bio_list* %31, %struct.bio_list* %32)
  %34 = load %struct.bio_list*, %struct.bio_list** %6, align 8
  %35 = call i32 @bio_list_init(%struct.bio_list* %34)
  %36 = load %struct.stripe_chunk*, %struct.stripe_chunk** %5, align 8
  %37 = call i32 @SetChunkIo(%struct.stripe_chunk* %36)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %18
  br label %14

39:                                               ; preds = %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.TYPE_4__* @RS(i32) #1

declare dso_local %struct.stripe_chunk* @CHUNK(%struct.stripe*, i32) #1

declare dso_local %struct.bio_list* @BL_CHUNK(%struct.stripe_chunk*, i32) #1

declare dso_local i32 @bio_list_empty(%struct.bio_list*) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @SetChunkIo(%struct.stripe_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
