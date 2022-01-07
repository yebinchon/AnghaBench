; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_req_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.TYPE_4__, i32, i32, i32, i32*, %struct.zfcp_adapter* }
%struct.TYPE_4__ = type { i32 }
%struct.zfcp_adapter = type { i32, i32, i32, i32*, %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"fsrs__1\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fsf_req*)* @zfcp_fsf_req_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca %struct.zfcp_qdio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 6
  %11 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  store %struct.zfcp_adapter* %11, %struct.zfcp_adapter** %4, align 8
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %12, i32 0, i32 4
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  store %struct.zfcp_qdio* %14, %struct.zfcp_qdio** %5, align 8
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %16 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %20, i32 0, i32 2
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @zfcp_reqlist_hash(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %28, i32 0, i32 3
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @list_add_tail(i32* %29, i32* %35)
  %37 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %37, i32 0, i32 2
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %42 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @atomic_read(i32* %43)
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = call i32 (...) @get_clock()
  %49 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %5, align 8
  %52 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %53 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %52, i32 0, i32 1
  %54 = call i64 @zfcp_qdio_send(%struct.zfcp_qdio* %51, %struct.TYPE_4__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %1
  %57 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %58 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %57, i32 0, i32 0
  %59 = call i32 @del_timer(i32* %58)
  %60 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %60, i32 0, i32 2
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  %64 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %65 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %66 = call i64 @zfcp_reqlist_find_safe(%struct.zfcp_adapter* %64, %struct.zfcp_fsf_req* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %70 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %71 = call i32 @zfcp_reqlist_remove(%struct.zfcp_adapter* %69, %struct.zfcp_fsf_req* %70)
  br label %72

72:                                               ; preds = %68, %56
  %73 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %73, i32 0, i32 2
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %78 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %79 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %77, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.zfcp_fsf_req* %78)
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %95

82:                                               ; preds = %1
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %85, %82
  %91 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %72
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zfcp_reqlist_hash(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @get_clock(...) #1

declare dso_local i64 @zfcp_qdio_send(%struct.zfcp_qdio*, %struct.TYPE_4__*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i64 @zfcp_reqlist_find_safe(%struct.zfcp_adapter*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_reqlist_remove(%struct.zfcp_adapter*, %struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, %struct.zfcp_fsf_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
