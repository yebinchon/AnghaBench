; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_get_id_from_freelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_xen-netfront.c_get_id_from_freelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.skb_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32*, %union.skb_entry*)* @get_id_from_freelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @get_id_from_freelist(i32* %0, %union.skb_entry* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %union.skb_entry*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %union.skb_entry* %1, %union.skb_entry** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %union.skb_entry*, %union.skb_entry** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %union.skb_entry, %union.skb_entry* %8, i64 %10
  %12 = bitcast %union.skb_entry* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %3, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = trunc i32 %15 to i16
  ret i16 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
