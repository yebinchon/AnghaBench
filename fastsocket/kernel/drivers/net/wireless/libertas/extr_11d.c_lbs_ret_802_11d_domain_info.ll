; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_ret_802_11d_domain_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_11d.c_lbs_ret_802_11d_domain_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_ds_command = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.cmd_ds_802_11d_domain_info }
%struct.cmd_ds_802_11d_domain_info = type { i32, %struct.mrvl_ie_domain_param_set }
%struct.mrvl_ie_domain_param_set = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LBS_DEB_11D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"domain info resp\00", align 1
@COUNTRY_CODE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"domain info resp: nr_subband %d\0A\00", align 1
@MRVDRV_MAX_SUBBAND_802_11D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Invalid Numrer of Subband returned!!\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Invalid action:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_ret_802_11d_domain_info(%struct.cmd_ds_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmd_ds_command*, align 8
  %4 = alloca %struct.cmd_ds_802_11d_domain_info*, align 8
  %5 = alloca %struct.mrvl_ie_domain_param_set*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmd_ds_command* %0, %struct.cmd_ds_command** %3, align 8
  %9 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %3, align 8
  %10 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.cmd_ds_802_11d_domain_info* %11, %struct.cmd_ds_802_11d_domain_info** %4, align 8
  %12 = load %struct.cmd_ds_802_11d_domain_info*, %struct.cmd_ds_802_11d_domain_info** %4, align 8
  %13 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, %struct.cmd_ds_802_11d_domain_info* %12, i32 0, i32 1
  store %struct.mrvl_ie_domain_param_set* %13, %struct.mrvl_ie_domain_param_set** %5, align 8
  %14 = load %struct.cmd_ds_802_11d_domain_info*, %struct.cmd_ds_802_11d_domain_info** %4, align 8
  %15 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, %struct.cmd_ds_802_11d_domain_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @LBS_DEB_11D, align 4
  %19 = call i32 @lbs_deb_enter(i32 %18)
  %20 = load i32, i32* @LBS_DEB_11D, align 4
  %21 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %3, align 8
  %22 = bitcast %struct.cmd_ds_command* %21 to i32*
  %23 = load %struct.cmd_ds_command*, %struct.cmd_ds_command** %3, align 8
  %24 = getelementptr inbounds %struct.cmd_ds_command, %struct.cmd_ds_command* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = call i32 @lbs_deb_hex(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %22, i32 %26)
  %28 = load %struct.mrvl_ie_domain_param_set*, %struct.mrvl_ie_domain_param_set** %5, align 8
  %29 = getelementptr inbounds %struct.mrvl_ie_domain_param_set, %struct.mrvl_ie_domain_param_set* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load i32, i32* @COUNTRY_CODE_LEN, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i8*, ...) @lbs_deb_11d(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MRVDRV_MAX_SUBBAND_802_11D, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = call i32 (i8*, ...) @lbs_deb_11d(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %59

45:                                               ; preds = %1
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %49 [
    i32 128, label %47
    i32 129, label %48
  ]

47:                                               ; preds = %45
  br label %54

48:                                               ; preds = %45
  br label %54

49:                                               ; preds = %45
  %50 = load %struct.cmd_ds_802_11d_domain_info*, %struct.cmd_ds_802_11d_domain_info** %4, align 8
  %51 = getelementptr inbounds %struct.cmd_ds_802_11d_domain_info, %struct.cmd_ds_802_11d_domain_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @lbs_deb_11d(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  store i32 -1, i32* %7, align 4
  br label %54

54:                                               ; preds = %49, %48, %47
  %55 = load i32, i32* @LBS_DEB_11D, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @lbs_deb_leave_args(i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %54, %43
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_hex(i32, i8*, i32*, i32) #1

declare dso_local i32 @lbs_deb_11d(i8*, ...) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
