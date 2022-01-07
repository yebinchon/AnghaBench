; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_chp_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_chp_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_id = type { i32, i32 }
%struct.chp_link = type { %struct.chp_id }

@.str = private unnamed_addr constant [12 x i8] c"cadd%x.%02x\00", align 1
@__s390_process_res_acc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chsc_chp_online(i64 %0) #0 {
  %2 = alloca %struct.chp_id, align 4
  %3 = alloca [15 x i8], align 1
  %4 = alloca %struct.chp_link, align 4
  %5 = bitcast %struct.chp_id* %2 to i64*
  store i64 %0, i64* %5, align 4
  %6 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @sprintf(i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %10)
  %12 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 0
  %13 = call i32 @CIO_TRACE_EVENT(i32 2, i8* %12)
  %14 = bitcast %struct.chp_id* %2 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i64 @chp_get_status(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = call i32 @memset(%struct.chp_link* %4, i32 0, i32 8)
  %20 = getelementptr inbounds %struct.chp_link, %struct.chp_link* %4, i32 0, i32 0
  %21 = bitcast %struct.chp_id* %20 to i8*
  %22 = bitcast %struct.chp_id* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 8, i1 false)
  %23 = call i32 (...) @css_wait_for_slow_path()
  %24 = load i32, i32* @__s390_process_res_acc, align 4
  %25 = call i32 @for_each_subchannel_staged(i32 %24, i32* null, %struct.chp_link* %4)
  br label %26

26:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @CIO_TRACE_EVENT(i32, i8*) #1

declare dso_local i64 @chp_get_status(i64) #1

declare dso_local i32 @memset(%struct.chp_link*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @css_wait_for_slow_path(...) #1

declare dso_local i32 @for_each_subchannel_staged(i32, i32*, %struct.chp_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
