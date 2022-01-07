; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_sei_link_incident.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_process_sei_link_incident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_sei_area = type { i32, i32, i32 }
%struct.chp_id = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"chsc: link incident (rs=%02x, rs_id=%04x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"chsc: link incident - invalid LIR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chsc_sei_area*)* @chsc_process_sei_link_incident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chsc_process_sei_link_incident(%struct.chsc_sei_area* %0) #0 {
  %2 = alloca %struct.chsc_sei_area*, align 8
  %3 = alloca %struct.chp_id, align 4
  %4 = alloca i32, align 4
  store %struct.chsc_sei_area* %0, %struct.chsc_sei_area** %2, align 8
  %5 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %6 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %9 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %13 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.chsc_sei_area*, %struct.chsc_sei_area** %2, align 8
  %19 = getelementptr inbounds %struct.chsc_sei_area, %struct.chsc_sei_area* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__get_chpid_from_lir(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = call i32 (i32, i8*, ...) @CIO_CRW_EVENT(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %33

26:                                               ; preds = %17
  %27 = call i32 @chp_id_init(%struct.chp_id* %3)
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %3, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @chsc_chp_offline(i32 %31)
  br label %33

33:                                               ; preds = %16, %26, %24
  ret void
}

declare dso_local i32 @CIO_CRW_EVENT(i32, i8*, ...) #1

declare dso_local i32 @__get_chpid_from_lir(i32) #1

declare dso_local i32 @chp_id_init(%struct.chp_id*) #1

declare dso_local i32 @chsc_chp_offline(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
