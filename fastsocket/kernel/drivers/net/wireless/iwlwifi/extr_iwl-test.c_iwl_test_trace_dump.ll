; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_trace_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_trace_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }

@EFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DUMP_CHUNK_SIZE = common dso_local global i32 0, align 4
@IWL_TM_ATTR_TRACE_DUMP = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, %struct.sk_buff*, %struct.netlink_callback*)* @iwl_test_trace_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_trace_dump(%struct.iwl_test* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_test*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_test* %0, %struct.iwl_test** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %10 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %89

24:                                               ; preds = %15
  %25 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %26 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sge i32 %30, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %89

39:                                               ; preds = %24
  %40 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %44 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %42, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %39
  %49 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %50 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  %54 = srem i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %58 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %56, %48, %39
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* @IWL_TM_ATTR_TRACE_DUMP, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %68 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  %72 = load i32, i32* %8, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %70, %74
  %76 = call i64 @nla_put(%struct.sk_buff* %64, i32 %65, i32 %66, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %86

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  %82 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %83 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 %81, i32* %85, align 4
  store i32 0, i32* %4, align 4
  br label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @ENOBUFS, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %79, %36, %21
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
