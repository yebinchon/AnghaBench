; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_receive_emsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hfc_sx.c_receive_emsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, i64* }
%struct.sk_buff = type { i32, i32 }

@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"echo_rec_data blocked\00", align 1
@HFCSX_SEL_B2_RX = common dso_local global i32 0, align 4
@DEB_DLOG_HEX = common dso_local global i32 0, align 4
@MAX_DLOG_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"LogEcho: \00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"warning Frame too big (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @receive_emsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_emsg(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  store i32 5, i32* %3, align 4
  %6 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %8 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %7, i32 0, i32 1
  %9 = call i64 @test_and_set_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %13 = call i32 @debugl1(%struct.IsdnCardState* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %97

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %90, %14
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %17 = load i32, i32* @HFCSX_SEL_B2_RX, align 4
  %18 = call %struct.sk_buff* @read_fifo(%struct.IsdnCardState* %16, i32 %17, i32 0)
  store %struct.sk_buff* %18, %struct.sk_buff** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %82

21:                                               ; preds = %15
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DEB_DLOG_HEX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %21
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  store i64* %31, i64** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAX_DLOG_SPACE, align 4
  %36 = sdiv i32 %35, 3
  %37 = sub nsw i32 %36, 10
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %28
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %4, align 8
  store i64 69, i64* %40, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %4, align 8
  store i64 67, i64* %42, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %4, align 8
  store i64 72, i64* %44, align 8
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 1
  store i64* %47, i64** %4, align 8
  store i64 79, i64* %46, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %4, align 8
  store i64 58, i64* %48, align 8
  %50 = load i64*, i64** %4, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @QuickHex(i64* %50, i32 %53, i32 %56)
  %58 = load i64*, i64** %4, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64* %60, i64** %4, align 8
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 -1
  store i64* %62, i64** %4, align 8
  %63 = load i64*, i64** %4, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %4, align 8
  store i64 10, i64* %63, align 8
  %65 = load i64*, i64** %4, align 8
  store i64 0, i64* %65, align 8
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = bitcast i64* %69 to i8*
  %71 = call i32 (%struct.IsdnCardState*, i8*, i8*, ...) @HiSax_putstatus(%struct.IsdnCardState* %66, i8* null, i8* %70)
  br label %78

72:                                               ; preds = %28
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (%struct.IsdnCardState*, i8*, i8*, ...) @HiSax_putstatus(%struct.IsdnCardState* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %39
  br label %79

79:                                               ; preds = %78, %21
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %79, %15
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %3, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi i1 [ false, %83 ], [ %89, %87 ]
  br i1 %91, label %15, label %92

92:                                               ; preds = %90
  %93 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %94 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %95 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %94, i32 0, i32 1
  %96 = call i32 @test_and_clear_bit(i32 %93, i32* %95)
  br label %97

97:                                               ; preds = %92, %11
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local %struct.sk_buff* @read_fifo(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @QuickHex(i64*, i32, i32) #1

declare dso_local i32 @HiSax_putstatus(%struct.IsdnCardState*, i8*, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
