; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_set_max_r2t.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_set_max_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { i16 }

@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_tcp_set_max_r2t(%struct.iscsi_conn* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca i16, align 2
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %8, i32 0, i32 0
  %10 = load %struct.iscsi_session*, %struct.iscsi_session** %9, align 8
  store %struct.iscsi_session* %10, %struct.iscsi_session** %6, align 8
  store i16 0, i16* %7, align 2
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @sscanf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i16* %7)
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %13, i32 0, i32 0
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load i16, i16* %7, align 2
  %23 = icmp ne i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i16, i16* %7, align 2
  %26 = call i32 @is_power_of_2(i16 zeroext %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %24
  %32 = load i16, i16* %7, align 2
  %33 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %33, i32 0, i32 0
  store i16 %32, i16* %34, align 2
  %35 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %36 = call i32 @iscsi_tcp_r2tpool_free(%struct.iscsi_session* %35)
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %38 = call i32 @iscsi_tcp_r2tpool_alloc(%struct.iscsi_session* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %31, %28, %20
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @sscanf(i8*, i8*, i16*) #1

declare dso_local i32 @is_power_of_2(i16 zeroext) #1

declare dso_local i32 @iscsi_tcp_r2tpool_free(%struct.iscsi_session*) #1

declare dso_local i32 @iscsi_tcp_r2tpool_alloc(%struct.iscsi_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
