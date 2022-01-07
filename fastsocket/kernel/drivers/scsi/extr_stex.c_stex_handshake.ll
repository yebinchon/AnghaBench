; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_handshake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_stex.c_stex_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_hba = type { i64, i32, %struct.TYPE_2__*, i32, i64, i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@st_yel = common dso_local global i64 0, align 8
@MU_STATE_STARTED = common dso_local global i32 0, align 4
@MU_STATE_FAILED = common dso_local global i32 0, align 4
@MU_STATE_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_hba*)* @stex_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stex_handshake(%struct.st_hba* %0) #0 {
  %2 = alloca %struct.st_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.st_hba* %0, %struct.st_hba** %2, align 8
  %6 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %7 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @st_yel, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %13 = call i32 @stex_ss_handshake(%struct.st_hba* %12)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %16 = call i32 @stex_common_handshake(%struct.st_hba* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %13, %11 ], [ %16, %14 ]
  store i32 %18, i32* %3, align 4
  %19 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %20 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %27 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %17
  %32 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %33 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %32, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %35 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %37 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %39 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %41 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @MU_STATE_STARTED, align 4
  %43 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %44 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %49

45:                                               ; preds = %17
  %46 = load i32, i32* @MU_STATE_FAILED, align 4
  %47 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %48 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %31
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MU_STATE_RESETTING, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %55 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %54, i32 0, i32 3
  %56 = call i32 @wake_up_all(i32* %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.st_hba*, %struct.st_hba** %2, align 8
  %59 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32 %62, i64 %63)
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @stex_ss_handshake(%struct.st_hba*) #1

declare dso_local i32 @stex_common_handshake(%struct.st_hba*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
