; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_init.c_bnx2i_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_init.c_bnx2i_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32, i32, i32, i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ADAPTER_STATE_GOING_DOWN = common dso_local global i32 0, align 4
@bnx2i_drop_session = common dso_local global i32 0, align 4
@ADAPTER_STATE_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2i_stop(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bnx2i_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.bnx2i_hba*
  store %struct.bnx2i_hba* %7, %struct.bnx2i_hba** %3, align 8
  %8 = load i32, i32* @HZ, align 4
  %9 = mul nsw i32 1, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @ADAPTER_STATE_GOING_DOWN, align 4
  %11 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %11, i32 0, i32 2
  %13 = call i32 @test_and_set_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %1
  %16 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @bnx2i_drop_session, align 4
  %20 = call i32 @iscsi_host_for_each_session(i32 %18, i32 %19)
  %21 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %28, i32 0, i32 5
  %30 = call i64 @list_empty(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %33, i32 0, i32 4
  %35 = call i64 @list_empty(i32* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %24
  %38 = phi i1 [ false, %24 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @HZ, align 4
  %41 = mul nsw i32 2, %40
  %42 = call i32 @wait_event_interruptible_timeout(i32 %27, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %69, %37
  %44 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %45 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  %52 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %53 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %56 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @wait_event_interruptible_timeout(i32 %54, i32 %60, i32 %61)
  %63 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %64 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %48
  br label %70

69:                                               ; preds = %48
  br label %43

70:                                               ; preds = %68, %43
  %71 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %72 = call i32 @bnx2i_chip_cleanup(%struct.bnx2i_hba* %71)
  %73 = load i32, i32* @ADAPTER_STATE_GOING_DOWN, align 4
  %74 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %75 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %74, i32 0, i32 2
  %76 = call i32 @clear_bit(i32 %73, i32* %75)
  %77 = load i32, i32* @ADAPTER_STATE_UP, align 4
  %78 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %3, align 8
  %79 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %78, i32 0, i32 2
  %80 = call i32 @clear_bit(i32 %77, i32* %79)
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @iscsi_host_for_each_session(i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @bnx2i_chip_cleanup(%struct.bnx2i_hba*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
