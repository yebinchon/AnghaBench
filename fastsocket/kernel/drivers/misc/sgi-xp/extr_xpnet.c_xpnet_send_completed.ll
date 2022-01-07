; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpnet.c_xpnet_send_completed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpnet.c_xpnet_send_completed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpnet_pending_msg = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@xpnet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"message to %d notified with reason %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"all acks for skb->head=-x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i32, i8*)* @xpnet_send_completed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpnet_send_completed(i32 %0, i16 signext %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xpnet_pending_msg*, align 8
  store i32 %0, i32* %5, align 4
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.xpnet_pending_msg*
  store %struct.xpnet_pending_msg* %11, %struct.xpnet_pending_msg** %9, align 8
  %12 = load %struct.xpnet_pending_msg*, %struct.xpnet_pending_msg** %9, align 8
  %13 = icmp eq %struct.xpnet_pending_msg* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @DBUG_ON(i32 %14)
  %16 = load i32, i32* @xpnet, align 4
  %17 = load i16, i16* %6, align 2
  %18 = sext i16 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load %struct.xpnet_pending_msg*, %struct.xpnet_pending_msg** %9, align 8
  %23 = getelementptr inbounds %struct.xpnet_pending_msg, %struct.xpnet_pending_msg* %22, i32 0, i32 1
  %24 = call i64 @atomic_dec_return(i32* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %4
  %27 = load i32, i32* @xpnet, align 4
  %28 = load %struct.xpnet_pending_msg*, %struct.xpnet_pending_msg** %9, align 8
  %29 = getelementptr inbounds %struct.xpnet_pending_msg, %struct.xpnet_pending_msg* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i32, i8*, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load %struct.xpnet_pending_msg*, %struct.xpnet_pending_msg** %9, align 8
  %36 = getelementptr inbounds %struct.xpnet_pending_msg, %struct.xpnet_pending_msg* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = call i32 @dev_kfree_skb_any(%struct.TYPE_2__* %37)
  %39 = load %struct.xpnet_pending_msg*, %struct.xpnet_pending_msg** %9, align 8
  %40 = call i32 @kfree(%struct.xpnet_pending_msg* %39)
  br label %41

41:                                               ; preds = %26, %4
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, ...) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.xpnet_pending_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
