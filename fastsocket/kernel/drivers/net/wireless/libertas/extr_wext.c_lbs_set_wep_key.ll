; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_wep_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_lbs_set_wep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_request = type { i32, %struct.TYPE_2__, %struct.enc_key* }
%struct.TYPE_2__ = type { i32 }
%struct.enc_key = type { i32, i32, i32 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KEY_LEN_WEP_104 = common dso_local global i32 0, align 4
@KEY_TYPE_ID_WEP = common dso_local global i32 0, align 4
@KEY_LEN_WEP_40 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"key not set, so cannot enable it\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.assoc_request*, i8*, i32, i32, i32)* @lbs_set_wep_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lbs_set_wep_key(%struct.assoc_request* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.assoc_request*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.enc_key*, align 8
  store %struct.assoc_request* %0, %struct.assoc_request** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @LBS_DEB_WEXT, align 4
  %14 = call i32 @lbs_deb_enter(i32 %13)
  %15 = load i32, i32* %9, align 4
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %79

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @KEY_LEN_WEP_104, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  br label %79

27:                                               ; preds = %20
  %28 = load %struct.assoc_request*, %struct.assoc_request** %6, align 8
  %29 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %28, i32 0, i32 2
  %30 = load %struct.enc_key*, %struct.enc_key** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %30, i64 %32
  store %struct.enc_key* %33, %struct.enc_key** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %27
  %37 = load %struct.enc_key*, %struct.enc_key** %12, align 8
  %38 = call i32 @memset(%struct.enc_key* %37, i32 0, i32 12)
  %39 = load i32, i32* @KEY_TYPE_ID_WEP, align 4
  %40 = load %struct.enc_key*, %struct.enc_key** %12, align 8
  %41 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @KEY_LEN_WEP_40, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @KEY_LEN_WEP_104, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @KEY_LEN_WEP_40, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.enc_key*, %struct.enc_key** %12, align 8
  %52 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.enc_key*, %struct.enc_key** %12, align 8
  %54 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @memcpy(i32 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %49, %27
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.enc_key*, %struct.enc_key** %12, align 8
  %64 = getelementptr inbounds %struct.enc_key, %struct.enc_key* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = call i32 @lbs_deb_wext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %11, align 4
  br label %79

71:                                               ; preds = %62
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.assoc_request*, %struct.assoc_request** %6, align 8
  %74 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %59
  %76 = load %struct.assoc_request*, %struct.assoc_request** %6, align 8
  %77 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %67, %24, %17
  %80 = load i32, i32* @LBS_DEB_WEXT, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @lbs_deb_leave_args(i32 %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @memset(%struct.enc_key*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @lbs_deb_wext(i8*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
