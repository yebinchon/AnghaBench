; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_scm_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_chsc.c_chsc_scm_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chsc_scm_info = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"chsc: scm info failed (rc=%04x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chsc_scm_info(%struct.chsc_scm_info* %0, i32 %1) #0 {
  %3 = alloca %struct.chsc_scm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.chsc_scm_info* %0, %struct.chsc_scm_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %3, align 8
  %8 = call i32 @memset(%struct.chsc_scm_info* %7, i32 0, i32 16)
  %9 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %3, align 8
  %10 = getelementptr inbounds %struct.chsc_scm_info, %struct.chsc_scm_info* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 32, i32* %11, align 4
  %12 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %3, align 8
  %13 = getelementptr inbounds %struct.chsc_scm_info, %struct.chsc_scm_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 76, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %3, align 8
  %17 = getelementptr inbounds %struct.chsc_scm_info, %struct.chsc_scm_info* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %3, align 8
  %19 = call i32 @chsc(%struct.chsc_scm_info* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32 [ %27, %25 ], [ %30, %28 ]
  store i32 %32, i32* %6, align 4
  br label %48

33:                                               ; preds = %2
  %34 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %3, align 8
  %35 = getelementptr inbounds %struct.chsc_scm_info, %struct.chsc_scm_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @chsc_error_from_response(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load %struct.chsc_scm_info*, %struct.chsc_scm_info** %3, align 8
  %43 = getelementptr inbounds %struct.chsc_scm_info, %struct.chsc_scm_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CIO_MSG_EVENT(i32 2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %41, %33
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.chsc_scm_info*, i32, i32) #1

declare dso_local i32 @chsc(%struct.chsc_scm_info*) #1

declare dso_local i32 @chsc_error_from_response(i32) #1

declare dso_local i32 @CIO_MSG_EVENT(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
