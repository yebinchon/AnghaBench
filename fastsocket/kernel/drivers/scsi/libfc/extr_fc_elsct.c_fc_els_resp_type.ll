; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_elsct.c_fc_els_resp_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_elsct.c_fc_els_resp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_frame_header = type { i32 }
%struct.fc_ct_hdr = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"response no error\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"response timeout\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"response closed\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"response unknown error\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"response unknown ELS\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"CT accept\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"CT reject\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"response unknown CT\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"short CT response\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"response not ELS or CT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fc_els_resp_type(%struct.fc_frame* %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fc_frame_header*, align 8
  %5 = alloca %struct.fc_ct_hdr*, align 8
  store %struct.fc_frame* %0, %struct.fc_frame** %2, align 8
  %6 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %7 = call i64 @IS_ERR(%struct.fc_frame* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %11 = call i32 @PTR_ERR(%struct.fc_frame* %10)
  %12 = sub nsw i32 0, %11
  switch i32 %12, label %16 [
    i32 130, label %13
    i32 133, label %14
    i32 134, label %15
  ]

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %17

14:                                               ; preds = %9
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %17

15:                                               ; preds = %9
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %17

16:                                               ; preds = %9
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %20 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame* %19)
  store %struct.fc_frame_header* %20, %struct.fc_frame_header** %4, align 8
  %21 = load %struct.fc_frame_header*, %struct.fc_frame_header** %4, align 8
  %22 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %47 [
    i32 128, label %24
    i32 129, label %31
  ]

24:                                               ; preds = %18
  %25 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %26 = call i32 @fc_frame_payload_op(%struct.fc_frame* %25)
  switch i32 %26, label %29 [
    i32 136, label %27
    i32 135, label %28
  ]

27:                                               ; preds = %24
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %30

28:                                               ; preds = %24
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %30

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %30

30:                                               ; preds = %29, %28, %27
  br label %48

31:                                               ; preds = %18
  %32 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  %33 = call %struct.fc_ct_hdr* @fc_frame_payload_get(%struct.fc_frame* %32, i32 4)
  store %struct.fc_ct_hdr* %33, %struct.fc_ct_hdr** %5, align 8
  %34 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %5, align 8
  %35 = icmp ne %struct.fc_ct_hdr* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  switch i32 %40, label %43 [
    i32 132, label %41
    i32 131, label %42
  ]

41:                                               ; preds = %36
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %44

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %44

43:                                               ; preds = %36
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %44

44:                                               ; preds = %43, %42, %41
  br label %46

45:                                               ; preds = %31
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %46

46:                                               ; preds = %45, %44
  br label %48

47:                                               ; preds = %18
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %48

48:                                               ; preds = %47, %46, %30
  br label %49

49:                                               ; preds = %48, %17
  %50 = load i8*, i8** %3, align 8
  ret i8* %50
}

declare dso_local i64 @IS_ERR(%struct.fc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.fc_frame*) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame*) #1

declare dso_local i32 @fc_frame_payload_op(%struct.fc_frame*) #1

declare dso_local %struct.fc_ct_hdr* @fc_frame_payload_get(%struct.fc_frame*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
