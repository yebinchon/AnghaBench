; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_free_pending_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_raw1394.c_free_pending_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_request = type { i32, %struct.pending_request*, i64, %struct.pending_request*, i32, i32 }

@iso_buffer_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pending_request*)* @free_pending_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pending_request(%struct.pending_request* %0) #0 {
  %2 = alloca %struct.pending_request*, align 8
  store %struct.pending_request* %0, %struct.pending_request** %2, align 8
  %3 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %4 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %3, i32 0, i32 3
  %5 = load %struct.pending_request*, %struct.pending_request** %4, align 8
  %6 = icmp ne %struct.pending_request* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %9 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %8, i32 0, i32 3
  %10 = load %struct.pending_request*, %struct.pending_request** %9, align 8
  %11 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %10, i32 0, i32 5
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %7
  %15 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %16 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %15, i32 0, i32 3
  %17 = load %struct.pending_request*, %struct.pending_request** %16, align 8
  %18 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @atomic_sub(i32 %19, i32* @iso_buffer_size)
  %21 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %22 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %21, i32 0, i32 3
  %23 = load %struct.pending_request*, %struct.pending_request** %22, align 8
  %24 = call i32 @kfree(%struct.pending_request* %23)
  br label %25

25:                                               ; preds = %14, %7
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %28 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %33 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %32, i32 0, i32 1
  %34 = load %struct.pending_request*, %struct.pending_request** %33, align 8
  %35 = call i32 @kfree(%struct.pending_request* %34)
  br label %36

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %39 = getelementptr inbounds %struct.pending_request, %struct.pending_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @hpsb_free_packet(i32 %40)
  %42 = load %struct.pending_request*, %struct.pending_request** %2, align 8
  %43 = call i32 @kfree(%struct.pending_request* %42)
  ret void
}

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @kfree(%struct.pending_request*) #1

declare dso_local i32 @hpsb_free_packet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
