; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi.c_capi20_get_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_kcapi.c_capi20_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_version = type { i32 }
%struct.capi_ctr = type { i64, i32 }

@driver_version = common dso_local global %struct.capi_version zeroinitializer, align 4
@CAPI_NOERROR = common dso_local global i32 0, align 4
@CARD_RUNNING = common dso_local global i64 0, align 8
@CAPI_REGNOTINSTALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capi20_get_version(i64 %0, %struct.capi_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.capi_version*, align 8
  %6 = alloca %struct.capi_ctr*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.capi_version* %1, %struct.capi_version** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.capi_version*, %struct.capi_version** %5, align 8
  %11 = bitcast %struct.capi_version* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.capi_version* @driver_version to i8*), i64 4, i1 false)
  %12 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.capi_ctr* @get_capi_ctr_by_nr(i64 %14)
  store %struct.capi_ctr* %15, %struct.capi_ctr** %6, align 8
  %16 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %17 = icmp ne %struct.capi_ctr* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %20 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CARD_RUNNING, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %13
  %25 = load i32, i32* @CAPI_REGNOTINSTALLED, align 4
  store i32 %25, i32* %3, align 4
  br label %33

26:                                               ; preds = %18
  %27 = load %struct.capi_version*, %struct.capi_version** %5, align 8
  %28 = bitcast %struct.capi_version* %27 to i8*
  %29 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %30 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %29, i32 0, i32 1
  %31 = call i32 @memcpy(i8* %28, i32* %30, i32 4)
  %32 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %24, %9
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.capi_ctr* @get_capi_ctr_by_nr(i64) #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
