; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }
%struct.hpsb_packet = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_read(%struct.hpsb_host* %0, i32 %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpsb_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.hpsb_packet*, align 8
  %15 = alloca i32, align 4
  store %struct.hpsb_host* %0, %struct.hpsb_host** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %13, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %71

21:                                               ; preds = %6
  %22 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i64, i64* %13, align 8
  %26 = call %struct.hpsb_packet* @hpsb_make_readpacket(%struct.hpsb_host* %22, i32 %23, i32 %24, i64 %25)
  store %struct.hpsb_packet* %26, %struct.hpsb_packet** %14, align 8
  %27 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %28 = icmp ne %struct.hpsb_packet* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %71

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %35 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %37 = call i32 @hpsb_send_packet_and_wait(%struct.hpsb_packet* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %65

41:                                               ; preds = %32
  %42 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %43 = call i32 @hpsb_packet_success(%struct.hpsb_packet* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load i64, i64* %13, align 8
  %48 = icmp eq i64 %47, 4
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %51 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %12, align 8
  store i32 %54, i32* %55, align 4
  br label %63

56:                                               ; preds = %46
  %57 = load i32*, i32** %12, align 8
  %58 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %59 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @memcpy(i32* %57, i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %56, %49
  br label %64

64:                                               ; preds = %63, %41
  br label %65

65:                                               ; preds = %64, %40
  %66 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %67 = call i32 @hpsb_free_tlabel(%struct.hpsb_packet* %66)
  %68 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %69 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %68)
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %65, %29, %18
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.hpsb_packet* @hpsb_make_readpacket(%struct.hpsb_host*, i32, i32, i64) #1

declare dso_local i32 @hpsb_send_packet_and_wait(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_packet_success(%struct.hpsb_packet*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @hpsb_free_tlabel(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
