; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_from_recv_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ipmi/extr_ipmi_msghandler.c_smi_from_recv_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_smi_msg = type { i32, i32*, i32 }
%struct.ipmi_recv_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipmi_smi_msg* (i32, %struct.ipmi_recv_msg*, i8, i64)* @smi_from_recv_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipmi_smi_msg* @smi_from_recv_msg(i32 %0, %struct.ipmi_recv_msg* %1, i8 zeroext %2, i64 %3) #0 {
  %5 = alloca %struct.ipmi_smi_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipmi_recv_msg*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.ipmi_smi_msg*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.ipmi_recv_msg* %1, %struct.ipmi_recv_msg** %7, align 8
  store i8 %2, i8* %8, align 1
  store i64 %3, i64* %9, align 8
  %11 = call %struct.ipmi_smi_msg* (...) @ipmi_alloc_smi_msg()
  store %struct.ipmi_smi_msg* %11, %struct.ipmi_smi_msg** %10, align 8
  %12 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %10, align 8
  %13 = icmp ne %struct.ipmi_smi_msg* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.ipmi_smi_msg* null, %struct.ipmi_smi_msg** %5, align 8
  br label %40

15:                                               ; preds = %4
  %16 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %10, align 8
  %17 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %20 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %24 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32* %18, i32 %22, i32 %26)
  %28 = load %struct.ipmi_recv_msg*, %struct.ipmi_recv_msg** %7, align 8
  %29 = getelementptr inbounds %struct.ipmi_recv_msg, %struct.ipmi_recv_msg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %10, align 8
  %33 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i8, i8* %8, align 1
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @STORE_SEQ_IN_MSGID(i8 zeroext %34, i64 %35)
  %37 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %10, align 8
  %38 = getelementptr inbounds %struct.ipmi_smi_msg, %struct.ipmi_smi_msg* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %10, align 8
  store %struct.ipmi_smi_msg* %39, %struct.ipmi_smi_msg** %5, align 8
  br label %40

40:                                               ; preds = %15, %14
  %41 = load %struct.ipmi_smi_msg*, %struct.ipmi_smi_msg** %5, align 8
  ret %struct.ipmi_smi_msg* %41
}

declare dso_local %struct.ipmi_smi_msg* @ipmi_alloc_smi_msg(...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @STORE_SEQ_IN_MSGID(i8 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
