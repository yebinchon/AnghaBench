; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_exch.c_fc_exch_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_exch = type { void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, i32, i32, %struct.fc_seq, i8*, i32, i32, i32 }
%struct.fc_frame = type opaque
%struct.fc_seq = type { i32 }
%struct.fc_frame.0 = type opaque

@FC_EX_RST_CLEANUP = common dso_local global i32 0, align 4
@ESB_ST_REC_QUAL = common dso_local global i32 0, align 4
@FC_EX_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_exch*)* @fc_exch_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fc_exch_reset(%struct.fc_exch* %0) #0 {
  %2 = alloca %struct.fc_exch*, align 8
  %3 = alloca %struct.fc_seq*, align 8
  %4 = alloca void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_exch* %0, %struct.fc_exch** %2, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %8 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %11 = call i32 @fc_exch_abort_locked(%struct.fc_exch* %10, i32 0)
  %12 = load i32, i32* @FC_EX_RST_CLEANUP, align 4
  %13 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %14 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %18 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %17, i32 0, i32 6
  %19 = call i64 @cancel_delayed_work(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %23 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %22, i32 0, i32 5
  %24 = call i32 @atomic_dec(i32* %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %27 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %26, i32 0, i32 0
  %28 = load void (%struct.fc_seq*, %struct.fc_frame*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %27, align 8
  %29 = bitcast void (%struct.fc_seq*, %struct.fc_frame*, i8*)* %28 to void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)*
  store void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)* %29, void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)** %4, align 8
  %30 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %31 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %30, i32 0, i32 0
  store void (%struct.fc_seq*, %struct.fc_frame*, i8*)* null, void (%struct.fc_seq*, %struct.fc_frame*, i8*)** %31, align 8
  %32 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %33 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %25
  %39 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %40 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %39, i32 0, i32 5
  %41 = call i32 @atomic_dec(i32* %40)
  br label %42

42:                                               ; preds = %38, %25
  %43 = load i32, i32* @ESB_ST_REC_QUAL, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %46 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %50 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %5, align 8
  %52 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %53 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %52, i32 0, i32 3
  store %struct.fc_seq* %53, %struct.fc_seq** %3, align 8
  %54 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %55 = call i32 @fc_exch_done_locked(%struct.fc_exch* %54)
  store i32 %55, i32* %6, align 4
  %56 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %57 = getelementptr inbounds %struct.fc_exch, %struct.fc_exch* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock_bh(i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %42
  %62 = load %struct.fc_exch*, %struct.fc_exch** %2, align 8
  %63 = call i32 @fc_exch_delete(%struct.fc_exch* %62)
  br label %64

64:                                               ; preds = %61, %42
  %65 = load void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)** %4, align 8
  %66 = icmp ne void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)*, void (%struct.fc_seq*, %struct.fc_frame.0*, i8*)** %4, align 8
  %69 = load %struct.fc_seq*, %struct.fc_seq** %3, align 8
  %70 = load i32, i32* @FC_EX_CLOSED, align 4
  %71 = sub nsw i32 0, %70
  %72 = call %struct.fc_frame.0* @ERR_PTR(i32 %71)
  %73 = load i8*, i8** %5, align 8
  call void %68(%struct.fc_seq* %69, %struct.fc_frame.0* %72, i8* %73)
  br label %74

74:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @fc_exch_abort_locked(%struct.fc_exch*, i32) #1

declare dso_local i64 @cancel_delayed_work(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @fc_exch_done_locked(%struct.fc_exch*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @fc_exch_delete(%struct.fc_exch*) #1

declare dso_local %struct.fc_frame.0* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
