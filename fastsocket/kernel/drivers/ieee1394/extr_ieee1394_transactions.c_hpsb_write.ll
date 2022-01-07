; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ieee1394_transactions.c_hpsb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_host = type { i32 }
%struct.hpsb_packet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpsb_write(%struct.hpsb_host* %0, i32 %1, i32 %2, i32 %3, i32* %4, i64 %5) #0 {
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
  %16 = load i64, i64* %13, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %51

21:                                               ; preds = %6
  %22 = load %struct.hpsb_host*, %struct.hpsb_host** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call %struct.hpsb_packet* @hpsb_make_writepacket(%struct.hpsb_host* %22, i32 %23, i32 %24, i32* %25, i64 %26)
  store %struct.hpsb_packet* %27, %struct.hpsb_packet** %14, align 8
  %28 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %29 = icmp ne %struct.hpsb_packet* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %51

33:                                               ; preds = %21
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %36 = getelementptr inbounds %struct.hpsb_packet, %struct.hpsb_packet* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %38 = call i32 @hpsb_send_packet_and_wait(%struct.hpsb_packet* %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %45

42:                                               ; preds = %33
  %43 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %44 = call i32 @hpsb_packet_success(%struct.hpsb_packet* %43)
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %42, %41
  %46 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %47 = call i32 @hpsb_free_tlabel(%struct.hpsb_packet* %46)
  %48 = load %struct.hpsb_packet*, %struct.hpsb_packet** %14, align 8
  %49 = call i32 @hpsb_free_packet(%struct.hpsb_packet* %48)
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %45, %30, %18
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.hpsb_packet* @hpsb_make_writepacket(%struct.hpsb_host*, i32, i32, i32*, i64) #1

declare dso_local i32 @hpsb_send_packet_and_wait(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_packet_success(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_free_tlabel(%struct.hpsb_packet*) #1

declare dso_local i32 @hpsb_free_packet(%struct.hpsb_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
