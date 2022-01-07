; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_end_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_osst.c_osst_end_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, %struct.osst_request* }
%struct.osst_request = type { i64, i64, i32, %struct.osst_tape* }
%struct.osst_tape = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.rq_map_data }
%struct.TYPE_3__ = type { i32 }
%struct.rq_map_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @osst_end_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osst_end_async(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.osst_request*, align 8
  %6 = alloca %struct.osst_tape*, align 8
  %7 = alloca %struct.rq_map_data*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 2
  %10 = load %struct.osst_request*, %struct.osst_request** %9, align 8
  store %struct.osst_request* %10, %struct.osst_request** %5, align 8
  %11 = load %struct.osst_request*, %struct.osst_request** %5, align 8
  %12 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %11, i32 0, i32 3
  %13 = load %struct.osst_tape*, %struct.osst_tape** %12, align 8
  store %struct.osst_tape* %13, %struct.osst_tape** %6, align 8
  %14 = load %struct.osst_request*, %struct.osst_request** %5, align 8
  %15 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %14, i32 0, i32 3
  %16 = load %struct.osst_tape*, %struct.osst_tape** %15, align 8
  %17 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.rq_map_data* %19, %struct.rq_map_data** %7, align 8
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.osst_request*, %struct.osst_request** %5, align 8
  %24 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.osst_tape*, %struct.osst_tape** %6, align 8
  %26 = getelementptr inbounds %struct.osst_tape, %struct.osst_tape* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 4
  %30 = load %struct.osst_request*, %struct.osst_request** %5, align 8
  %31 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.osst_request*, %struct.osst_request** %5, align 8
  %36 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @complete(i64 %37)
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.osst_request*, %struct.osst_request** %5, align 8
  %41 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.rq_map_data*, %struct.rq_map_data** %7, align 8
  %46 = getelementptr inbounds %struct.rq_map_data, %struct.rq_map_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @kfree(i32 %47)
  %49 = load %struct.osst_request*, %struct.osst_request** %5, align 8
  %50 = getelementptr inbounds %struct.osst_request, %struct.osst_request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @blk_rq_unmap_user(i64 %51)
  br label %53

53:                                               ; preds = %44, %39
  %54 = load %struct.request*, %struct.request** %3, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.request*, %struct.request** %3, align 8
  %58 = call i32 @__blk_put_request(i32 %56, %struct.request* %57)
  ret void
}

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @blk_rq_unmap_user(i64) #1

declare dso_local i32 @__blk_put_request(i32, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
