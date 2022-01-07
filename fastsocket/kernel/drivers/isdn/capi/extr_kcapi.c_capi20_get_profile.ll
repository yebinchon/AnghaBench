; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi.c_capi20_get_profile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi.c_capi20_get_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_profile = type { i32 }
%struct.capi_ctr = type { i64, i32 }

@ncards = common dso_local global i32 0, align 4
@CAPI_NOERROR = common dso_local global i32 0, align 4
@CARD_RUNNING = common dso_local global i64 0, align 8
@CAPI_REGNOTINSTALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capi20_get_profile(i64 %0, %struct.capi_profile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.capi_profile*, align 8
  %6 = alloca %struct.capi_ctr*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.capi_profile* %1, %struct.capi_profile** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @ncards, align 4
  %11 = load %struct.capi_profile*, %struct.capi_profile** %5, align 8
  %12 = getelementptr inbounds %struct.capi_profile, %struct.capi_profile* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call %struct.capi_ctr* @get_capi_ctr_by_nr(i64 %15)
  store %struct.capi_ctr* %16, %struct.capi_ctr** %6, align 8
  %17 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %18 = icmp ne %struct.capi_ctr* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %21 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CARD_RUNNING, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %14
  %26 = load i32, i32* @CAPI_REGNOTINSTALLED, align 4
  store i32 %26, i32* %3, align 4
  br label %34

27:                                               ; preds = %19
  %28 = load %struct.capi_profile*, %struct.capi_profile** %5, align 8
  %29 = bitcast %struct.capi_profile* %28 to i8*
  %30 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %31 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %30, i32 0, i32 1
  %32 = call i32 @memcpy(i8* %29, i32* %31, i32 4)
  %33 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %25, %9
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.capi_ctr* @get_capi_ctr_by_nr(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
