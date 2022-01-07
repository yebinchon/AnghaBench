; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_jobdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_jobdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, %struct.TYPE_2__*, %struct.request* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.request = type { i32, i32, i64, %struct.request* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_bsg_job*)* @fc_bsg_jobdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_bsg_jobdone(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca %struct.fc_bsg_job*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %2, align 8
  %6 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %7 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %6, i32 0, i32 2
  %8 = load %struct.request*, %struct.request** %7, align 8
  store %struct.request* %8, %struct.request** %3, align 8
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 3
  %11 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %11, %struct.request** %4, align 8
  %12 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %13 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %18 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %17, i32 0, i32 2
  %19 = load %struct.request*, %struct.request** %18, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  store i32 %16, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %25 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %24, i32 0, i32 2
  %26 = load %struct.request*, %struct.request** %25, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 1
  store i32 4, i32* %27, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %30 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %33 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %32, i32 0, i32 2
  %34 = load %struct.request*, %struct.request** %33, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %28, %23
  %37 = load %struct.request*, %struct.request** %3, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = icmp ne %struct.request* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %36
  %42 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %43 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %2, align 8
  %54 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.request*, %struct.request** %4, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @min(i64 %57, i64 %60)
  %62 = load %struct.request*, %struct.request** %4, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %41, %36
  %67 = load %struct.request*, %struct.request** %3, align 8
  %68 = call i32 @blk_complete_request(%struct.request* %67)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @blk_complete_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
