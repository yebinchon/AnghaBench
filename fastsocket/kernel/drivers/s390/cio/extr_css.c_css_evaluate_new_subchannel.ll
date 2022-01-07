; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_evaluate_new_subchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_css.c_css_evaluate_new_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel_id = type { i32, i32 }
%struct.schib = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"event: sch 0.%x.%04x, new\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @css_evaluate_new_subchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @css_evaluate_new_subchannel(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.subchannel_id, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.schib, align 4
  %7 = bitcast %struct.subchannel_id* %4 to i64*
  store i64 %0, i64* %7, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = bitcast %struct.subchannel_id* %4 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i64 @stsch_err(i64 %15, %struct.schib* %6)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = call i32 @css_sch_is_valid(%struct.schib* %6)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %13
  store i32 0, i32* %3, align 4
  br label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CIO_MSG_EVENT(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %26)
  %28 = bitcast %struct.subchannel_id* %4 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i32 @css_probe_device(i64 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %21, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @stsch_err(i64, %struct.schib*) #1

declare dso_local i32 @css_sch_is_valid(%struct.schib*) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32, i32) #1

declare dso_local i32 @css_probe_device(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
