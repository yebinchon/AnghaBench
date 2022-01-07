; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_dp_tlv_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_dp_tlv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.channel_tlv = type { i64, i32 }

@CHANNEL_TLV_LIST_END = common dso_local global i64 0, align 8
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TLV number %d: type %d, length %d\0A\00", align 1
@MAX_TLVS_IN_LIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"corrupt tlvs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_dp_tlv_list(%struct.bnx2x* %0, i8* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.channel_tlv*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.channel_tlv*
  store %struct.channel_tlv* %8, %struct.channel_tlv** %6, align 8
  br label %9

9:                                                ; preds = %40, %2
  %10 = load %struct.channel_tlv*, %struct.channel_tlv** %6, align 8
  %11 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CHANNEL_TLV_LIST_END, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.channel_tlv*, %struct.channel_tlv** %6, align 8
  %19 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.channel_tlv*, %struct.channel_tlv** %6, align 8
  %22 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DP(i32 %16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %17, i64 %20, i32 %23)
  %25 = load %struct.channel_tlv*, %struct.channel_tlv** %6, align 8
  %26 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to %struct.channel_tlv*
  store %struct.channel_tlv* %32, %struct.channel_tlv** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MAX_TLVS_IN_LIST, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %15
  %39 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %51

40:                                               ; preds = %15
  br label %9

41:                                               ; preds = %9
  %42 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.channel_tlv*, %struct.channel_tlv** %6, align 8
  %45 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.channel_tlv*, %struct.channel_tlv** %6, align 8
  %48 = getelementptr inbounds %struct.channel_tlv, %struct.channel_tlv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DP(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %46, i32 %49)
  br label %51

51:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32, i64, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
