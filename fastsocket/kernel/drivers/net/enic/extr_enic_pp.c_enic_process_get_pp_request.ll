; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_pp.c_enic_process_get_pp_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_pp.c_enic_process_get_pp_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }

@vnic_dev_enable2_done = common dso_local global i32 0, align 4
@vnic_dev_deinit_done = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PORT_PROFILE_RESPONSE_SUCCESS = common dso_local global i32 0, align 4
@PORT_PROFILE_RESPONSE_INVALID = common dso_local global i32 0, align 4
@PORT_PROFILE_RESPONSE_BADSTATE = common dso_local global i32 0, align 4
@PORT_PROFILE_RESPONSE_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@PORT_PROFILE_RESPONSE_INPROGRESS = common dso_local global i32 0, align 4
@PORT_PROFILE_RESPONSE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enic_process_get_pp_request(%struct.enic* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.enic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 131, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %25 [
    i32 128, label %13
    i32 130, label %13
    i32 129, label %19
  ]

13:                                               ; preds = %4, %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.enic*, %struct.enic** %6, align 8
  %17 = load i32, i32* @vnic_dev_enable2_done, align 4
  %18 = call i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32 %14, i32 %15, %struct.enic* %16, i32 %17, i32* %11)
  br label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.enic*, %struct.enic** %6, align 8
  %23 = load i32, i32* @vnic_dev_deinit_done, align 4
  %24 = call i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32 %20, i32 %21, %struct.enic* %22, i32 %23, i32* %11)
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %54

28:                                               ; preds = %19, %13
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %50 [
    i32 131, label %35
    i32 133, label %38
    i32 135, label %41
    i32 132, label %44
    i32 134, label %47
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @PORT_PROFILE_RESPONSE_SUCCESS, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %53

38:                                               ; preds = %33
  %39 = load i32, i32* @PORT_PROFILE_RESPONSE_INVALID, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load i32, i32* @PORT_PROFILE_RESPONSE_BADSTATE, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  br label %53

44:                                               ; preds = %33
  %45 = load i32, i32* @PORT_PROFILE_RESPONSE_INSUFFICIENT_RESOURCES, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %53

47:                                               ; preds = %33
  %48 = load i32, i32* @PORT_PROFILE_RESPONSE_INPROGRESS, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %53

50:                                               ; preds = %33
  %51 = load i32, i32* @PORT_PROFILE_RESPONSE_ERROR, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %47, %44, %41, %38, %35
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @ENIC_DEVCMD_PROXY_BY_INDEX(i32, i32, %struct.enic*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
