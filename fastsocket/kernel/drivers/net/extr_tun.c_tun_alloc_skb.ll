; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tun.c_tun_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.tun_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.tun_struct*, i64, i64, i64, i32)* @tun_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @tun_alloc_skb(%struct.tun_struct* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tun_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %16 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %12, align 8
  %19 = load %struct.sock*, %struct.sock** %12, align 8
  %20 = call i32 @sock_update_classid(%struct.sock* %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i64, i64* %10, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %5
  %30 = load i64, i64* %9, align 8
  store i64 %30, i64* %10, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load %struct.sock*, %struct.sock** %12, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock* %32, i64 %35, i64 %38, i32 %39, i32* %14)
  store %struct.sk_buff* %40, %struct.sk_buff** %13, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %14, align 4
  %45 = call %struct.sk_buff* @ERR_PTR(i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %6, align 8
  br label %66

46:                                               ; preds = %31
  %47 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @skb_reserve(%struct.sk_buff* %47, i64 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @skb_put(%struct.sk_buff* %50, i64 %51)
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = sub i64 %53, %54
  %56 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = sub i64 %58, %59
  %61 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %65, %struct.sk_buff** %6, align 8
  br label %66

66:                                               ; preds = %46, %43
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %67
}

declare dso_local i32 @sock_update_classid(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_pskb(%struct.sock*, i64, i64, i32, i32*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
