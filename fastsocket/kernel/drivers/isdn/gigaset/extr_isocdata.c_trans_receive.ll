; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_trans_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_isocdata.c_trans_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { %struct.sk_buff*, %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SBUFSIZE = common dso_local global i64 0, align 8
@HW_HDR_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"could not allocate skb\0A\00", align 1
@TRANSBUFSIZE = common dso_local global i32 0, align 4
@DEBUG_STREAM_DUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"rcv data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.bc_state*)* @trans_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trans_receive(i8* %0, i32 %1, %struct.bc_state* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bc_state*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bc_state* %2, %struct.bc_state** %6, align 8
  %10 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %11 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %17 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %21 = call i32 @hdlc_flush(%struct.bc_state* %20)
  br label %143

22:                                               ; preds = %3
  %23 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %24 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %7, align 8
  %26 = icmp eq %struct.sk_buff* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = load i64, i64* @SBUFSIZE, align 8
  %32 = load i64, i64* @HW_HDR_LEN, align 8
  %33 = add nsw i64 %31, %32
  %34 = call %struct.sk_buff* @dev_alloc_skb(i64 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %7, align 8
  %35 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %36 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %35, i32 0, i32 0
  store %struct.sk_buff* %34, %struct.sk_buff** %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %30
  %40 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %41 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %143

46:                                               ; preds = %30
  %47 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %48 = load i64, i64* @HW_HDR_LEN, align 8
  %49 = call i32 @skb_reserve(%struct.sk_buff* %47, i64 %48)
  br label %50

50:                                               ; preds = %46, %22
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %55 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %53
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @TRANSBUFSIZE, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %142, %50
  %67 = load i32, i32* %5, align 4
  %68 = icmp ugt i32 %67, 0
  br i1 %68, label %69, label %143

69:                                               ; preds = %66
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = call i8* @skb_put(%struct.sk_buff* %70, i32 %79)
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %89, %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp ugt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 0
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ false, %81 ], [ %86, %84 ]
  br i1 %88, label %89, label %102

89:                                               ; preds = %87
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  %92 = load i8, i8* %90, align 1
  %93 = zext i8 %92 to i32
  %94 = call i32 @bitrev8(i32 %93)
  %95 = trunc i32 %94 to i8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %9, align 8
  store i8 %95, i8* %96, align 1
  %98 = load i32, i32* %5, align 4
  %99 = add i32 %98, -1
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %8, align 4
  br label %81

102:                                              ; preds = %87
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %142

105:                                              ; preds = %102
  %106 = load i32, i32* @DEBUG_STREAM_DUMP, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dump_bytes(i32 %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %115 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %116 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %115, i32 0, i32 1
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %119 = call i32 @gigaset_rcv_skb(%struct.sk_buff* %114, %struct.TYPE_6__* %117, %struct.bc_state* %118)
  %120 = load i64, i64* @SBUFSIZE, align 8
  %121 = load i64, i64* @HW_HDR_LEN, align 8
  %122 = add nsw i64 %120, %121
  %123 = call %struct.sk_buff* @dev_alloc_skb(i64 %122)
  store %struct.sk_buff* %123, %struct.sk_buff** %7, align 8
  %124 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %125 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %124, i32 0, i32 0
  store %struct.sk_buff* %123, %struct.sk_buff** %125, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %135, label %128

128:                                              ; preds = %105
  %129 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %130 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_err(i32 %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %143

135:                                              ; preds = %105
  %136 = load %struct.bc_state*, %struct.bc_state** %6, align 8
  %137 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %136, i32 0, i32 0
  %138 = load %struct.sk_buff*, %struct.sk_buff** %137, align 8
  %139 = load i64, i64* @HW_HDR_LEN, align 8
  %140 = call i32 @skb_reserve(%struct.sk_buff* %138, i64 %139)
  %141 = load i32, i32* @TRANSBUFSIZE, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %135, %102
  br label %66

143:                                              ; preds = %15, %39, %128, %66
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hdlc_flush(%struct.bc_state*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @dump_bytes(i32, i8*, i32, i32) #1

declare dso_local i32 @gigaset_rcv_skb(%struct.sk_buff*, %struct.TYPE_6__*, %struct.bc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
