; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.zfcp_fsf_req = type { %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.zfcp_fsf_req* }

@zfcp_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %3 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %4 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %3, i32 0, i32 1
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %6 = call i64 @likely(%struct.zfcp_fsf_req* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %1
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 0
  %11 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %10, align 8
  %12 = call i64 @likely(%struct.zfcp_fsf_req* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %16 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %15, i32 0, i32 0
  %17 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %16, align 8
  %18 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %19 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %22, align 8
  %24 = call i32 @mempool_free(%struct.zfcp_fsf_req* %17, %struct.zfcp_fsf_req* %23)
  br label %25

25:                                               ; preds = %14, %8
  %26 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %27, i32 0, i32 1
  %29 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %28, align 8
  %30 = call i32 @mempool_free(%struct.zfcp_fsf_req* %26, %struct.zfcp_fsf_req* %29)
  br label %46

31:                                               ; preds = %1
  %32 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %33 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %32, i32 0, i32 0
  %34 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %33, align 8
  %35 = call i64 @likely(%struct.zfcp_fsf_req* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @zfcp_data, i32 0, i32 0), align 4
  %39 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %40 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %39, i32 0, i32 0
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %40, align 8
  %42 = call i32 @kmem_cache_free(i32 %38, %struct.zfcp_fsf_req* %41)
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %45 = call i32 @kfree(%struct.zfcp_fsf_req* %44)
  br label %46

46:                                               ; preds = %43, %25
  ret void
}

declare dso_local i64 @likely(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @mempool_free(%struct.zfcp_fsf_req*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @kfree(%struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
