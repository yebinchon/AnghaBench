; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_writepacket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_make_writepacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_packet = type { i64*, i32, %struct.hpsb_host* }
%struct.hpsb_host = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hpsb_packet* @hpsb_make_writepacket(%struct.hpsb_host* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.hpsb_packet*, align 8
  %7 = alloca %struct.hpsb_host*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hpsb_packet*, align 8
  store %struct.hpsb_host* %0, %struct.hpsb_host** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %6, align 8
  br label %78

16:                                               ; preds = %5
  %17 = load i64, i64* %11, align 8
  %18 = call %struct.hpsb_packet* @hpsb_alloc_packet(i64 %17)
  store %struct.hpsb_packet* %18, %struct.hpsb_packet** %12, align 8
  %19 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %20 = icmp ne %struct.hpsb_packet* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %6, align 8
  br label %78

22:                                               ; preds = %16
  %23 = load i64, i64* %11, align 8
  %24 = urem i64 %23, 4
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %28 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %11, align 8
  %31 = lshr i64 %30, 2
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %26, %22
  %34 = load %struct.hpsb_host*, %struct.hpsb_host** %7, align 8
  %35 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %36 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %35, i32 0, i32 2
  store %struct.hpsb_host* %34, %struct.hpsb_host** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %39 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %41 = call i64 @hpsb_get_tlabel(%struct.hpsb_packet* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %45 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %44)
  store %struct.hpsb_packet* null, %struct.hpsb_packet** %6, align 8
  br label %78

46:                                               ; preds = %33
  %47 = load i64, i64* %11, align 8
  %48 = icmp eq i64 %47, 4
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %55, align 4
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  %60 = call i32 @fill_async_writequad(%struct.hpsb_packet* %50, i32 %51, i32 %59)
  br label %76

61:                                               ; preds = %46
  %62 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @fill_async_writeblock(%struct.hpsb_packet* %62, i32 %63, i64 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  %70 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @memcpy(i64* %71, i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %68, %61
  br label %76

76:                                               ; preds = %75, %58
  %77 = load %struct.hpsb_packet*, %struct.hpsb_packet** %12, align 8
  store %struct.hpsb_packet* %77, %struct.hpsb_packet** %6, align 8
  br label %78

78:                                               ; preds = %76, %43, %21, %15
  %79 = load %struct.hpsb_packet*, %struct.hpsb_packet** %6, align 8
  ret %struct.hpsb_packet* %79
}

declare dso_local %struct.hpsb_packet* @hpsb_alloc_packet(i64) #1

declare dso_local i64 @hpsb_get_tlabel(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

declare dso_local i32 @fill_async_writequad(%struct.hpsb_packet*, i32, i32) #1

declare dso_local i32 @fill_async_writeblock(%struct.hpsb_packet*, i32, i64) #1

declare dso_local i32 @memcpy(i64*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
