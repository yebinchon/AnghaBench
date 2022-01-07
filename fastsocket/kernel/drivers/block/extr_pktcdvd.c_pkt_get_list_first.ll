; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_get_list_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_pktcdvd.c_pkt_get_list_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.bio**, %struct.bio**)* @pkt_get_list_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @pkt_get_list_first(%struct.bio** %0, %struct.bio** %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.bio**, align 8
  %5 = alloca %struct.bio**, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.bio** %0, %struct.bio*** %4, align 8
  store %struct.bio** %1, %struct.bio*** %5, align 8
  %7 = load %struct.bio**, %struct.bio*** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  %9 = icmp eq %struct.bio* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.bio* null, %struct.bio** %3, align 8
  br label %27

11:                                               ; preds = %2
  %12 = load %struct.bio**, %struct.bio*** %4, align 8
  %13 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %13, %struct.bio** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %6, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load %struct.bio*, %struct.bio** %15, align 8
  %17 = load %struct.bio**, %struct.bio*** %4, align 8
  store %struct.bio* %16, %struct.bio** %17, align 8
  %18 = load %struct.bio**, %struct.bio*** %4, align 8
  %19 = load %struct.bio*, %struct.bio** %18, align 8
  %20 = icmp eq %struct.bio* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load %struct.bio**, %struct.bio*** %5, align 8
  store %struct.bio* null, %struct.bio** %22, align 8
  br label %23

23:                                               ; preds = %21, %11
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %25, align 8
  %26 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %26, %struct.bio** %3, align 8
  br label %27

27:                                               ; preds = %23, %10
  %28 = load %struct.bio*, %struct.bio** %3, align 8
  ret %struct.bio* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
