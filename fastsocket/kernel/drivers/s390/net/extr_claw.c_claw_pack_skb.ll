; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_pack_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_pack_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i32, i32, i32 }
%struct.claw_privbk = type { %struct.TYPE_2__, %struct.claw_env*, %struct.chbk* }
%struct.TYPE_2__ = type { i32 }
%struct.claw_env = type { i64, i32 }
%struct.chbk = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PackSKBe\00", align 1
@DO_PACKED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"PackSKBx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.claw_privbk*)* @claw_pack_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @claw_pack_skb(%struct.claw_privbk* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.claw_privbk*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.chbk*, align 8
  %7 = alloca %struct.claw_env*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.claw_privbk* %0, %struct.claw_privbk** %3, align 8
  %11 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %12 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %11, i32 0, i32 2
  %13 = load %struct.chbk*, %struct.chbk** %12, align 8
  %14 = load i64, i64* @WRITE, align 8
  %15 = getelementptr inbounds %struct.chbk, %struct.chbk* %13, i64 %14
  store %struct.chbk* %15, %struct.chbk** %6, align 8
  %16 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %17 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %16, i32 0, i32 1
  %18 = load %struct.claw_env*, %struct.claw_env** %17, align 8
  store %struct.claw_env* %18, %struct.claw_env** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @trace, align 4
  %20 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.chbk*, %struct.chbk** %6, align 8
  %22 = getelementptr inbounds %struct.chbk, %struct.chbk* %21, i32 0, i32 0
  %23 = call i32 @skb_queue_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %129, label %25

25:                                               ; preds = %1
  %26 = load %struct.chbk*, %struct.chbk** %6, align 8
  %27 = getelementptr inbounds %struct.chbk, %struct.chbk* %26, i32 0, i32 0
  %28 = call %struct.sk_buff* @skb_dequeue(i32* %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %32)
  br label %35

34:                                               ; preds = %25
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %133

35:                                               ; preds = %31
  %36 = load %struct.claw_env*, %struct.claw_env** %7, align 8
  %37 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DO_PACKED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %42, %struct.sk_buff** %2, align 8
  br label %133

43:                                               ; preds = %35
  %44 = load %struct.claw_env*, %struct.claw_env** %7, align 8
  %45 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.sk_buff* @dev_alloc_skb(i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %4, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = icmp eq %struct.sk_buff* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 2
  %53 = call i32 @atomic_inc(i32* %52)
  %54 = load %struct.chbk*, %struct.chbk** %6, align 8
  %55 = getelementptr inbounds %struct.chbk, %struct.chbk* %54, i32 0, i32 0
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @skb_queue_head(i32* %55, %struct.sk_buff* %56)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %133

58:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 80, i8* %62, align 1
  br label %63

63:                                               ; preds = %127, %58
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = icmp ne %struct.sk_buff* %67, null
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i1 [ false, %63 ], [ %68, %66 ]
  br i1 %70, label %71, label %128

71:                                               ; preds = %69
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  %77 = load %struct.claw_env*, %struct.claw_env** %7, align 8
  %78 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 8
  %81 = icmp sle i32 %76, %80
  br i1 %81, label %82, label %119

82:                                               ; preds = %71
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @skb_put(%struct.sk_buff* %83, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @memcpy(i32 %87, i32 %90, i32 %93)
  %95 = load %struct.claw_privbk*, %struct.claw_privbk** %3, align 8
  %96 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %8, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %107)
  %109 = load %struct.chbk*, %struct.chbk** %6, align 8
  %110 = getelementptr inbounds %struct.chbk, %struct.chbk* %109, i32 0, i32 0
  %111 = call %struct.sk_buff* @skb_dequeue(i32* %110)
  store %struct.sk_buff* %111, %struct.sk_buff** %5, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = icmp ne %struct.sk_buff* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %82
  %115 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %116 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %115, i32 0, i32 2
  %117 = call i32 @atomic_dec(i32* %116)
  br label %118

118:                                              ; preds = %114, %82
  br label %127

119:                                              ; preds = %71
  store i32 0, i32* %9, align 4
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 2
  %122 = call i32 @atomic_inc(i32* %121)
  %123 = load %struct.chbk*, %struct.chbk** %6, align 8
  %124 = getelementptr inbounds %struct.chbk, %struct.chbk* %123, i32 0, i32 0
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = call i32 @skb_queue_head(i32* %124, %struct.sk_buff* %125)
  br label %127

127:                                              ; preds = %119, %118
  br label %63

128:                                              ; preds = %69
  br label %129

129:                                              ; preds = %128, %1
  %130 = load i32, i32* @trace, align 4
  %131 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %132, %struct.sk_buff** %2, align 8
  br label %133

133:                                              ; preds = %129, %50, %41, %34
  %134 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %134
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
