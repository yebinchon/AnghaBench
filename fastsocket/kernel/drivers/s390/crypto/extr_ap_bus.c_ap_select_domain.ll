; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_select_domain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/crypto/extr_ap_bus.c_ap_select_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ap_domain_index = common dso_local global i32 0, align 4
@AP_DOMAINS = common dso_local global i32 0, align 4
@AP_DEVICES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ap_select_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap_select_domain() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @ap_domain_index, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @ap_domain_index, align 4
  %15 = load i32, i32* @AP_DOMAINS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %72

18:                                               ; preds = %13, %0
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %61, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @AP_DOMAINS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ap_test_config_domain(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %61

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @AP_DEVICES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @ap_test_config_card_id(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %50

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @AP_MKQID(i32 %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @ap_query_queue(i32 %42, i32* %2, i32* %3)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %46, %37
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %19

64:                                               ; preds = %19
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* @ap_domain_index, align 4
  store i32 0, i32* %1, align 4
  br label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %1, align 4
  br label %72

72:                                               ; preds = %69, %67, %17
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i32 @ap_test_config_domain(i32) #1

declare dso_local i32 @ap_test_config_card_id(i32) #1

declare dso_local i32 @AP_MKQID(i32, i32) #1

declare dso_local i32 @ap_query_queue(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
