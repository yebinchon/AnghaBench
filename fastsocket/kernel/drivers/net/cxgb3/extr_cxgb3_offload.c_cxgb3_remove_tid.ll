; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_remove_tid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_remove_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i64 }
%struct.tid_info = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { %struct.tid_info }

@T3A = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb3_remove_tid(%struct.t3cdev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.t3cdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tid_info*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %10 = call %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.tid_info* %11, %struct.tid_info** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %14 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp uge i32 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %20 = getelementptr inbounds %struct.t3cdev, %struct.t3cdev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @T3A, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %26 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @cmpxchg(i32** %31, i8* %32, i32* null)
  br label %59

34:                                               ; preds = %3
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call i64 @likely(%struct.sk_buff* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @mk_tid_release(%struct.sk_buff* %41, i32 %42)
  %44 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = call i32 @cxgb3_ofld_send(%struct.t3cdev* %44, %struct.sk_buff* %45)
  %47 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %48 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %58

54:                                               ; preds = %34
  %55 = load %struct.t3cdev*, %struct.t3cdev** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @cxgb3_queue_tid_release(%struct.t3cdev* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %40
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.tid_info*, %struct.tid_info** %7, align 8
  %61 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %60, i32 0, i32 1
  %62 = call i32 @atomic_dec(i32* %61)
  ret void
}

declare dso_local %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cmpxchg(i32**, i8*, i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @mk_tid_release(%struct.sk_buff*, i32) #1

declare dso_local i32 @cxgb3_ofld_send(%struct.t3cdev*, %struct.sk_buff*) #1

declare dso_local i32 @cxgb3_queue_tid_release(%struct.t3cdev*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
