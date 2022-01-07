; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_send_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-transaction.c_fw_send_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fw_card*, i32*)* }
%struct.fw_request = type { i64, i32, i32*, i32, i32* }

@ACK_PENDING = common dso_local global i64 0, align 8
@RCODE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_send_response(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2) #0 {
  %4 = alloca %struct.fw_card*, align 8
  %5 = alloca %struct.fw_request*, align 8
  %6 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %4, align 8
  store %struct.fw_request* %1, %struct.fw_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %8 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ACK_PENDING, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %14 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @HEADER_DESTINATION_IS_BROADCAST(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12, %3
  %21 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %22 = call i32 @kfree(%struct.fw_request* %21)
  br label %59

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @RCODE_COMPLETE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %29 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %28, i32 0, i32 1
  %30 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %31 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %35 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %38 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @fw_fill_response(i32* %29, i32* %32, i32 %33, i32* %36, i32 %39)
  br label %49

41:                                               ; preds = %23
  %42 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %43 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %42, i32 0, i32 1
  %44 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %45 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @fw_fill_response(i32* %43, i32* %46, i32 %47, i32* null, i32 0)
  br label %49

49:                                               ; preds = %41, %27
  %50 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %51 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.fw_card*, i32*)*, i32 (%struct.fw_card*, i32*)** %53, align 8
  %55 = load %struct.fw_card*, %struct.fw_card** %4, align 8
  %56 = load %struct.fw_request*, %struct.fw_request** %5, align 8
  %57 = getelementptr inbounds %struct.fw_request, %struct.fw_request* %56, i32 0, i32 1
  %58 = call i32 %54(%struct.fw_card* %55, i32* %57)
  br label %59

59:                                               ; preds = %49, %20
  ret void
}

declare dso_local i64 @HEADER_DESTINATION_IS_BROADCAST(i32) #1

declare dso_local i32 @kfree(%struct.fw_request*) #1

declare dso_local i32 @fw_fill_response(i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
