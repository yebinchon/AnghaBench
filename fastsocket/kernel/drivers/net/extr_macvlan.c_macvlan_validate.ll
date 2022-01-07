; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_validate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_macvlan.c_macvlan_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFLA_MACVLAN_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**)* @macvlan_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_validate(%struct.nlattr** %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nlattr**, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %7 = load i64, i64* @IFLA_ADDRESS, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %13 = load i64, i64* @IFLA_ADDRESS, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = call i64 @nla_len(%struct.nlattr* %15)
  %17 = load i64, i64* @ETH_ALEN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %55

22:                                               ; preds = %11
  %23 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %24 = load i64, i64* @IFLA_ADDRESS, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = call i32 @nla_data(%struct.nlattr* %26)
  %28 = call i32 @is_valid_ether_addr(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EADDRNOTAVAIL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = icmp ne %struct.nlattr** %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %39 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %45 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @nla_get_u32(%struct.nlattr* %47)
  switch i32 %48, label %50 [
    i32 129, label %49
    i32 128, label %49
    i32 131, label %49
    i32 130, label %49
  ]

49:                                               ; preds = %43, %43, %43, %43
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %55

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %37, %34
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %50, %30, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
