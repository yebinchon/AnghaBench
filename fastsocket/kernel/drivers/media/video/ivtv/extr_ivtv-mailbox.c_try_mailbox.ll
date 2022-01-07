; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-mailbox.c_try_mailbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-mailbox.c_try_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }
%struct.ivtv_mailbox_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IVTV_MBOX_FREE = common dso_local global i32 0, align 4
@IVTV_MBOX_FIRMWARE_DONE = common dso_local global i32 0, align 4
@IVTV_MBOX_DRIVER_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.ivtv_mailbox_data*, i32)* @try_mailbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_mailbox(%struct.ivtv* %0, %struct.ivtv_mailbox_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca %struct.ivtv_mailbox_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store %struct.ivtv_mailbox_data* %1, %struct.ivtv_mailbox_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %6, align 8
  %11 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @readl(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @IVTV_MBOX_FREE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IVTV_MBOX_FIRMWARE_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %3
  %27 = phi i1 [ true, %3 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %6, align 8
  %34 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %33, i32 0, i32 1
  %35 = call i32 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @IVTV_MBOX_DRIVER_BUSY, align 4
  %39 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %6, align 8
  %40 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @write_sync(i32 %38, i32* %45)
  store i32 1, i32* %4, align 4
  br label %48

47:                                               ; preds = %31, %26
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @write_sync(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
