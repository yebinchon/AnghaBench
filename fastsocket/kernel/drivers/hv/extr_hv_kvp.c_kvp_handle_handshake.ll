; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_kvp_handle_handshake.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_hv_kvp.c_kvp_handle_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.hv_kvp_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dm_reg_value = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"KVP: IP injection functionality not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"KVP: Upgrade the KVP daemon\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"KVP: incompatible daemon\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"KVP: KVP version: %d, Daemon version: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"KVP: user-mode registering done.\0A\00", align 1
@kvp_transaction = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_kvp_msg*)* @kvp_handle_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_handle_handshake(%struct.hv_kvp_msg* %0) #0 {
  %2 = alloca %struct.hv_kvp_msg*, align 8
  %3 = alloca i32, align 4
  store %struct.hv_kvp_msg* %0, %struct.hv_kvp_msg** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %2, align 8
  %5 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %12 [
    i32 129, label %8
    i32 128, label %11
  ]

8:                                                ; preds = %1
  store i32 129, i32* @dm_reg_value, align 4
  %9 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %19

11:                                               ; preds = %1
  store i32 128, i32* @dm_reg_value, align 4
  br label %19

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %14 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %2, align 8
  %15 = getelementptr inbounds %struct.hv_kvp_msg, %struct.hv_kvp_msg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 128, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %12, %11, %8
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %24 = load i32, i32* @dm_reg_value, align 4
  %25 = call i32 @kvp_register(i32 %24)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvp_transaction, i32 0, i32 0), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvp_transaction, i32 0, i32 1), align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvp_transaction, i32 0, i32 1), align 8
  %30 = call i32 @hv_kvp_onchannelcallback(i64 %29)
  br label %31

31:                                               ; preds = %28, %22
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kvp_register(i32) #1

declare dso_local i32 @hv_kvp_onchannelcallback(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
