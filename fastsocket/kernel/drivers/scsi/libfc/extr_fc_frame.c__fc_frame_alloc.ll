; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_frame.c__fc_frame_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_frame.c__fc_frame_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.sk_buff = type { i32 }

@FC_FRAME_HEADROOM = common dso_local global i64 0, align 8
@FC_FRAME_TAILROOM = common dso_local global i64 0, align 8
@NET_SKB_PAD = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fc_frame* @_fc_frame_alloc(i64 %0) #0 {
  %2 = alloca %struct.fc_frame*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = urem i64 %6, 4
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = add i64 %11, 4
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @FC_FRAME_HEADROOM, align 8
  %15 = add i64 %13, %14
  %16 = load i64, i64* @FC_FRAME_TAILROOM, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* @NET_SKB_PAD, align 8
  %19 = add i64 %17, %18
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.sk_buff* @alloc_skb_fclone(i64 %19, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store %struct.fc_frame* null, %struct.fc_frame** %2, align 8
  br label %39

25:                                               ; preds = %1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i64, i64* @NET_SKB_PAD, align 8
  %28 = load i64, i64* @FC_FRAME_HEADROOM, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @skb_reserve(%struct.sk_buff* %26, i64 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = bitcast %struct.sk_buff* %31 to %struct.fc_frame*
  store %struct.fc_frame* %32, %struct.fc_frame** %4, align 8
  %33 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %34 = call i32 @fc_frame_init(%struct.fc_frame* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i32 @skb_put(%struct.sk_buff* %35, i64 %36)
  %38 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  store %struct.fc_frame* %38, %struct.fc_frame** %2, align 8
  br label %39

39:                                               ; preds = %25, %24
  %40 = load %struct.fc_frame*, %struct.fc_frame** %2, align 8
  ret %struct.fc_frame* %40
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb_fclone(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @fc_frame_init(%struct.fc_frame*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
