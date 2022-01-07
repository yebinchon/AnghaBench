; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_reshape_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid10.c_end_reshape_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10bio = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r10bio*)* @end_reshape_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_reshape_request(%struct.r10bio* %0) #0 {
  %2 = alloca %struct.r10bio*, align 8
  store %struct.r10bio* %0, %struct.r10bio** %2, align 8
  %3 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %4 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %3, i32 0, i32 3
  %5 = call i32 @atomic_dec_and_test(i32* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  %9 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %10 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %13 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @md_done_sync(i32 %11, i32 %14, i32 1)
  %16 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %17 = getelementptr inbounds %struct.r10bio, %struct.r10bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bio_put(i32 %18)
  %20 = load %struct.r10bio*, %struct.r10bio** %2, align 8
  %21 = call i32 @put_buf(%struct.r10bio* %20)
  br label %22

22:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @md_done_sync(i32, i32, i32) #1

declare dso_local i32 @bio_put(i32) #1

declare dso_local i32 @put_buf(%struct.r10bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
