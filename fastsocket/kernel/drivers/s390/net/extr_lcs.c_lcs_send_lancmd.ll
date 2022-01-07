; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_send_lancmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_send_lancmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i32, i32, i32, i32, i32 }
%struct.lcs_buffer = type { i32, i64 }
%struct.lcs_cmd = type { i64, i64 }
%struct.lcs_reply = type { void (%struct.lcs_card.0*, %struct.lcs_cmd.1*)*, i32, i32, i32, i32, %struct.lcs_card* }
%struct.lcs_card.0 = type opaque
%struct.lcs_cmd.1 = type opaque
%struct.timer_list = type { i64, i64, i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sendcmd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@lcs_release_buffer = common dso_local global i32 0, align 4
@lcs_lancmd_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"rc:%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lcs_card*, %struct.lcs_buffer*, void (%struct.lcs_card*, %struct.lcs_cmd*)*)* @lcs_send_lancmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_send_lancmd(%struct.lcs_card* %0, %struct.lcs_buffer* %1, void (%struct.lcs_card*, %struct.lcs_cmd*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lcs_card*, align 8
  %6 = alloca %struct.lcs_buffer*, align 8
  %7 = alloca void (%struct.lcs_card*, %struct.lcs_cmd*)*, align 8
  %8 = alloca %struct.lcs_reply*, align 8
  %9 = alloca %struct.lcs_cmd*, align 8
  %10 = alloca %struct.timer_list, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.lcs_card* %0, %struct.lcs_card** %5, align 8
  store %struct.lcs_buffer* %1, %struct.lcs_buffer** %6, align 8
  store void (%struct.lcs_card*, %struct.lcs_cmd*)* %2, void (%struct.lcs_card*, %struct.lcs_cmd*)** %7, align 8
  %13 = load i32, i32* @trace, align 4
  %14 = call i32 @LCS_DBF_TEXT(i32 4, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.lcs_buffer*, %struct.lcs_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lcs_cmd*
  store %struct.lcs_cmd* %18, %struct.lcs_cmd** %9, align 8
  %19 = load %struct.lcs_cmd*, %struct.lcs_cmd** %9, align 8
  %20 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %22 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = sext i32 %23 to i64
  %26 = load %struct.lcs_cmd*, %struct.lcs_cmd** %9, align 8
  %27 = getelementptr inbounds %struct.lcs_cmd, %struct.lcs_cmd* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.lcs_cmd*, %struct.lcs_cmd** %9, align 8
  %29 = call %struct.lcs_reply* @lcs_alloc_reply(%struct.lcs_cmd* %28)
  store %struct.lcs_reply* %29, %struct.lcs_reply** %8, align 8
  %30 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %31 = icmp ne %struct.lcs_reply* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %110

35:                                               ; preds = %3
  %36 = load void (%struct.lcs_card*, %struct.lcs_cmd*)*, void (%struct.lcs_card*, %struct.lcs_cmd*)** %7, align 8
  %37 = bitcast void (%struct.lcs_card*, %struct.lcs_cmd*)* %36 to void (%struct.lcs_card.0*, %struct.lcs_cmd.1*)*
  %38 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %39 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %38, i32 0, i32 0
  store void (%struct.lcs_card.0*, %struct.lcs_cmd.1*)* %37, void (%struct.lcs_card.0*, %struct.lcs_cmd.1*)** %39, align 8
  %40 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %41 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %42 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %41, i32 0, i32 5
  store %struct.lcs_card* %40, %struct.lcs_card** %42, align 8
  %43 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %44 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %43, i32 0, i32 2
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %48 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %47, i32 0, i32 4
  %49 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %50 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %49, i32 0, i32 3
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  %52 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %53 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %52, i32 0, i32 2
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load i32, i32* @lcs_release_buffer, align 4
  %57 = load %struct.lcs_buffer*, %struct.lcs_buffer** %6, align 8
  %58 = getelementptr inbounds %struct.lcs_buffer, %struct.lcs_buffer* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %60 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %59, i32 0, i32 1
  %61 = load %struct.lcs_buffer*, %struct.lcs_buffer** %6, align 8
  %62 = call i32 @lcs_ready_buffer(i32* %60, %struct.lcs_buffer* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %35
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %110

67:                                               ; preds = %35
  %68 = call i32 @init_timer(%struct.timer_list* %10)
  %69 = load i32, i32* @lcs_lancmd_timeout, align 4
  %70 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %10, i32 0, i32 2
  store i32 %69, i32* %70, align 8
  %71 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %72 = ptrtoint %struct.lcs_reply* %71 to i64
  %73 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %10, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i32, i32* @HZ, align 4
  %76 = load %struct.lcs_card*, %struct.lcs_card** %5, align 8
  %77 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %74, %80
  %82 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %10, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = call i32 @add_timer(%struct.timer_list* %10)
  %84 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %85 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %88 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @wait_event(i32 %86, i32 %89)
  %91 = call i32 @del_timer_sync(%struct.timer_list* %10)
  %92 = load i32, i32* @trace, align 4
  %93 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %94 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @LCS_DBF_TEXT_(i32 4, i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %98 = getelementptr inbounds %struct.lcs_reply, %struct.lcs_reply* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %12, align 4
  %100 = load %struct.lcs_reply*, %struct.lcs_reply** %8, align 8
  %101 = call i32 @lcs_put_reply(%struct.lcs_reply* %100)
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %67
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  br label %108

107:                                              ; preds = %67
  br label %108

108:                                              ; preds = %107, %104
  %109 = phi i32 [ %106, %104 ], [ 0, %107 ]
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %65, %32
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.lcs_reply* @lcs_alloc_reply(%struct.lcs_cmd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lcs_ready_buffer(i32*, %struct.lcs_buffer*) #1

declare dso_local i32 @init_timer(%struct.timer_list*) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

declare dso_local i32 @LCS_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @lcs_put_reply(%struct.lcs_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
