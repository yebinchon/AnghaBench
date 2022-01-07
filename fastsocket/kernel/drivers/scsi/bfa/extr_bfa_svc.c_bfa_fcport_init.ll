; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.bfa_fcport_s = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@BFA_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcport_init(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_fcport_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %4 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %5 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s* %4)
  store %struct.bfa_fcport_s* %5, %struct.bfa_fcport_s** %3, align 8
  %6 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %7 = call i32 @bfa_fcport_set_wwns(%struct.bfa_fcport_s* %6)
  %8 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %14, i32 0, i32 1
  %16 = call i64 @bfa_ioc_maxfrsize(i32* %15)
  %17 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %22 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %21, i32 0, i32 1
  %23 = call i32 @bfa_ioc_rx_bbcredit(i32* %22)
  %24 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %28 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %27, i32 0, i32 1
  %29 = call i32 @bfa_ioc_speed_sup(i32* %28)
  %30 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %33 = call i64 @bfa_fcport_is_pbcdisabled(%struct.bfa_s* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load i32, i32* @BFA_TRUE, align 4
  %37 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %38 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %20
  %42 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON(i32 %63)
  ret void
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcport_set_wwns(%struct.bfa_fcport_s*) #1

declare dso_local i64 @bfa_ioc_maxfrsize(i32*) #1

declare dso_local i32 @bfa_ioc_rx_bbcredit(i32*) #1

declare dso_local i32 @bfa_ioc_speed_sup(i32*) #1

declare dso_local i64 @bfa_fcport_is_pbcdisabled(%struct.bfa_s*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
