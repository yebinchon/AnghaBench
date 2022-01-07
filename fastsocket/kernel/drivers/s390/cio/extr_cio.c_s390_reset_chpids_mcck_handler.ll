; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_s390_reset_chpids_mcck_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_cio.c_s390_reset_chpids_mcck_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.crw = type { i64, i64 }
%struct.mci = type { i32 }

@S390_lowcore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CRW_RSC_CPATH = common dso_local global i64 0, align 8
@chpid_reset_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s390_reset_chpids_mcck_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_reset_chpids_mcck_handler() #0 {
  %1 = alloca %struct.crw, align 8
  %2 = alloca %struct.mci*, align 8
  store %struct.mci* bitcast (%struct.TYPE_2__* @S390_lowcore to %struct.mci*), %struct.mci** %2, align 8
  %3 = load %struct.mci*, %struct.mci** %2, align 8
  %4 = getelementptr inbounds %struct.mci, %struct.mci* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %24

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %23, %8
  %10 = call i64 @stcrw(%struct.crw* %1)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.crw, %struct.crw* %1, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.crw, %struct.crw* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CRW_RSC_CPATH, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @atomic_dec(i32* @chpid_reset_count)
  br label %23

23:                                               ; preds = %21, %16, %12
  br label %9

24:                                               ; preds = %7, %9
  ret void
}

declare dso_local i64 @stcrw(%struct.crw*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
