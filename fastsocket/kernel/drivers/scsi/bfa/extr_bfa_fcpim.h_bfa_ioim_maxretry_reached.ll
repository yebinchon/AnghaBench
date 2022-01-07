; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.h_bfa_ioim_maxretry_reached.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.h_bfa_ioim_maxretry_reached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i64 }

@BFA_IOIM_RETRY_TAG_OFFSET = common dso_local global i64 0, align 8
@BFA_IOIM_RETRY_MAX = common dso_local global i64 0, align 8
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioim_s*)* @bfa_ioim_maxretry_reached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioim_maxretry_reached(%struct.bfa_ioim_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca i64, align 8
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  %5 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BFA_IOIM_RETRY_TAG_OFFSET, align 8
  %9 = ashr i64 %7, %8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @BFA_IOIM_RETRY_MAX, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @BFA_FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @BFA_TRUE, align 4
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
