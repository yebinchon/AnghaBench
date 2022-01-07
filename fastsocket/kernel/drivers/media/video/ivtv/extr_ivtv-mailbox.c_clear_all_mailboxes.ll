; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-mailbox.c_clear_all_mailboxes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-mailbox.c_clear_all_mailboxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }
%struct.ivtv_mailbox_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Clearing mailbox %d: cmd 0x%08x flags 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, %struct.ivtv_mailbox_data*)* @clear_all_mailboxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_all_mailboxes(%struct.ivtv* %0, %struct.ivtv_mailbox_data* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.ivtv_mailbox_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.ivtv_mailbox_data* %1, %struct.ivtv_mailbox_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %43, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %4, align 8
  %9 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %7, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %4, align 8
  %15 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = call i32 @readl(i32* %20)
  %22 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %4, align 8
  %23 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @readl(i32* %28)
  %30 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %21, i32 %29)
  %31 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %4, align 8
  %32 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @write_sync(i32 0, i32* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %4, align 8
  %41 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %40, i32 0, i32 1
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  br label %43

43:                                               ; preds = %12
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %6

46:                                               ; preds = %6
  ret void
}

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i32, i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @write_sync(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
