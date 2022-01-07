; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_initiator.c__put_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_initiator.c__put_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @_put_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_put_request(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @WARN_ON(i32 %10)
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = call i32 @__blk_put_request(i32 %14, %struct.request* %15)
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.request*, %struct.request** %3, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = load %struct.request*, %struct.request** %3, align 8
  %28 = call i32 @blk_rq_bytes(%struct.request* %27)
  %29 = call i32 @blk_end_request(%struct.request* %24, i32 %26, i32 %28)
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.request*, %struct.request** %3, align 8
  %32 = call i32 @blk_put_request(%struct.request* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33, %7
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__blk_put_request(i32, %struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_end_request(%struct.request*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
