; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_config.c_EChannel_proc_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_config.c_EChannel_proc_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisax_d_if = type { i32, %struct.IsdnCardState* }
%struct.IsdnCardState = type { i32, i64* }
%struct.sk_buff = type { i32, i32 }

@DEB_DLOG_HEX = common dso_local global i32 0, align 4
@MAX_DLOG_SPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"LogEcho: \00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"warning Frame too big (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisax_d_if*)* @EChannel_proc_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @EChannel_proc_rcv(%struct.hisax_d_if* %0) #0 {
  %2 = alloca %struct.hisax_d_if*, align 8
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.hisax_d_if* %0, %struct.hisax_d_if** %2, align 8
  %6 = load %struct.hisax_d_if*, %struct.hisax_d_if** %2, align 8
  %7 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %6, i32 0, i32 1
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %7, align 8
  store %struct.IsdnCardState* %8, %struct.IsdnCardState** %3, align 8
  br label %9

9:                                                ; preds = %72, %1
  %10 = load %struct.hisax_d_if*, %struct.hisax_d_if** %2, align 8
  %11 = getelementptr inbounds %struct.hisax_d_if, %struct.hisax_d_if* %10, i32 0, i32 0
  %12 = call %struct.sk_buff* @skb_dequeue(i32* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %5, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %14, label %75

14:                                               ; preds = %9
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DEB_DLOG_HEX, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %14
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MAX_DLOG_SPACE, align 4
  %29 = sdiv i32 %28, 3
  %30 = sub nsw i32 %29, 10
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %21
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %4, align 8
  store i64 69, i64* %33, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = getelementptr inbounds i64, i64* %35, i32 1
  store i64* %36, i64** %4, align 8
  store i64 67, i64* %35, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %4, align 8
  store i64 72, i64* %37, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %4, align 8
  store i64 79, i64* %39, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %4, align 8
  store i64 58, i64* %41, align 8
  %43 = load i64*, i64** %4, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @QuickHex(i64* %43, i32 %46, i32 %49)
  %51 = load i64*, i64** %4, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64* %53, i64** %4, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 -1
  store i64* %55, i64** %4, align 8
  %56 = load i64*, i64** %4, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %4, align 8
  store i64 10, i64* %56, align 8
  %58 = load i64*, i64** %4, align 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = bitcast i64* %62 to i8*
  %64 = call i32 (%struct.IsdnCardState*, i8*, i8*, ...) @HiSax_putstatus(%struct.IsdnCardState* %59, i8* null, i8* %63)
  br label %71

65:                                               ; preds = %21
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.IsdnCardState*, i8*, i8*, ...) @HiSax_putstatus(%struct.IsdnCardState* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %32
  br label %72

72:                                               ; preds = %71, %14
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %73)
  br label %9

75:                                               ; preds = %9
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @QuickHex(i64*, i32, i32) #1

declare dso_local i32 @HiSax_putstatus(%struct.IsdnCardState*, i8*, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
