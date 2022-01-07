; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_status_read_refill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_status_read_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"axsref1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_status_read_refill(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %3, align 8
  br label %4

4:                                                ; preds = %28, %1
  %5 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %5, i32 0, i32 0
  %7 = call i32 @atomic_read(i32* %6)
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %4
  %10 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @zfcp_fsf_status_read(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %16, i32 0, i32 0
  %18 = call i32 @atomic_read(i32* %17)
  %19 = icmp sge i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %22 = call i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter* %21, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 1, i32* %2, align 4
  br label %30

23:                                               ; preds = %15
  br label %29

24:                                               ; preds = %9
  %25 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %25, i32 0, i32 0
  %27 = call i32 @atomic_dec(i32* %26)
  br label %28

28:                                               ; preds = %24
  br label %4

29:                                               ; preds = %23, %4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @zfcp_fsf_status_read(i32) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.zfcp_adapter*, i32, i8*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
