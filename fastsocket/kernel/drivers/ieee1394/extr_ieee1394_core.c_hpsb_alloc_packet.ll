; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_alloc_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_core.c_hpsb_alloc_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@hpsb_unused = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpsb_packet* @hpsb_alloc_packet(i64 %0) #0 {
  %2 = alloca %struct.hpsb_packet*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.hpsb_packet*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = add i64 %5, 3
  %7 = and i64 %6, -4
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = add i64 40, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.hpsb_packet* @kzalloc(i32 %10, i32 %11)
  store %struct.hpsb_packet* %12, %struct.hpsb_packet** %4, align 8
  %13 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %14 = icmp ne %struct.hpsb_packet* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %2, align 8
  br label %44

16:                                               ; preds = %1
  %17 = load i32, i32* @hpsb_unused, align 4
  %18 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %19 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %21 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %23 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %22, i32 0, i32 6
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %26 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %25, i32 0, i32 5
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %29 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %28, i32 0, i32 4
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %16
  %34 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %35 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %38 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %3, align 8
  %40 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  %41 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %33, %16
  %43 = load %struct.hpsb_packet*, %struct.hpsb_packet** %4, align 8
  store %struct.hpsb_packet* %43, %struct.hpsb_packet** %2, align 8
  br label %44

44:                                               ; preds = %42, %15
  %45 = load %struct.hpsb_packet*, %struct.hpsb_packet** %2, align 8
  ret %struct.hpsb_packet* %45
}

declare dso_local %struct.hpsb_packet* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
