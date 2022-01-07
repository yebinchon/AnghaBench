; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_netlink.c_ipoib_changelink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_netlink.c_ipoib_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_IPOIB_MODE = common dso_local global i64 0, align 8
@IPOIB_MODE_DATAGRAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"datagram\0A\00", align 1
@IPOIB_MODE_CONNECTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"connected\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IFLA_IPOIB_UMCAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**)* @ipoib_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %11 = load i64, i64* @IFLA_IPOIB_MODE, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %17 = load i64, i64* @IFLA_IPOIB_MODE, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = call i64 @nla_get_u16(%struct.nlattr* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @IPOIB_MODE_DATAGRAM, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @ipoib_set_mode(%struct.net_device* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %9, align 4
  br label %38

27:                                               ; preds = %15
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @IPOIB_MODE_CONNECTED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @ipoib_set_mode(%struct.net_device* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %9, align 4
  br label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %59

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %45 = load i64, i64* @IFLA_IPOIB_UMCAST, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %51 = load i64, i64* @IFLA_IPOIB_UMCAST, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i64 @nla_get_u16(%struct.nlattr* %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @ipoib_set_umcast(%struct.net_device* %55, i64 %56)
  br label %58

58:                                               ; preds = %49, %43
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @ipoib_set_mode(%struct.net_device*, i8*) #1

declare dso_local i32 @ipoib_set_umcast(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
