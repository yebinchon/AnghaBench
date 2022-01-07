; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_ss_alloc_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_ss_alloc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_msg = type { i32 }
%struct.st_hba = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.req_msg* (%struct.st_hba*)* @stex_ss_alloc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.req_msg* @stex_ss_alloc_req(%struct.st_hba* %0) #0 {
  %2 = alloca %struct.st_hba*, align 8
  store %struct.st_hba* %0, %struct.st_hba** %2, align 8
  %3 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %4 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %7 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %10 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %5, %13
  %15 = add i64 %14, 4
  %16 = inttoptr i64 %15 to %struct.req_msg*
  ret %struct.req_msg* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
