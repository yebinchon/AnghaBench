; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_send_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_monreader.c_mon_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_msg = type { i32, i64, i64, i32, i32 }
%struct.mon_private = type { i32, i32, i32, i32 }

@IUCV_IPRMDATA = common dso_local global i32 0, align 4
@MON_MSGLIM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Reading monitor data failed with rc=%i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_msg*, %struct.mon_private*)* @mon_send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_send_reply(%struct.mon_msg* %0, %struct.mon_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mon_msg*, align 8
  %5 = alloca %struct.mon_private*, align 8
  %6 = alloca i32, align 4
  store %struct.mon_msg* %0, %struct.mon_msg** %4, align 8
  store %struct.mon_private* %1, %struct.mon_private** %5, align 8
  %7 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %8 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %11 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %10, i32 0, i32 4
  %12 = load i32, i32* @IUCV_IPRMDATA, align 4
  %13 = call i32 @iucv_message_reply(i32 %9, i32* %11, i32 %12, i32* null, i32 0)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %15 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %14, i32 0, i32 2
  %16 = call i32 @atomic_dec(i32* %15)
  %17 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %18 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @likely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %27 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %29 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %31 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* @MON_MSGLIM, align 4
  %35 = srem i32 %33, %34
  %36 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %37 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mon_private*, %struct.mon_private** %5, align 8
  %39 = getelementptr inbounds %struct.mon_private, %struct.mon_private* %38, i32 0, i32 1
  %40 = call i32 @atomic_dec(i32* %39)
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.mon_msg*, %struct.mon_msg** %4, align 8
  %43 = getelementptr inbounds %struct.mon_msg, %struct.mon_msg* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %25
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @iucv_message_reply(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
