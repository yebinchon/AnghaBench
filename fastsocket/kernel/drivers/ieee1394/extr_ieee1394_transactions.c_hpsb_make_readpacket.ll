; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_readpacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_readpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, %struct.hpsb_host* }
%struct.hpsb_host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpsb_packet* @hpsb_make_readpacket(%struct.hpsb_host* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.hpsb_packet*, align 8
  %6 = alloca %struct.hpsb_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hpsb_packet*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %5, align 8
  br label %47

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = call %struct.hpsb_packet* @hpsb_alloc_packet(i64 %15)
  store %struct.hpsb_packet* %16, %struct.hpsb_packet** %10, align 8
  %17 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %18 = icmp ne %struct.hpsb_packet* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %5, align 8
  br label %47

20:                                               ; preds = %14
  %21 = load %struct.hpsb_host*, %struct.hpsb_host** %6, align 8
  %22 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %23 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %22, i32 0, i32 1
  store %struct.hpsb_host* %21, %struct.hpsb_host** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %26 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %28 = call i64 @hpsb_get_tlabel(%struct.hpsb_packet* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %32 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %31)
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %5, align 8
  br label %47

33:                                               ; preds = %20
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @fill_async_readquad(%struct.hpsb_packet* %37, i32 %38)
  br label %45

40:                                               ; preds = %33
  %41 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @fill_async_readblock(%struct.hpsb_packet* %41, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.hpsb_packet*, %struct.hpsb_packet** %10, align 8
  store %struct.hpsb_packet* %46, %struct.hpsb_packet** %5, align 8
  br label %47

47:                                               ; preds = %45, %30, %19, %13
  %48 = load %struct.hpsb_packet*, %struct.hpsb_packet** %5, align 8
  ret %struct.hpsb_packet* %48
}

declare dso_local %struct.hpsb_packet* @hpsb_alloc_packet(i64) #1

declare dso_local i64 @hpsb_get_tlabel(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @fill_async_readquad(%struct.hpsb_packet*, i32) #1

declare dso_local i32 @fill_async_readblock(%struct.hpsb_packet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
