; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_indicate_netevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_indicate_netevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_hba = type { i32, i32 }

@ADAPTER_STATE_UP = common dso_local global i32 0, align 4
@ADAPTER_STATE_GOING_DOWN = common dso_local global i32 0, align 4
@bnx2i_drop_session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @bnx2i_indicate_netevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_indicate_netevent(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bnx2i_hba*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bnx2i_hba*
  store %struct.bnx2i_hba* %9, %struct.bnx2i_hba** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %48

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  switch i64 %14, label %47 [
    i64 128, label %15
    i64 130, label %25
    i64 129, label %34
    i64 131, label %44
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @ADAPTER_STATE_UP, align 4
  %17 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %18 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %17, i32 0, i32 1
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %23 = call i32 @bnx2i_send_fw_iscsi_init_msg(%struct.bnx2i_hba* %22)
  br label %24

24:                                               ; preds = %21, %15
  br label %48

25:                                               ; preds = %13
  %26 = load i32, i32* @ADAPTER_STATE_GOING_DOWN, align 4
  %27 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %28 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %27, i32 0, i32 1
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load i32, i32* @ADAPTER_STATE_UP, align 4
  %31 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %32 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %31, i32 0, i32 1
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  br label %48

34:                                               ; preds = %13
  %35 = load i32, i32* @ADAPTER_STATE_GOING_DOWN, align 4
  %36 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %37 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %36, i32 0, i32 1
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %40 = getelementptr inbounds %struct.bnx2i_hba, %struct.bnx2i_hba* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @bnx2i_drop_session, align 4
  %43 = call i32 @iscsi_host_for_each_session(i32 %41, i32 %42)
  br label %48

44:                                               ; preds = %13
  %45 = load %struct.bnx2i_hba*, %struct.bnx2i_hba** %7, align 8
  %46 = call i32 @bnx2i_get_link_state(%struct.bnx2i_hba* %45)
  br label %48

47:                                               ; preds = %13
  br label %48

48:                                               ; preds = %12, %47, %44, %34, %25, %24
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @bnx2i_send_fw_iscsi_init_msg(%struct.bnx2i_hba*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @iscsi_host_for_each_session(i32, i32) #1

declare dso_local i32 @bnx2i_get_link_state(%struct.bnx2i_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
