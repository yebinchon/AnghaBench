; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_vio_validate_sid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_viohs.c_vio_validate_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32, i64, i64 }
%struct.vio_msg_tag = type { i64, i64, i64, i64 }

@VIO_TYPE_CTRL = common dso_local global i64 0, align 8
@VIO_SUBTYPE_INFO = common dso_local global i64 0, align 8
@VIO_VER_INFO = common dso_local global i64 0, align 8
@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"BAD SID tag->sid[%08x] peer_sid[%08x] local_sid[%08x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vio_validate_sid(%struct.vio_driver_state* %0, %struct.vio_msg_tag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_msg_tag*, align 8
  %6 = alloca i64, align 8
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_msg_tag* %1, %struct.vio_msg_tag** %5, align 8
  %7 = load %struct.vio_msg_tag*, %struct.vio_msg_tag** %5, align 8
  %8 = getelementptr inbounds %struct.vio_msg_tag, %struct.vio_msg_tag* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VIO_TYPE_CTRL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.vio_msg_tag*, %struct.vio_msg_tag** %5, align 8
  %14 = getelementptr inbounds %struct.vio_msg_tag, %struct.vio_msg_tag* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VIO_SUBTYPE_INFO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.vio_msg_tag*, %struct.vio_msg_tag** %5, align 8
  %20 = getelementptr inbounds %struct.vio_msg_tag, %struct.vio_msg_tag* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VIO_VER_INFO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %59

25:                                               ; preds = %18, %12, %2
  %26 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %27 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %30 [
    i32 129, label %29
    i32 128, label %29
    i32 130, label %29
    i32 131, label %34
  ]

29:                                               ; preds = %25, %25, %25
  br label %30

30:                                               ; preds = %25, %29
  %31 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %32 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %6, align 8
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %36 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.vio_msg_tag*, %struct.vio_msg_tag** %5, align 8
  %41 = getelementptr inbounds %struct.vio_msg_tag, %struct.vio_msg_tag* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %59

45:                                               ; preds = %38
  %46 = load i32, i32* @DATA, align 4
  %47 = load %struct.vio_msg_tag*, %struct.vio_msg_tag** %5, align 8
  %48 = getelementptr inbounds %struct.vio_msg_tag, %struct.vio_msg_tag* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %51 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %54 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @viodbg(i32 %46, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %52, i64 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %45, %44, %24
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @viodbg(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
