; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_tcam_user_ip_class_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_tcam_user_ip_class_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }

@CLASS_CODE_USER_PROG1 = common dso_local global i64 0, align 8
@CLASS_CODE_USER_PROG4 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@L3_CLS_IPVER = common dso_local global i32 0, align 4
@L3_CLS_PID = common dso_local global i32 0, align 4
@L3_CLS_TOSMASK = common dso_local global i32 0, align 4
@L3_CLS_TOS = common dso_local global i32 0, align 4
@L3_CLS_PID_SHIFT = common dso_local global i32 0, align 4
@L3_CLS_TOSMASK_SHIFT = common dso_local global i32 0, align 4
@L3_CLS_TOS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, i64, i32, i32, i32, i32)* @tcam_user_ip_class_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcam_user_ip_class_set(%struct.niu* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.niu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @CLASS_CODE_USER_PROG4, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, -256
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, -256
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, -256
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31, %27, %23, %19, %6
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %80

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %41 = sub i64 %39, %40
  %42 = call i64 @L3_CLS(i64 %41)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @nr64(i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* @L3_CLS_IPVER, align 4
  %46 = load i32, i32* @L3_CLS_PID, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @L3_CLS_TOSMASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @L3_CLS_TOS, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %38
  %58 = load i32, i32* @L3_CLS_IPVER, align 4
  %59 = load i32, i32* %15, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %57, %38
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @L3_CLS_PID_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @L3_CLS_TOSMASK_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %15, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @L3_CLS_TOS_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %15, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %15, align 4
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @nw64(i64 %77, i32 %78)
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %61, %35
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i64 @L3_CLS(i64) #1

declare dso_local i32 @nr64(i64) #1

declare dso_local i32 @nw64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
