; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_s390_process_res_acc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_s390_process_res_acc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_link = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"accpr%x.%02x\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fla%x\00", align 1
@__s390_process_res_acc = common dso_local global i32 0, align 4
@s390_process_res_acc_new_sch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chp_link*)* @s390_process_res_acc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s390_process_res_acc(%struct.chp_link* %0) #0 {
  %2 = alloca %struct.chp_link*, align 8
  %3 = alloca [15 x i8], align 1
  store %struct.chp_link* %0, %struct.chp_link** %2, align 8
  %4 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %5 = load %struct.chp_link*, %struct.chp_link** %2, align 8
  %6 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.chp_link*, %struct.chp_link** %2, align 8
  %10 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %12)
  %14 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %15 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %14)
  %16 = load %struct.chp_link*, %struct.chp_link** %2, align 8
  %17 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %22 = load %struct.chp_link*, %struct.chp_link** %2, align 8
  %23 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %27 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = call i32 (...) @css_wait_for_slow_path()
  %30 = load i32, i32* @__s390_process_res_acc, align 4
  %31 = load i32, i32* @s390_process_res_acc_new_sch, align 4
  %32 = load %struct.chp_link*, %struct.chp_link** %2, align 8
  %33 = call i32 @for_each_subchannel_staged(i32 %30, i32 %31, %struct.chp_link* %32)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i32 @css_wait_for_slow_path(...) #1

declare dso_local i32 @for_each_subchannel_staged(i32, i32, %struct.chp_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
