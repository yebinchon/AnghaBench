; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_mpt_get_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-ctrl.c_pwc_mpt_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32 }
%struct.pwc_mpt_status = type { i8, i8, i8 }

@GET_MPT_CTL = common dso_local global i32 0, align 4
@PT_STATUS_FORMATTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*, %struct.pwc_mpt_status*)* @pwc_mpt_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_mpt_get_status(%struct.pwc_device* %0, %struct.pwc_mpt_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca %struct.pwc_mpt_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8], align 1
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store %struct.pwc_mpt_status* %1, %struct.pwc_mpt_status** %5, align 8
  %8 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %9 = load i32, i32* @GET_MPT_CTL, align 4
  %10 = load i32, i32* @PT_STATUS_FORMATTER, align 4
  %11 = bitcast [5 x i8]* %7 to i8**
  %12 = call i32 @recv_control_msg(%struct.pwc_device* %8, i32 %9, i32 %10, i8** %11, i32 5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %2
  %18 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 7
  %22 = trunc i32 %21 to i8
  %23 = load %struct.pwc_mpt_status*, %struct.pwc_mpt_status** %5, align 8
  %24 = getelementptr inbounds %struct.pwc_mpt_status, %struct.pwc_mpt_status* %23, i32 0, i32 0
  store i8 %22, i8* %24, align 1
  %25 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 8
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 2
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %28, %31
  %33 = trunc i32 %32 to i8
  %34 = load %struct.pwc_mpt_status*, %struct.pwc_mpt_status** %5, align 8
  %35 = getelementptr inbounds %struct.pwc_mpt_status, %struct.pwc_mpt_status* %34, i32 0, i32 1
  store i8 %33, i8* %35, align 1
  %36 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 4
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nsw i32 %39, %42
  %44 = trunc i32 %43 to i8
  %45 = load %struct.pwc_mpt_status*, %struct.pwc_mpt_status** %5, align 8
  %46 = getelementptr inbounds %struct.pwc_mpt_status, %struct.pwc_mpt_status* %45, i32 0, i32 2
  store i8 %44, i8* %46, align 1
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %17, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @recv_control_msg(%struct.pwc_device*, i32, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
