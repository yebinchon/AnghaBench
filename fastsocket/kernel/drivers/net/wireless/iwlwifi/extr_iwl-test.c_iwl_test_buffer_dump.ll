; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_buffer_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/extr_iwl-test.c_iwl_test_buffer_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_test = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }

@EFAULT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DUMP_CHUNK_SIZE = common dso_local global i32 0, align 4
@IWL_TM_ATTR_BUFFER_DUMP = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_test*, %struct.sk_buff*, %struct.netlink_callback*)* @iwl_test_buffer_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_test_buffer_dump(%struct.iwl_test* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
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
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %20 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %32 = call i32 @iwl_test_mem_stop(%struct.iwl_test* %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %85

35:                                               ; preds = %18
  %36 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  %50 = srem i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %54 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  %58 = srem i32 %56, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %52, %44, %35
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = load i32, i32* @IWL_TM_ATTR_BUFFER_DUMP, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.iwl_test*, %struct.iwl_test** %5, align 8
  %64 = getelementptr inbounds %struct.iwl_test, %struct.iwl_test* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @DUMP_CHUNK_SIZE, align 4
  %68 = load i32, i32* %8, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %66, %70
  %72 = call i64 @nla_put(%struct.sk_buff* %60, i32 %61, i32 %62, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %82

75:                                               ; preds = %59
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  %78 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %79 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32 %77, i32* %81, align 4
  store i32 0, i32* %4, align 4
  br label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @ENOBUFS, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %75, %30, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @iwl_test_mem_stop(%struct.iwl_test*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
