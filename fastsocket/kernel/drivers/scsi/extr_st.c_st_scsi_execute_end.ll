; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_st_scsi_execute_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_st.c_st_scsi_execute_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, %struct.st_request* }
%struct.st_request = type { i64, %struct.bio*, i32, %struct.scsi_tape* }
%struct.bio = type { i32 }
%struct.scsi_tape = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @st_scsi_execute_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_scsi_execute_end(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_request*, align 8
  %6 = alloca %struct.scsi_tape*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 3
  %10 = load %struct.st_request*, %struct.st_request** %9, align 8
  store %struct.st_request* %10, %struct.st_request** %5, align 8
  %11 = load %struct.st_request*, %struct.st_request** %5, align 8
  %12 = getelementptr inbounds %struct.st_request, %struct.st_request* %11, i32 0, i32 3
  %13 = load %struct.scsi_tape*, %struct.scsi_tape** %12, align 8
  store %struct.scsi_tape* %13, %struct.scsi_tape** %6, align 8
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.st_request*, %struct.st_request** %5, align 8
  %18 = getelementptr inbounds %struct.st_request, %struct.st_request* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %20 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %16, i32* %23, align 4
  %24 = load %struct.request*, %struct.request** %3, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scsi_tape*, %struct.scsi_tape** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_tape, %struct.scsi_tape* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 4
  %32 = load %struct.st_request*, %struct.st_request** %5, align 8
  %33 = getelementptr inbounds %struct.st_request, %struct.st_request* %32, i32 0, i32 1
  %34 = load %struct.bio*, %struct.bio** %33, align 8
  store %struct.bio* %34, %struct.bio** %7, align 8
  %35 = load %struct.st_request*, %struct.st_request** %5, align 8
  %36 = getelementptr inbounds %struct.st_request, %struct.st_request* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.st_request*, %struct.st_request** %5, align 8
  %41 = getelementptr inbounds %struct.st_request, %struct.st_request* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @complete(i64 %42)
  br label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.bio*, %struct.bio** %7, align 8
  %46 = call i32 @blk_rq_unmap_user(%struct.bio* %45)
  %47 = load %struct.request*, %struct.request** %3, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.request*, %struct.request** %3, align 8
  %51 = call i32 @__blk_put_request(i32 %49, %struct.request* %50)
  ret void
}

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @blk_rq_unmap_user(%struct.bio*) #1

declare dso_local i32 @__blk_put_request(i32, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
