; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_disable_wep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_wext.c_disable_wep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_request = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@LBS_DEB_WEXT = common dso_local global i32 0, align 4
@IW_AUTH_ALG_OPEN_SYSTEM = common dso_local global i32 0, align 4
@ASSOC_FLAG_SECINFO = common dso_local global i32 0, align 4
@ASSOC_FLAG_WEP_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assoc_request*)* @disable_wep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_wep(%struct.assoc_request* %0) #0 {
  %2 = alloca %struct.assoc_request*, align 8
  %3 = alloca i32, align 4
  store %struct.assoc_request* %0, %struct.assoc_request** %2, align 8
  %4 = load i32, i32* @LBS_DEB_WEXT, align 4
  %5 = call i32 @lbs_deb_enter(i32 %4)
  %6 = load i32, i32* @IW_AUTH_ALG_OPEN_SYSTEM, align 4
  %7 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %8 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %6, i32* %9, align 8
  %10 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %11 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %24, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %18 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %13

27:                                               ; preds = %13
  %28 = load i32, i32* @ASSOC_FLAG_SECINFO, align 4
  %29 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %30 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %29, i32 0, i32 0
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load i32, i32* @ASSOC_FLAG_WEP_KEYS, align 4
  %33 = load %struct.assoc_request*, %struct.assoc_request** %2, align 8
  %34 = getelementptr inbounds %struct.assoc_request, %struct.assoc_request* %33, i32 0, i32 0
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load i32, i32* @LBS_DEB_WEXT, align 4
  %37 = call i32 @lbs_deb_leave(i32 %36)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
