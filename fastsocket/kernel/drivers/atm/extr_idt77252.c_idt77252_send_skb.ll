; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_send_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_idt77252.c_idt77252_send_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.vc_map*, %struct.atm_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.vc_map = type { i32 }
%struct.atm_dev = type { %struct.idt77252_dev* }
%struct.idt77252_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.atm_vcc* }

@.str = private unnamed_addr constant [32 x i8] c"%s: NULL connection in send().\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VCF_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: Trying to transmit on a non-tx VC.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: Unsupported AAL: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: No scatter-gather yet.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*, %struct.sk_buff*, i32)* @idt77252_send_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_send_skb(%struct.atm_vcc* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atm_dev*, align 8
  %9 = alloca %struct.idt77252_dev*, align 8
  %10 = alloca %struct.vc_map*, align 8
  %11 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 3
  %14 = load %struct.atm_dev*, %struct.atm_dev** %13, align 8
  store %struct.atm_dev* %14, %struct.atm_dev** %8, align 8
  %15 = load %struct.atm_dev*, %struct.atm_dev** %8, align 8
  %16 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %15, i32 0, i32 0
  %17 = load %struct.idt77252_dev*, %struct.idt77252_dev** %16, align 8
  store %struct.idt77252_dev* %17, %struct.idt77252_dev** %9, align 8
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %19 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %18, i32 0, i32 2
  %20 = load %struct.vc_map*, %struct.vc_map** %19, align 8
  store %struct.vc_map* %20, %struct.vc_map** %10, align 8
  %21 = load %struct.vc_map*, %struct.vc_map** %10, align 8
  %22 = icmp eq %struct.vc_map* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %3
  %24 = load %struct.idt77252_dev*, %struct.idt77252_dev** %9, align 8
  %25 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %29 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call i32 @dev_kfree_skb(%struct.sk_buff* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %123

37:                                               ; preds = %3
  %38 = load i32, i32* @VCF_TX, align 4
  %39 = load %struct.vc_map*, %struct.vc_map** %10, align 8
  %40 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %39, i32 0, i32 0
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load %struct.idt77252_dev*, %struct.idt77252_dev** %9, align 8
  %45 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %49 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @atomic_inc(i32* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call i32 @dev_kfree_skb(%struct.sk_buff* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %123

57:                                               ; preds = %37
  %58 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %59 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %63 [
    i32 130, label %62
    i32 129, label %62
    i32 128, label %62
  ]

62:                                               ; preds = %57, %57, %57
  br label %81

63:                                               ; preds = %57
  %64 = load %struct.idt77252_dev*, %struct.idt77252_dev** %9, align 8
  %65 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %68 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %70)
  %72 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %73 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 @atomic_inc(i32* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i32 @dev_kfree_skb(%struct.sk_buff* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %123

81:                                               ; preds = %62
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.idt77252_dev*, %struct.idt77252_dev** %9, align 8
  %89 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %93 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = call i32 @atomic_inc(i32* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i32 @dev_kfree_skb(%struct.sk_buff* %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %123

101:                                              ; preds = %81
  %102 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %104 = call %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff* %103)
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store %struct.atm_vcc* %102, %struct.atm_vcc** %105, align 8
  %106 = load %struct.idt77252_dev*, %struct.idt77252_dev** %9, align 8
  %107 = load %struct.vc_map*, %struct.vc_map** %10, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @queue_skb(%struct.idt77252_dev* %106, %struct.vc_map* %107, %struct.sk_buff* %108, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %101
  %114 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %115 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = call i32 @atomic_inc(i32* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %120 = call i32 @dev_kfree_skb(%struct.sk_buff* %119)
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %123

122:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %113, %87, %63, %43, %23
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @ATM_SKB(%struct.sk_buff*) #1

declare dso_local i32 @queue_skb(%struct.idt77252_dev*, %struct.vc_map*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
